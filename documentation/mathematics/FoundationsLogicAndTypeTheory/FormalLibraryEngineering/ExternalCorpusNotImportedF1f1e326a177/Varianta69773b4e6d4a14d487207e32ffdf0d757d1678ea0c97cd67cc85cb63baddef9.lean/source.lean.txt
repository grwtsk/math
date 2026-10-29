import Formal.Ast.Surface.proof_authority.not_declared_dependency_86c76017d0e8
import Formal.Ast.Surface.proof_authority.not_imported_into_kernel_abffe1466148

/-!
External dependency surface marker.

This root surfaces external dependency boundary metadata only.
-/

namespace Formal.Surface.External

def importsExternalCorpus : Bool := false

theorem external_corpus_not_imported : importsExternalCorpus = false := by
  rfl

end Formal.Surface.External
