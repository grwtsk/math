import Folder.DerivedSheaf.BaseCaseSectionComplex
import Folder.DerivedSheaf.DerivedIndex

/-!
# Folder.DerivedSheaf.BaseCaseIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records a nonzero base-case derived index, not BinaryMatrix data.
Ontology: base.derived_index
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: external-witness
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure BaseCaseDerivedIndex where
  base : BaseCaseSectionComplex
  derivedIndex : DerivedIndex
  sameComplex :
    derivedIndex.complex = base.complex
  sameEulerValue :
    derivedIndex.euler.value = base.euler.value
  sourceLabel : String

theorem base_case_derived_index_euler_nonzero
    (I : BaseCaseDerivedIndex) :
    I.derivedIndex.euler.value ≠ 0 := by
  intro h
  apply I.base.euler_nonzero
  rw [← I.sameEulerValue]
  exact h

theorem base_case_derived_index_same_complex
    (I : BaseCaseDerivedIndex) :
    I.derivedIndex.complex = I.base.complex :=
  I.sameComplex

end DerivedSheaf
end Folder
