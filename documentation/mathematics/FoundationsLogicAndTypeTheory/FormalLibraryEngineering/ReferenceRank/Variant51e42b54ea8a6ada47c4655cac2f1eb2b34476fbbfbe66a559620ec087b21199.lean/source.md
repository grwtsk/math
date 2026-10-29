# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReferenceRank.Variant51e42b54ea8a6ada47c4655cac2f1eb2b34476fbbfbe66a559620ec087b21199

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c24eb2a3a6d3ba08938bc34b49b89cfbfdd1de1` · SHA-256 `51e42b54ea8a6ada47c4655cac2f1eb2b34476fbbfbe66a559620ec087b21199`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Presentation.ReferenceRank

/-!
# Folder.Theorem.Presentation.ReferenceRank

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes reference ranking interface facts.
Ontology: proof.presentation.reference_rank
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem ranking_contains_module
    (R : Folder.Presentation.ReferenceRanking)
    {M : Folder.Presentation.ModuleId}
    (h : M ∈ R.graph.modules) :
    ∃ RM, RM ∈ R.ranked ∧ RM.moduleId = M :=
  Folder.Presentation.ranking_contains_module R h

end Presentation
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9eef8c7c67a87cc8ab7eca0d217c6360a0f0453bee80e4a5aae1d5c78411ff06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReferenceRank/Variant51e42b54ea8a6ada47c4655cac2f1eb2b34476fbbfbe66a559620ec087b21199.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
