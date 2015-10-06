/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.layoutModel;

public abstract class AbstractLayoutBox implements LayoutBox {

  public boolean containsPoint(int x, int y) {
    return getX() <= x && x < getRight() && getY() <= y && y < getBottom();
  }

  @Override
  public int getRight() {
    return getX() + getWidth();
  }

  @Override
  public int getBottom() {
    return getY() + getHeight();
  }

  @Override
  public void growWidth(int amount) {
    setWidth(getWidth() + amount);
  }

  @Override
  public void growHeight(int amount) {
    setHeight(getHeight() + amount);
  }

  @Override
  public void moveX(int amount) {
    setX(getX() + amount);
  }

  @Override
  public void moveY(int amount) {
    setY(getY() + amount);
  }

  @Override
  public void move(int amountX, int amountY) {
    moveX(amountX);
    moveY(amountY);
  }

  @Override
  public void setSize(int width, int height) {
    setWidth(width);
    setHeight(height);
  }
}
