package jetbrains.mps.generator.traceInfo;

/*Generated by MPS */

import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import jetbrains.mps.textgen.trace.TraceInfo;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.textgen.trace.TraceablePositionInfo;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.textgen.trace.DebugInfo;
import jetbrains.mps.textgen.trace.TraceInfoCache;
import jetbrains.mps.textgen.trace.UnitPositionInfo;
import jetbrains.mps.textgen.trace.DebugInfoRoot;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;

/**
 * @deprecated Use {@link jetbrains.mps.textgen.trace.TraceInfo } instead
 */
@Deprecated
@ToRemove(version = 3.2)
public class TraceDown {
  @Deprecated
  public TraceDown() {
  }
  @NotNull
  public static Iterable<String> unitNames(SNode node) {
    List<String> unitNames = TraceInfo.unitNames(node);
    return unitNames;
  }
  public static String anyUnitName(SNode node) {
    Iterable<String> unitNames = unitNames(node);
    if (Sequence.fromIterable(unitNames).isEmpty()) {
      return null;
    }
    return Sequence.fromIterable(unitNames).first();
  }
  public static String unitNameWithPosition(SNode node, _FunctionTypes._return_P1_E0<? extends Boolean, ? super TraceablePositionInfo> positionMatcher) {
    SModel model = node.getModel();
    DebugInfo debugInfo = TraceInfoCache.getInstance().get(model);
    if (debugInfo == null) {
      return null;
    }

    List<UnitPositionInfo> unitsForNode = debugInfo.getUnitsForNode(node);

    DebugInfoRoot infoRoot = debugInfo.getRootInfo(SNodeOperations.getContainingRoot(node));
    for (final TraceablePositionInfo position : SetSequence.fromSet(infoRoot.getPositions())) {
      if (positionMatcher.invoke(position)) {
        UnitPositionInfo unit = ListSequence.fromList(unitsForNode).findFirst(new IWhereFilter<UnitPositionInfo>() {
          public boolean accept(UnitPositionInfo it) {
            return it.contains(position.getFileName(), position.getStartLine());
          }
        });
        if (unit != null) {
          return unit.getUnitName();
        }
      }
    }
    return null;
  }
  public static boolean isTraceable(@NotNull SNode node) {
    return TraceInfo.getPositionForNode(node) != null;
  }
}
