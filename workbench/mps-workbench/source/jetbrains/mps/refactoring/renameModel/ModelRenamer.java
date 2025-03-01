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
package jetbrains.mps.refactoring.renameModel;

import jetbrains.mps.extapi.persistence.FileDataSource;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.ReferenceUpdater;
import org.jetbrains.mps.openapi.model.EditableSModel;

public class ModelRenamer {
  private EditableSModel myModelDescriptor;
  private String myModelName;
  private boolean myLazy;

  public ModelRenamer(EditableSModel modelDescriptor, String modelName, boolean lazy) {
    myModelDescriptor = modelDescriptor;
    myModelName = modelName;
    myLazy = lazy;
  }

  public void rename() {
    myModelDescriptor.rename(myModelName, myModelDescriptor.getSource() instanceof FileDataSource);
  }

  public void updateReferencesIfNeeded(Project project) {
    if (!myLazy) {
      ReferenceUpdater.getInstance().updateModelAndModuleReferences(project);
    }
  }
}
