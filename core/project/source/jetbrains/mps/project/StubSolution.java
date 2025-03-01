/*
 * Copyright 2003-2012 JetBrains s.r.o.
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

package jetbrains.mps.project;

import jetbrains.mps.project.structure.modules.SolutionDescriptor;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.util.annotation.ToRemove;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SRepository;

public class StubSolution extends Solution {
  protected StubSolution(SolutionDescriptor descriptor, @Nullable IFile file) {
    super(descriptor, file);
  }

  //this is for stubs framework & tests only. Can be later converted into subclass
  public static Solution newInstance(SRepository repo, SolutionDescriptor descriptor, MPSModuleOwner moduleOwner) {
    return register(repo, moduleOwner, new StubSolution(descriptor, null));
  }

  /**
   * @deprecated Use {@link #newInstance(org.jetbrains.mps.openapi.module.SRepository, jetbrains.mps.project.structure.modules.SolutionDescriptor, jetbrains.mps.smodel.MPSModuleOwner)} instead
   */
  @Deprecated
  @ToRemove(version = 3.2)
  public static Solution newInstance(SolutionDescriptor descriptor, MPSModuleOwner moduleOwner) {
    return register(MPSModuleRepository.getInstance(), moduleOwner, new StubSolution(descriptor, null));
  }

  /**
   * @deprecated use {@link #register(org.jetbrains.mps.openapi.module.SRepository, jetbrains.mps.smodel.MPSModuleOwner, Solution)} instead
   */
  @Deprecated
  @ToRemove(version = 3.2)
  protected static Solution register(SolutionDescriptor descriptor, MPSModuleOwner moduleOwner, Solution solution) {
    return register(MPSModuleRepository.getInstance(), moduleOwner, solution);
  }

  protected static Solution register(SRepository repo, MPSModuleOwner moduleOwner, Solution solution) {
    // unless we add interface which extends SRepository and adds register/unregister methods, expect the only repo kind we have
    assert repo instanceof MPSModuleRepository;
    return ((MPSModuleRepository) repo).registerModule(solution, moduleOwner);
  }

  @Override
  protected SolutionDescriptor loadDescriptor() {
    return getModuleDescriptor();
  }
}
