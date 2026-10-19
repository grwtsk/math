import Folder.Latex.Syntax

/-!
# Folder.Latex.LeanNotation

Radiation role: latex-lean-notation
BinaryMatrix spine: This module names conservative Lean-to-LaTeX notation rendering contracts.
Ontology: latex.lean_notation
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: presentation
-/

namespace Folder
namespace Latex

structure LeanLatexNotation where
  renderIdentifier : String → String
  renderSignature : String → String
  escapesSpecialChars : Prop
  escapesSpecialChars_certified : escapesSpecialChars

theorem leanLatexNotation_escapesSpecialChars
    (N : LeanLatexNotation) :
    N.escapesSpecialChars :=
  N.escapesSpecialChars_certified

end Latex
end Folder
