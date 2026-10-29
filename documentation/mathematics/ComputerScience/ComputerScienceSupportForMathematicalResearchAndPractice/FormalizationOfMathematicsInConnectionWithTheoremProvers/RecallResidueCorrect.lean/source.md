# Recall Residue Correct — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80419fa1a3070db9a7eef90ca733b4b5366c48e3` · SHA-256 `8ce79400d5a3cb7eafe903c43273522f970175f1ccbfc0bf2da33fbf06736799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Recall
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.BoundaryResidue

set_option autoImplicit false

namespace Think.Validation.RecallResidueCorrect

theorem query_recall_uses_graph_neighborhood
    (r : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryRecallRequest)
    (h : r.operator = Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryRecallOperator.queryRAG) :
    r.usesGraphNeighborhood = true :=
  Think.RadoProjectedModularHeatflow.MemoryCore.queryRAG_uses_graph_neighborhood r h

theorem zero_boundary_residue_is_resolved
    (R : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryResidue) (n : Nat)
    (h : R.targetCoeff n =
      R.innerCoeff n + R.bridgeCoeff n + R.outerCoeff n) :
    R.resolvedAt n :=
  Think.RadoProjectedModularHeatflow.MemoryCore.boundaryResidue_zero_resolved R n h

end Think.Validation.RecallResidueCorrect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61a2f38f832be014b1077da668e4f0ee0a7d98cf2158a7c47dcebc491df1e1b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecallResidueCorrect/Variant8ce79400d5a3cb7eafe903c43273522f970175f1ccbfc0bf2da33fbf06736799.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
