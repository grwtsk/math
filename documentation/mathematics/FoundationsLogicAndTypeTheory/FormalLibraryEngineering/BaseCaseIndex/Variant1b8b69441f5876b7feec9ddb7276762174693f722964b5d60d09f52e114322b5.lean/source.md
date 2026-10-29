# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseIndex.Variant1b8b69441f5876b7feec9ddb7276762174693f722964b5d60d09f52e114322b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6d7f12a7810f47e966633674f0fea47879d7bbd` · SHA-256 `1b8b69441f5876b7feec9ddb7276762174693f722964b5d60d09f52e114322b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.BaseCaseIndex

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case index facts, not BinaryMatrix data.
Ontology: base.derived_index
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem base_case_lfunction_center_eq_spectralPivot
    (D : Folder.DerivedSheaf.BaseCaseLFunctionData) :
    D.normalizedCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.base_lfunction_center_is_spectral_pivot D

theorem base_case_lfunction_central_value_nonzero
    (D : Folder.DerivedSheaf.BaseCaseLFunctionData) :
    D.centralValueNonzero :=
  Folder.DerivedSheaf.base_lfunction_central_value_nonzero D

theorem base_case_euler_nonzero
    (B : Folder.DerivedSheaf.BaseCaseSectionComplex) :
    B.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_euler_nonzero B

theorem base_case_derived_index_euler_nonzero
    (I : Folder.DerivedSheaf.BaseCaseDerivedIndex) :
    I.derivedIndex.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_derived_index_euler_nonzero I

theorem base_case_derived_index_same_complex
    (I : Folder.DerivedSheaf.BaseCaseDerivedIndex) :
    I.derivedIndex.complex = I.base.complex :=
  Folder.DerivedSheaf.base_case_derived_index_same_complex I

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4ddd664d4bf5a731820c3706c138e7af39bf36935df4e21eabd012e198f3110 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndex/Variant1b8b69441f5876b7feec9ddb7276762174693f722964b5d60d09f52e114322b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
