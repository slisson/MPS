package jetbrains.mps.ide.make.actions;

/*Generated by MPS */

import jetbrains.mps.smodel.IOperationContext;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.make.resources.IResource;
import jetbrains.mps.project.Project;
import java.util.List;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.make.MakeSession;
import jetbrains.mps.ide.make.DefaultMakeMessageHandler;
import jetbrains.mps.ide.generator.GenerationCheckHelper;
import jetbrains.mps.project.ProjectOperationContext;
import jetbrains.mps.make.IMakeService;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import jetbrains.mps.smodel.resources.MResource;

public class MakeActionImpl {
  private MakeActionParameters myParams;
  /**
   * 
   * @deprecated  use single argument constructor (the one with sole MakeActionParameters) instead
   */
  @Deprecated
  public MakeActionImpl(IOperationContext context, MakeActionParameters params, boolean cleanMake) {
    this(params.cleanMake(cleanMake));
  }
  public MakeActionImpl(@NotNull MakeActionParameters params) {
    this.myParams = params;
  }
  /**
   * should be called outside of command
   */
  public void executeAction() {
    if (ModelAccess.instance().isInsideCommand()) {
      throw new IllegalStateException();
    }
    final Iterable<? extends IResource> inputRes = myParams.collectInput();

    // save all before launching make 
    final Project project = myParams.getProject();
    project.getModelAccess().executeCommand(new Runnable() {
      public void run() {
        project.getRepository().saveAll();
      }
    });

    final List<SModel> models = ListSequence.fromListWithValues(new ArrayList<SModel>(), MakeActionImpl.this.selectModels(inputRes));
    MakeSession session = new MakeSession(project, new DefaultMakeMessageHandler(project), myParams.isCleanMake()) {
      @Override
      public void doExecute(Runnable scriptRunnable) {
        if (GenerationCheckHelper.getInstance().checkModelsBeforeGenerationIfNeeded(project, new ProjectOperationContext(project), models)) {
          // ok to go 
          scriptRunnable.run();
        } else {
          // errors found, abort 
          IMakeService.INSTANCE.get().closeSession(this);
        }
      }
    };

    if (IMakeService.INSTANCE.get().openNewSession(session)) {
      IMakeService.INSTANCE.get().make(session, inputRes);
    }
  }
  private Iterable<SModel> selectModels(Iterable<? extends IResource> inputRes) {
    return Sequence.fromIterable(inputRes).translate(new ITranslator2<IResource, SModel>() {
      public Iterable<SModel> translate(IResource it) {
        return ((MResource) it).models();
      }
    });
  }
}
