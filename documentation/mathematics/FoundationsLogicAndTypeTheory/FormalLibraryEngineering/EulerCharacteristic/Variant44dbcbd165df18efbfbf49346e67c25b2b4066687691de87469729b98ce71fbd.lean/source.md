# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerCharacteristic.Variant44dbcbd165df18efbfbf49346e67c25b2b4066687691de87469729b98ce71fbd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1ecb5a544197c3ea0efe06f883c59644db4bf50` · SHA-256 `44dbcbd165df18efbfbf49346e67c25b2b4066687691de87469729b98ce71fbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.DerivedIndex

/-!
# Folder.Theorem.DerivedSheaf.EulerCharacteristic

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Euler-characteristic facts, not BinaryMatrix counts.
Ontology: derived.euler_characteristic
Pivot role: none
Zero typology: signed-alternating-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem euler_characteristic_signed_sum
    {C : Folder.DerivedSheaf.SectionComplex}
    (chi : Folder.DerivedSheaf.EulerCharacteristic C) :
    chi.value_eq_signed_sum :=
  Folder.DerivedSheaf.euler_characteristic_signed_sum chi

theorem derived_index_interprets_as_index
    (I : Folder.DerivedSheaf.DerivedIndex) :
    I.interpretsAsIndex :=
  Folder.DerivedSheaf.derived_index_interprets_as_index I

theorem derived_index_has_euler_characteristic
    (I : Folder.DerivedSheaf.DerivedIndex) :
    ∃ chi : Folder.DerivedSheaf.EulerCharacteristic I.complex, chi = I.euler :=
  Folder.DerivedSheaf.derived_index_has_euler_characteristic I

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=999af084088c48aa7e501b1ce58f493d05e33dfc7a62c9bbf0e615265fa4cb3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variant44dbcbd165df18efbfbf49346e67c25b2b4066687691de87469729b98ce71fbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
