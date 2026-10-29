import Folder.DerivedSheaf.StandardReferenceBaseCase

/-!
# Folder.Theorem.DerivedSheaf.StandardReferenceBaseCase

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports toy and 11a1 standard-reference base-case facts, not BinaryMatrix data.
Ontology: base.standard_reference
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem standard_reference_base_case_euler_nonzero :
    Folder.DerivedSheaf.toyBaseCaseSectionComplex.euler.value ≠ 0 :=
  Folder.DerivedSheaf.standard_reference_base_case_euler_nonzero

theorem standard_reference_base_case_index_nonzero :
    Folder.DerivedSheaf.standardReferenceBaseCase.kIndex.indexClass.Nonzero :=
  Folder.DerivedSheaf.standard_reference_base_case_index_nonzero

theorem standardReference11a1_centralValueNonzero :
    Folder.DerivedSheaf.standardReference11a1LFunctionData.centralValueNonzero :=
  Folder.DerivedSheaf.standardReference11a1_centralValueNonzero

theorem standard_reference_11a1_base_case_euler_nonzero :
    Folder.DerivedSheaf.standardReference11a1SectionComplex.euler.value ≠ 0 :=
  Folder.DerivedSheaf.standard_reference_11a1_base_case_euler_nonzero

theorem standard_reference_11a1_base_case_index_nonzero :
    Folder.DerivedSheaf.standardReference11a1BaseCase.kIndex.indexClass.Nonzero :=
  Folder.DerivedSheaf.standard_reference_11a1_base_case_index_nonzero

end DerivedSheaf
end Theorem
end Folder
