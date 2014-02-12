/*
 * Copyright 2003-2013 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.editor.runtime.style;

import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.style.AttributeCalculator;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.openapi.editor.style.StyleAttribute;
import jetbrains.mps.openapi.editor.style.StyleChangeEvent;
import jetbrains.mps.openapi.editor.style.StyleListener;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.EqualUtil;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * User: shatalin
 * Date: 1/11/13
 */
public class StyleImpl implements Style {
  private static final Logger LOG = LogManager.getLogger(StyleImpl.class);

  private final EditorCell myEditorCell;
  private Style myParent;
  private List<Style> myChildren = null;
  private List<StyleListener> myStyleListeners = null;
  private Map<StyleAttribute, Object> myAttributeValues = new HashMap<StyleAttribute, Object>();
  private Map<StyleAttribute, Object> myCachedAttributeValues = new HashMap<StyleAttribute, Object>();

  private static Set<StyleAttribute> singletonSet(StyleAttribute sa) {
    return Collections.singleton(sa);
  }

  public StyleImpl() {
    this(null);
  }

  public StyleImpl(EditorCell contextCell) {
    myEditorCell = contextCell;
  }

  @Override
  public void apply(@NotNull EditorCell cell) {
    cell.getStyle().putAll(this);
  }

  @Override
  public void putAll(@NotNull Style style) {
    Set<StyleAttribute> addedSimple = new HashSet<StyleAttribute>();
    Set<StyleAttribute> addedNotSimple = new HashSet<StyleAttribute>();
    for (StyleAttribute attribute : style.getSpecifiedAttributes()) {
      myAttributeValues.put(attribute, style.rawGet(attribute));
      if (StyleAttributes.isSimple(attribute)) {
        myCachedAttributeValues.put(attribute, null);
        addedSimple.add(attribute);
      } else {
        addedNotSimple.add(attribute);
      }
    }
    updateCache(addedNotSimple);
    fireStyleChanged(new StyleChangeEvent(this, addedSimple));
  }

  @Override
  public <T> void set(StyleAttribute<T> attribute, T value) {
    myAttributeValues.put(attribute, value);
    Set<StyleAttribute> attributeSet = StyleImpl.singletonSet(attribute);
    if (StyleAttributes.isSimple(attribute)) {
      myCachedAttributeValues.put(attribute, null);
      fireStyleChanged(new StyleChangeEvent(this, attributeSet));
    } else {
      updateCache(attributeSet);
    }
  }

  @Override
  public <T> void set(StyleAttribute<T> attribute, AttributeCalculator<T> valueCalculator) {
    myAttributeValues.put(attribute, valueCalculator);
    Set<StyleAttribute> attributeSet = StyleImpl.singletonSet(attribute);
    if (StyleAttributes.isSimple(attribute)) {
      myCachedAttributeValues.put(attribute, null);
      fireStyleChanged(new StyleChangeEvent(this, attributeSet));
    } else {
      updateCache(attributeSet);
    }
  }

  @Override
  public <T> T get(final StyleAttribute<T> attribute) {
    if (StyleAttributes.isSimple(attribute)) {
      if (myCachedAttributeValues.get(attribute) == null) {
        T value;
        if (myAttributeValues.get(attribute) instanceof AttributeCalculator) {
          value = ModelAccess.instance().runReadAction(new Computable<T>() {
            @Override
            public T compute() {
              return (T) ((AttributeCalculator) myAttributeValues.get(attribute)).calculate(myEditorCell);
            }
          });
        } else {
          value = (T) myAttributeValues.get(attribute);
        }
        myCachedAttributeValues.put(attribute, attribute.combine(null, value));
      }
      return (T) myCachedAttributeValues.get(attribute);
    }
    T value = (T) myCachedAttributeValues.get(attribute);
    if (value != null) {
      return value;
    } else {
      return attribute.combine(null, null);
    }
  }

  @Override
  public <T> boolean isSpecified(StyleAttribute<T> attribute) {
    return myAttributeValues.get(attribute) != null;
  }

  @Override
  public Iterable<StyleAttribute> getSpecifiedAttributes() {
    ArrayList<StyleAttribute> result = new ArrayList<StyleAttribute>();
    for (Map.Entry<StyleAttribute, Object> entry : myAttributeValues.entrySet()) {
      if (entry.getValue() != null) {
        result.add(entry.getKey());
      }
    }
    return result;
  }

  @Override
  public Object rawGet(StyleAttribute attribute) {
    return myAttributeValues.get(attribute);
  }

  @Override
  public void addListener(StyleListener l) {
    if (myStyleListeners == null) {
      myStyleListeners = new ArrayList<StyleListener>(1);
    }
    myStyleListeners.add(l);
  }

  @Override
  public void removeListener(StyleListener l) {
    if (myStyleListeners == null) {
      return;
    }
    myStyleListeners.remove(l);
    if (myStyleListeners.isEmpty()) {
      myStyleListeners = null;
    }
  }

  private void fireStyleChanged(StyleChangeEvent e) {
    if (myStyleListeners == null) {
      return;
    }
    for (StyleListener l : myStyleListeners) {
      try {
        l.styleChanged(e);
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  @Override
  public void add(Style child) {
    if (myChildren == null) {
      myChildren = new LinkedList<Style>();
    }
    myChildren.add(child);
    child.setParent(this, getNonDefaultValuedAttributes());
  }

  @Override
  public void remove(Style child) {
    myChildren.remove(child);
    if (myChildren.size() == 0) {
      myChildren = null;
    }
    child.setParent(null, getNonDefaultValuedAttributes());
  }

  @Override
  public void setParent(Style parent, Collection<StyleAttribute> inheritedAttributes) {
    myParent = parent;
    updateCache(inheritedAttributes);
  }

  private Set<StyleAttribute> getNonDefaultValuedAttributes() {
    Set<StyleAttribute> result = new HashSet<StyleAttribute>();
    for (Map.Entry<StyleAttribute, Object> entry : myCachedAttributeValues.entrySet()) {
      if (entry.getValue() != null && !StyleAttributes.isSimple(entry.getKey())) {
        result.add(entry.getKey());
      }
    }
    return result;
  }

  private Style getParentStyle() {
    return myParent;
  }

  private void updateCache(Collection<StyleAttribute> attributes) {
    if (attributes.isEmpty()) {
      return;
    }

    Set<StyleAttribute> changedAttributes = new HashSet<StyleAttribute>();
    for (StyleAttribute attribute : attributes) {
      Object parentValue = getParentStyle() == null ? null : getParentStyle().get(attribute);
      Object currentValue = myAttributeValues.get(attribute);
      Object oldValue = myCachedAttributeValues.get(attribute);

      if (parentValue != null || currentValue != null || oldValue != null) {
        if (currentValue instanceof AttributeCalculator) {
          currentValue = ((AttributeCalculator) currentValue).calculate(myEditorCell);
        }

        Object newValue = attribute.combine(parentValue, currentValue);

        if (!EqualUtil.equals(newValue, oldValue)) {
          changedAttributes.add(attribute);
        }

        myCachedAttributeValues.put(attribute, newValue);
      }
    }

    if (!changedAttributes.isEmpty()) {
      if (myChildren != null) {
        for (Style style : myChildren) {
          style.setParent(this, changedAttributes);
        }
      }

      fireStyleChanged(new StyleChangeEvent(this, changedAttributes));
    }
  }
}
