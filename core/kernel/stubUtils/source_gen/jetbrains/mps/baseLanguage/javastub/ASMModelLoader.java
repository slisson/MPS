package jetbrains.mps.baseLanguage.javastub;

/*Generated by MPS */

import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import jetbrains.mps.smodel.SModel;
import org.jetbrains.mps.openapi.module.SModule;
import java.util.Collection;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.internal.collections.runtime.CollectionSequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import org.jetbrains.mps.openapi.model.SNode;

public class ASMModelLoader {
  private static final Logger LOG = LogManager.getLogger(ASMModelLoader.class);
  private final SModel myModel;
  private final SModule myModule;
  private Collection<String> myPaths;
  private final boolean mySkipPrivate;
  public ASMModelLoader(SModule module, Collection<String> paths, SModel model, boolean skipPrivate) {
    myModule = module;
    myModel = model;
    mySkipPrivate = skipPrivate;
    myPaths = paths;
  }
  public void updateModel() {
    try {
      ClassifierLoader loader = new ClassifierLoader(new SReferenceCreator(myModule, myModel), mySkipPrivate);

      Iterable<IFile> classFiles = CollectionSequence.fromCollection(myPaths).select(new ISelector<String, IFile>() {
        public IFile select(String it) {
          return FileSystem.getInstance().getFileByPath(it);
        }
      }).where(new IWhereFilter<IFile>() {
        public boolean accept(IFile it) {
          return it != null;
        }
      }).translate(new ITranslator2<IFile, IFile>() {
        public Iterable<IFile> translate(IFile it) {
          return it.getChildren();
        }
      }).where(new IWhereFilter<IFile>() {
        public boolean accept(IFile it) {
          return !(it.isDirectory()) && it.getName().endsWith(".class") && !(ClassifierLoader.getClassName(it).contains("$"));
        }
      });

      for (IFile classfile : classFiles) {
        if (myModel.getNode(ASMNodeId.createId(ClassifierLoader.getClassName(classfile))) != null) {
          continue;
        }
        loader.getClassifier(classfile, new _FunctionTypes._void_P1_E0<SNode>() {
          public void invoke(SNode n) {
            myModel.addRootNode(n);
          }
        });
      }
    } catch (Exception e) {
      LOG.error("Exception", e);
    }
  }
}
