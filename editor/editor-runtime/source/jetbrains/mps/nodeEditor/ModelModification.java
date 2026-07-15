/*
 * Copyright 2003-2026 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

/**
 * A single node touched by a model change, as matched against the dependencies recorded for an editor cell.
 * <p/>
 * Replaces the {@code Pair<SNode, SNodeReference>} this used to be. The pair could only say "this node changed
 * somehow", which forced {@link jetbrains.mps.nodeEditor.updater.UpdaterImpl#isRelated} to rebuild every cell that had
 * touched the node at all. {@link #getChildRole()} preserves the containment link from the originating
 * {@code SModelChildEvent}, so a cell that only read the contents of one role is no longer rebuilt by a change to
 * another.
 *
 * @see SModelModificationsCollector
 */
public final class ModelModification {
  @NotNull
  private final SNode myNode;
  @NotNull
  private final SNodeReference myNodeReference;
  @Nullable
  private final SContainmentLink myChildRole;
  @Nullable
  private final SReferenceLink myReferenceLink;
  @Nullable
  private final String myPropertyName;
  private final boolean myPropertyAddedRemoved;

  /**
   * @param childRole    containment link of {@code node} whose children changed, or {@code null} if this modification
   *                     is not a child addition/removal (property, reference and root events carry no role)
   * @param propertyName property of {@code node} whose value changed, or {@code null} if this modification is not a
   *                     property change
   * @param propertyAddedRemoved whether the property changed between set and unset, as opposed to changing value.
   *                     Only a transition matters to a cell that merely checked the property's existence.
   */
  /*package*/ ModelModification(@NotNull SNode node, @NotNull SNodeReference nodeReference,
      @Nullable SContainmentLink childRole, @Nullable SReferenceLink referenceLink, @Nullable String propertyName,
      boolean propertyAddedRemoved) {
    myNode = node;
    myNodeReference = nodeReference;
    myChildRole = childRole;
    myReferenceLink = referenceLink;
    myPropertyName = propertyName;
    myPropertyAddedRemoved = propertyAddedRemoved;
  }

  @NotNull
  public SNode getNode() {
    return myNode;
  }

  @NotNull
  public SNodeReference getNodeReference() {
    return myNodeReference;
  }

  /**
   * @return the role whose children changed, {@code null} if this modification is not a child addition/removal
   */
  @Nullable
  public SContainmentLink getChildRole() {
    return myChildRole;
  }

  /**
   * @return the link whose target changed, {@code null} if this modification is not a reference change. Reported
   *         against the reference's <em>source</em> node, which is what {@link #getNode()} returns here.
   */
  @Nullable
  public SReferenceLink getReferenceLink() {
    return myReferenceLink;
  }

  /**
   * @return the property whose value changed, {@code null} if this modification is not a property change
   */
  @Nullable
  public String getPropertyName() {
    return myPropertyName;
  }

  /**
   * @return whether the property went from set to unset or back, rather than merely changing value. Meaningless unless
   *         {@link #getPropertyName()} is non-null.
   */
  public boolean isPropertyAddedRemoved() {
    return myPropertyAddedRemoved;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof ModelModification)) {
      return false;
    }
    ModelModification that = (ModelModification) o;
    // myNodeReference is derived from myNode and so adds nothing to identity; leaving it out of equals/hashCode keeps
    // SNodePointer.hashCode() (which is not cheap) off the collector's de-duplication path. myPropertyAddedRemoved is
    // a function of the property that changed, so it adds nothing either.
    return myNode == that.myNode
        && (myChildRole == null ? that.myChildRole == null : myChildRole.equals(that.myChildRole))
        && (myReferenceLink == null ? that.myReferenceLink == null : myReferenceLink.equals(that.myReferenceLink))
        && (myPropertyName == null ? that.myPropertyName == null : myPropertyName.equals(that.myPropertyName));
  }

  @Override
  public int hashCode() {
    int result = System.identityHashCode(myNode);
    result = result * 31 + (myChildRole == null ? 0 : myChildRole.hashCode());
    result = result * 31 + (myReferenceLink == null ? 0 : myReferenceLink.hashCode());
    return result * 31 + (myPropertyName == null ? 0 : myPropertyName.hashCode());
  }

  @Override
  public String toString() {
    return "ModelModification[" + myNode + (myChildRole == null ? "" : ", role=" + myChildRole.getName())
        + (myReferenceLink == null ? "" : ", reference=" + myReferenceLink.getName())
        + (myPropertyName == null ? "" : ", property=" + myPropertyName) + ']';
  }
}
