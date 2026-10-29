# Base Case Section Complex Certified Base Curve Lvalue Nonzero — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1302054c39c8b7b254322b1e453ff73fbda21e0` · SHA-256 `48224ae262a35e49887e2eaed8a0b6cdb99bb256eef15f8f2050af26fc59957b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.BaseCaseSectionComplex

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseSectionComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case section-complex facts, not BinaryMatrix data.
Ontology: base.section_complex
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem certified_base_curve_lvalue_nonzero
    (E : Folder.DerivedSheaf.CertifiedBaseCaseEllipticCurve) :
    E.lfunction.centralValueNonzero :=
  Folder.DerivedSheaf.certified_base_curve_lvalue_nonzero E

theorem certified_base_curve_center_normalized
    (E : Folder.DerivedSheaf.CertifiedBaseCaseEllipticCurve) :
    E.normalization.normalize E.lfunction.rawCriticalCenter =
      Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.certified_base_curve_center_normalized E

theorem base_case_euler_nonzero
    (B : Folder.DerivedSheaf.BaseCaseSectionComplex) :
    B.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_euler_nonzero B

theorem base_case_complex_realizes_lfunction
    (B : Folder.DerivedSheaf.BaseCaseSectionComplex) :
    B.complexRealizesLFunction :=
  Folder.DerivedSheaf.base_case_complex_realizes_lfunction B

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4685529926dd2e4b331fc41c511fda7b0053151f9be046d60a38f5cc72c4e1e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseSectionComplex/Variant48224ae262a35e49887e2eaed8a0b6cdb99bb256eef15f8f2050af26fc59957b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
