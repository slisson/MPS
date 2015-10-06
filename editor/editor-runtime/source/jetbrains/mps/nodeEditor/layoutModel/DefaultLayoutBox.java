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

public class DefaultLayoutBox extends AbstractLayoutBox implements LayoutBox {

  protected int myX;
  protected int myY;
  protected int myWidth;
  protected int myHeight;

  protected int myDescent;

  @Override
  public int getX() {
    return myX;
  }

  @Override
  public void setX(int x) {
    myX = x;
  }

  @Override
  public int getY() {
    return myY;
  }

  @Override
  public void setY(int y) {
    myY = y;
  }

  @Override
  public int getWidth() {
    return myWidth;
  }

  @Override
  public void setWidth(int width) {
    myWidth = width;
  }

  @Override
  public int getHeight() {
    return myHeight;
  }

  @Override
  public void setHeight(int height) {
    myHeight = height;
  }

  @Override
  public int getAscent() {
    return getHeight() - getDescent();
  }

  @Override
  public int getDescent() {
    return myDescent;
  }

  @Override
  public void setAscent(int ascent) {
    setDescent(getHeight() - ascent);
  }

  @Override
  public void setDescent(int descent) {
    myDescent = descent;
  }
}
