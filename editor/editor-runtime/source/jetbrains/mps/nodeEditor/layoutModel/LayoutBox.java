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

public interface LayoutBox {

  int getX();
  int getY();
  int getWidth();
  int getHeight();

  void setX(int x);
  void setY(int y);
  void setWidth(int width);
  void setHeight(int height);

  int getAscent();
  int getDescent();
  void setAscent(int ascent);
  void setDescent(int descent);

  boolean containsPoint(int x, int y);
  int getRight();
  int getBottom();
  void growWidth(int amount);
  void growHeight(int amount);
  void moveX(int amount);
  void moveY(int amount);
  void move(int amountX, int amountY);
  void setSize(int width, int height);
}
