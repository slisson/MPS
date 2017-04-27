/*
 * Copyright 2003-2017 JetBrains s.r.o.
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
package jetbrains.mps.generator.impl.plan;

import jetbrains.mps.generator.ModelGenerationPlan.Checkpoint;
import jetbrains.mps.generator.plan.CheckpointIdentity;
import jetbrains.mps.generator.plan.PlanIdentity;
import jetbrains.mps.smodel.ModelImports;
import jetbrains.mps.util.CollectionUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

/**
 * All checkpoint models known for (associated with) the given original model for a given generation plan.
 * FIXME likely, we shall keep track of the plan here. Given checkpoints are matched by name, we need a plan to identify the right one.
 * @author Artem Tikhomirov
 * @since 3.3
 */
public class ModelCheckpoints {
  // modifiable list (set, iterate+remove operations)
  private final List<CheckpointState> myStates;
  private final PlanIdentity myPlan;

  /**
   * @param state not null
   */
  /*package*/ ModelCheckpoints(CheckpointState state) {
    myPlan = state.getCheckpoint().getPlan();
    myStates = new ArrayList<>(2);
    myStates.add(state);
  }

  /**
   * @param plan not null
   * @param states not null
   */
  /*package*/ ModelCheckpoints(PlanIdentity plan, Collection<CheckpointState> states) {
    myPlan = plan;
    assert StreamSupport.stream(states.spliterator(), false).allMatch(s -> s.getCheckpoint().getPlan().equals(plan));
    myStates = new ArrayList<>(states); // copy
  }


  /*package*/ PlanIdentity getPlan() {
    return myPlan;
  }

  /**
   * Retrieve state that corresponds to transition between specified checkpoints.
   * Starting checkpoint is optional, original input model is assumed to be 'checkpoint' in this case.
   * FIXME perhaps, shall have a distinct Checkpoint to indicate initial model (don't want to keep the model in transients, though
   * and OTOH don't want to tell whether there's a model for Checkpoint based on special Checkpoint instance.
   * @return <code>null</code> if no saved state for the point found
   */
  @Nullable
  public CheckpointState find(@NotNull Checkpoint targetPoint) {
    return find(targetPoint.getIdentity());
  }

  @Nullable
  public CheckpointState find(@NotNull CheckpointIdentity tp) {
    for (CheckpointState cps : myStates) {
      if (cps.getCheckpoint().equals(tp)) {
        return cps;
      }
    }
    return null;
  }

  /*package*/ List<CheckpointIdentity> getKnownCheckpoints() {
    return StreamSupport.stream(myStates.spliterator(), false).map(CheckpointState::getCheckpoint).collect(Collectors.toList());
  }

  /**
   * we've got new state for some checkpoint
   * @param state not null
   * @return stale checkpoint (the one that has been discarded), if any.
   */
  /*package*/ CheckpointState updateAndDiscardOutdated(CheckpointState state) {
    for (int i = 0; i < myStates.size(); i++) {
      CheckpointState cps = myStates.get(i);
      if (!cps.getCheckpoint().equals(state.getCheckpoint())) {
        continue;
      }
      myStates.set(i, state);
      return cps;
    }
    myStates.add(state);
    return null;
  }

  /**
   * Once there's a discarded checkpoint state, we need to update (discard) states that used to reference it.
   * @param outdatedModels models that are no longer valid
   * @param discarded collection with stale states to update
   */
  /*package*/ void discardOutdated(Collection<SModelReference> outdatedModels, Collection<CheckpointState> discarded) {
    for (Iterator<CheckpointState> it = myStates.iterator(); it.hasNext(); ) {
      CheckpointState next = it.next();
      if (CollectionUtil.intersects(new ModelImports(next.getCheckpointModel()).getImportedModels(), outdatedModels)) {
        discarded.add(next);
        it.remove();
      }
    }
  }
}
