package jetbrains.mps.lang.editor.table.runtime;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.util.ArrayList;

public class ChildrenTableRow extends AbstractTableRow {
  private SNode myChildLinkDeclaration;
  private SNode myParentNode;
  private List<SNode> myChildNodes;
  public ChildrenTableRow(@NotNull SNode parentNode, @NotNull SNode childLinkDeclaration, int rowNumber) {
    super(rowNumber);
    myParentNode = parentNode;
    myChildLinkDeclaration = childLinkDeclaration;
  }
  @Override
  public void removeCell(int index) {
    SNodeOperations.deleteNode(ListSequence.fromList(getChildren()).getElement(index));
  }
  @Override
  public void createNewCell(int index) {
    assert index <= ListSequence.fromList(getChildren()).count();
    SNode newCellNode = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(SLinkOperations.getTarget(myChildLinkDeclaration, MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98055fef0L, "target"))));
    insertNewCell(newCellNode, index);
  }
  protected void insertNewCell(SNode newCellNode, int index) {
    // subclasses may implement this method in a different way 
    if (index == ListSequence.fromList(getChildren()).count()) {
      myParentNode.addChild(SPropertyOperations.getString(myChildLinkDeclaration, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role")), newCellNode);
    } else {
      SNodeOperations.insertPrevSiblingChild(ListSequence.fromList(getChildren()).getElement(index), newCellNode);
    }
  }
  @Override
  public int getColumnCount() {
    return ListSequence.fromList(getChildren()).count();
  }
  @Override
  public SNode getCell(int index) {
    return ListSequence.fromList(getChildren()).getElement(index);
  }
  protected List<SNode> filterChildren(List<SNode> children) {
    // Dummy filter subclasses may implement some filtering here. 
    // Returned list can contain nulls representing not existing cells. 
    List<SNode> result = new ArrayList<SNode>();
    return ListSequence.fromList(result).addSequence(ListSequence.fromList(children));
  }
  private List<SNode> getChildren() {
    if (myChildNodes == null) {
      myChildNodes = filterChildren(SNodeOperations.getChildren(myParentNode, myChildLinkDeclaration));
    }
    return myChildNodes;
  }
}
