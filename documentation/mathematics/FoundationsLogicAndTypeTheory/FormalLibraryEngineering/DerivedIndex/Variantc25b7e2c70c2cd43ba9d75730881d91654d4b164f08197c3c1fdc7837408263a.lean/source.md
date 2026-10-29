# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivedIndex.Variantc25b7e2c70c2cd43ba9d75730881d91654d4b164f08197c3c1fdc7837408263a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6733a6310e5942c8451e7681d4594233eb7baeda` · SHA-256 `c25b7e2c70c2cd43ba9d75730881d91654d4b164f08197c3c1fdc7837408263a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.EulerCharacteristic

/-!
# Folder.DerivedSheaf.DerivedIndex

Radiation role: research-boundary
BinaryMatrix spine: This module represents derived indices, not BinaryMatrix counts.
Ontology: derived.derived_index
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure DerivedIndex where
  complex : SectionComplex
  euler : EulerCharacteristic complex
  interpretsAsIndex : Prop
  interpretsAsIndex_certified : interpretsAsIndex
  sourceLabel : String

theorem derived_index_interprets_as_index
    (I : DerivedIndex) :
    I.interpretsAsIndex :=
  I.interpretsAsIndex_certified

theorem derived_index_has_euler_characteristic
    (I : DerivedIndex) :
    ∃ chi : EulerCharacteristic I.complex, chi = I.euler :=
  ⟨I.euler, rfl⟩

end DerivedSheaf
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0deba2e32ce64fa6cacf3869c7c8baf9e96858b7d314755e8318a3f682362530 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivedIndex/Variantc25b7e2c70c2cd43ba9d75730881d91654d4b164f08197c3c1fdc7837408263a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
