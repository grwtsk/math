import Folder.DerivedSheaf.HandleComplex

/-!
# Folder.Theorem.DerivedSheaf.HandleComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports handle-complex facts, not BinaryMatrix data.
Ontology: derived.handle_complex
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

open CategoryTheory

universe u v w

theorem handle_complex_has_section_complex
    {C : Type u}
    [Category.{v} C]
    (H : Folder.DerivedSheaf.HandleComplex C) :
    ∃ S : Folder.DerivedSheaf.SectionComplex, S = H.sectionComplex :=
  Folder.DerivedSheaf.handle_complex_has_section_complex H

theorem handle_complex_identity_compatible
    {C : Type u}
    [Category.{v} C]
    (H : Folder.DerivedSheaf.HandleComplex C) :
    H.compatibleWithHandleIdentity :=
  Folder.DerivedSheaf.handle_complex_identity_compatible H

end DerivedSheaf
end Theorem
end Folder
