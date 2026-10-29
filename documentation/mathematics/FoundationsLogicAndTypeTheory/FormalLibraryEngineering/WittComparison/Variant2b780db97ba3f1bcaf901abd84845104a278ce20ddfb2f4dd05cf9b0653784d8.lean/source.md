# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComparison.Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6435a4dc756f9714b5164d0874b13f49a40d7342` · SHA-256 `2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Prismatic.PrismaticRealization

/-!
# Folder.Prismatic.WittComparison

Radiation role: research-boundary
BinaryMatrix spine: This module records Witt comparison contracts, not BinaryMatrix data.
Ontology: prismatic_realization
Pivot role: prismatic
Zero typology: none
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace Prismatic

/-- Abstract Witt realization object. -/
structure WittRealization where
  objectLabel : String
  wittLabel : String

/-- Contract-level Witt comparison; not a theorem. -/
structure PrismaticWittComparison where
  prismatic : PrismaticCohomology
  witt : WittRealization
  comparisonLabel : String

theorem prismatic_witt_comparison_has_prismatic_side
    (C : PrismaticWittComparison) :
    ∃ P : PrismaticCohomology, C.prismatic = P :=
  ⟨C.prismatic, rfl⟩

theorem prismatic_witt_comparison_has_witt_side
    (C : PrismaticWittComparison) :
    ∃ W : WittRealization, C.witt = W :=
  ⟨C.witt, rfl⟩

end Prismatic
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c1c95799a4fc79643c6b2ab19d9ef9f0a1f216cedb91be6c5886816103f5e10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
