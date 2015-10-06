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

public abstract class AbstractLayoutBoxFrame extends AbstractLayoutBox implements LayoutBoxFrame {

  @Override
  public int getX() {
    return getBox().getX() - getLeftSize();
  }

  @Override
  public int getY() {
    return getBox().getY() - getTopSize();
  }

  @Override
  public int getWidth() {
    return getBox().getWidth() + getLeftSize() + getRightSize();
  }

  @Override
  public int getHeight() {
    return getBox().getHeight() + getTopSize() + getBottomSize();
  }

  @Override
  public void setX(int x) {
    getBox().setX(x + getLeftSize());
  }

  @Override
  public void setY(int y) {
    getBox().setY(y + getTopSize());
  }

  @Override
  public void setWidth(int width) {
    getBox().setWidth(width - getLeftSize() - getRightSize());
  }

  @Override
  public void setHeight(int height) {
    getBox().setHeight(height - getTopSize() - getBottomSize());
  }

  @Override
  public int getAscent() {
    return getBox().getAscent() + getTopSize();
  }

  @Override
  public int getDescent() {
    return getBox().getDescent() + getBottomSize();
  }

  @Override
  public void setAscent(int ascent) {
    getBox().setAscent(ascent - getTopSize());
  }

  @Override
  public void setDescent(int descent) {
    getBox().setDescent(descent - getBottomSize());
  }

  @Override
  public void setFrameSize(int size) {
    setLeftSize(size);
    setRightSize(size);
    setTopSize(size);
    setBottomSize(size);
  }
}
