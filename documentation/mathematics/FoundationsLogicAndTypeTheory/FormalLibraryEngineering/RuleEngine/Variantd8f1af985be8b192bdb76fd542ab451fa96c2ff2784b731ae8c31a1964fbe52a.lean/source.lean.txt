import Folder.Presentation.RuleEngine

/-!
# Folder.Theorem.Presentation.RuleEngine

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes presentation rule engine correctness facts.
Ontology: proof.presentation.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem copyRule_fixed
    (x : α) :
    Folder.Presentation.IsFixedBy (Folder.Presentation.copyRule α) x :=
  Folder.Presentation.copyRule_fixed x

theorem run?_resolved
    (E : Folder.Presentation.RuleEngine)
    (A : Folder.Presentation.RuleApplication E)
    (R : Folder.Presentation.PresentationRule E.Input E.Output)
    (h : E.resolve A.rule = some R) :
    A.run? = some (R.apply A.input) :=
  Folder.Presentation.run?_resolved E A R h

end Presentation
end Theorem
end Folder
