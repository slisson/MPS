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

import jetbrains.mps.openapi.editor.style.StyleAttribute;
import jetbrains.mps.util.IndexableObjectSet;

/**
 * User: shatalin
 * Date: 1/14/13
 */
@Deprecated
public class StyleAttributeSet extends IndexableObjectSet<StyleAttribute> {
  public StyleAttributeSet(boolean full) {
    super(StyleAttributes.getAttributesCount(), full);
  }

  public StyleAttributeSet() {
    this(false);
  }

  @Override
  protected int getIndex(StyleAttribute styleAttribute) {
    return styleAttribute.getIndex();
  }

  @Override
  protected StyleAttribute getObject(int index) {
    return StyleAttributes.getAttribute(index);
  }
}
