/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.cells;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.layoutModel.LayoutBox;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.MacrosFactory;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.vfs.FileSystem;
import org.jetbrains.mps.openapi.module.SModule;

import javax.swing.SwingUtilities;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.image.ImageObserver;

public class EditorCell_Image extends EditorCell_Basic {

  private ImageAlignment myAlignment = ImageAlignment.justify;
  private Image myImage;
  private ImageObserver mySizeObserver = new ImageObserver() {
    @Override
    public boolean imageUpdate(Image img, int infoflags, int x, int y, int width, int height) {
      int mask = ImageObserver.HEIGHT | ImageObserver.WIDTH;
      boolean done = (infoflags & mask) == mask;
      if (done) {
        SwingUtilities.invokeLater(new Runnable() {

          @Override
          public void run() {
            ModelAccess.instance().runReadAction(new Runnable() {
              @Override
              public void run() {
                getEditor().rebuildEditorContent();
              }
            });
          }
        });
      }
      return done;
    }
  };

  protected EditorCell_Image(EditorContext editorContext, SNode node) {
    super(editorContext, node);
    getStyle().set(StyleAttributes.PUNCTUATION_LEFT, true);
    getStyle().set(StyleAttributes.PUNCTUATION_RIGHT, true);
  }

  public static EditorCell_Image createImageCell(EditorContext editorContext, SNode node, String imageFileName) {
    EditorCell_Image result = new EditorCell_Image(editorContext, node);
    result.setImageFileName(expandIconPath(imageFileName, node));
    return result;
  }

  public static EditorCell_Image createImageCell(EditorContext editorContext, SNode node, Image image) {
    EditorCell_Image result = new EditorCell_Image(editorContext, node);
    result.setImage(image);
    return result;
  }

  @Override
  protected void paintContent(Graphics g, ParentSettings parentSettings) {
    if (myImage == null) return;
    LayoutBox contentBox = getLayoutModel().getContentBox();
    switch (myAlignment) {
      case justify: {
        g.drawImage(myImage, contentBox.getX(), contentBox.getY(), contentBox.getWidth(), contentBox.getHeight(), getEditor());
        break;
      }
      case center: {
        int x = contentBox.getX() + (contentBox.getWidth() - myImage.getWidth(getEditor())) / 2;
        int y = contentBox.getY() + (contentBox.getHeight() - myImage.getHeight(getEditor())) / 2;
        g.drawImage(myImage, x, y, getEditor());
        break;
      }
      case title: {
        break;
      }
    }
  }

  @Override
  protected void relayoutImpl() {
    if (myImage == null) return;
    if (myAlignment == ImageAlignment.justify) {
      int width = myImage.getWidth(mySizeObserver);
      if (width != -1) {
        getLayoutModel().getContentBox().setWidth(width);
      }
      int height = myImage.getHeight(mySizeObserver);
      if (height != -1) {
        getLayoutModel().getContentBox().setHeight(height);
      }
    }
  }

  public void setDescent(int descent) {
    getLayoutModel().getMarginBox().setDescent(descent);
  }

  public void setAlignment(ImageAlignment alignment) {
    myAlignment = alignment;
  }

  protected void setImageFileName(String fileName) {
    if (fileName != null && FileSystem.getInstance().getFileByPath(fileName).exists()) {
      myImage = Toolkit.getDefaultToolkit().getImage(fileName);
    }
  }

  private static String expandIconPath(String path, SNode sourceNode) {
    AbstractModule module = findAnchorModule(sourceNode.getModel());
    return module != null ? MacrosFactory.forModule(module).expandPath(path) : null;
  }

  private static AbstractModule findAnchorModule(SModel model) {
    SModule module = model.getModule();
    if (module instanceof Language || module instanceof Solution) {
      return (AbstractModule) module;
    } else {
      return null;
    }
  }

  protected void setImage(Image image) {
    myImage = image;
  }

  public static enum ImageAlignment {
    justify, center, title;
  }
}
