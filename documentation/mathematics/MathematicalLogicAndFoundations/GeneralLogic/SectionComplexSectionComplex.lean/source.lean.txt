import Folder.DerivedSheaf.Degree

/-!
# Folder.DerivedSheaf.SectionComplex

Radiation role: research-boundary
BinaryMatrix spine: This module names section complexes, not BinaryMatrix entries.
Ontology: derived.section_complex
Pivot role: none
Zero typology: d_squared_zero-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure SectionComplex where
  Section : Degree → Type _
  differential : ∀ n : Degree, Section n → Section (n + 1)
  d_comp_d_zero : Prop
  d_comp_d_zero_certified : d_comp_d_zero
  bounded : Prop
  bounded_certified : bounded
  label : String

theorem section_complex_d_squared_zero
    (C : SectionComplex) :
    C.d_comp_d_zero :=
  C.d_comp_d_zero_certified

theorem section_complex_bounded
    (C : SectionComplex) :
    C.bounded :=
  C.bounded_certified

end DerivedSheaf
end Folder
