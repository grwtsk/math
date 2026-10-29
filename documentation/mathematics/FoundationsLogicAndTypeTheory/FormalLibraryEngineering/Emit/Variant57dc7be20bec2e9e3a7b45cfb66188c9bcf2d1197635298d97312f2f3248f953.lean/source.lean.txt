import Folder.Latex.Project
import Folder.Latex.Section

/-!
# Folder.Latex.Emit

Radiation role: latex-emit
BinaryMatrix spine: This module names LaTeX project emission contracts for presentation outputs.
Ontology: latex.emit
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: presentation
-/

namespace Folder
namespace Latex

structure LatexEmitter where
  emit : LatexDocument → LatexProject
  root_is_main : ∀ D, (emit D).rootFile = "main.tex"

theorem latexEmitter_emits_main
    (E : LatexEmitter)
    (D : LatexDocument) :
    (E.emit D).hasMain :=
  E.root_is_main D

end Latex
end Folder
