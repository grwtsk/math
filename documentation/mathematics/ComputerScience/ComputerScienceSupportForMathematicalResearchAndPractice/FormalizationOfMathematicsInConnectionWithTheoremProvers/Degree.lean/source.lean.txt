import Folder.Basic

/-!
# Folder.DerivedSheaf.Degree

Radiation role: research-boundary
BinaryMatrix spine: This module supplies derived sheaf degree labels, not BinaryMatrix carriers.
Ontology: derived.section_complex
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

abbrev Degree := Int

structure GradedObject where
  Obj : Degree → Type _
  label : String

def GradedObject.term
    (G : GradedObject)
    (n : Degree) : Type _ :=
  G.Obj n

theorem graded_object_has_term
    (G : GradedObject)
    (n : Degree) :
    ∃ T : Type _, T = G.term n :=
  ⟨G.term n, rfl⟩

end DerivedSheaf
end Folder
