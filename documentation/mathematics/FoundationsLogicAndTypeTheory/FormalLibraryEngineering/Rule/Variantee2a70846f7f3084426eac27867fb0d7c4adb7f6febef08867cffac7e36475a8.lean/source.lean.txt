import Folder.Basic

/-!
# Folder.Presentation.Rule

Radiation role: presentation-rule
BinaryMatrix spine: This module defines presentation rules as views over carriers, distinct from archive reconstruction rules.
Ontology: presentation.rule
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

structure PresentationRule (α β : Type _) where
  name : String
  apply : α → β

def copyRule (α : Type _) : PresentationRule α α where
  name := "copy"
  apply := id

def IsFixedBy
    (R : PresentationRule α α)
    (x : α) : Prop :=
  R.apply x = x

theorem copyRule_fixed
    (x : α) :
    IsFixedBy (copyRule α) x :=
  rfl

end Presentation
end Folder
