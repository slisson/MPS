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

/**
 * User: shatalin
 * Date: 1/14/13
 */
public abstract class AbstractStyleAttribute<T> implements StyleAttribute<T> {
  private int myIndex;
  private String myName;

  public AbstractStyleAttribute(String name, boolean register) {
    myName = name;
    if (register) {
      myIndex = StyleAttributes.register(this);
    } else {
      myIndex = -1;
    }
  }

  @Override
  public String getName() {
    return myName;
  }

  public String toString() {
    return myName;
  }

  @Override
  public int getIndex() {
    assert myIndex != -1;
    return myIndex;
  }

  @Override
  public abstract T combine(T parentValue, T currentValue);
}
