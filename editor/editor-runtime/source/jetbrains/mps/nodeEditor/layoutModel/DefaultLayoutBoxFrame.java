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

public class DefaultLayoutBoxFrame extends AbstractLayoutBoxFrame implements LayoutBox, LayoutBoxFrame {

  protected LayoutBox myBox;
  protected int myLeftSize;
  protected int myRightSize;
  protected int myTopSize;
  protected int myBottomSize;

  public DefaultLayoutBoxFrame(LayoutBox box) {
    myBox = box;
  }

  public DefaultLayoutBoxFrame(LayoutBox box, int leftSize, int rightSize, int topSize, int bottomSize) {
    myBox = box;
    myLeftSize = leftSize;
    myRightSize = rightSize;
    myTopSize = topSize;
    myBottomSize = bottomSize;
  }

  @Override
  public LayoutBox getBox() {
    return myBox;
  }

  @Override
  public void setBox(LayoutBox box) {
    myBox = box;
  }

  @Override
  public int getLeftSize() {
    return myLeftSize;
  }

  @Override
  public void setLeftSize(int leftSize) {
    myLeftSize = leftSize;
  }

  @Override
  public int getRightSize() {
    return myRightSize;
  }

  @Override
  public void setRightSize(int rightSize) {
    myRightSize = rightSize;
  }

  @Override
  public int getTopSize() {
    return myTopSize;
  }

  @Override
  public void setTopSize(int topSize) {
    myTopSize = topSize;
  }

  @Override
  public int getBottomSize() {
    return myBottomSize;
  }

  @Override
  public void setBottomSize(int bottomSize) {
    myBottomSize = bottomSize;
  }
}
