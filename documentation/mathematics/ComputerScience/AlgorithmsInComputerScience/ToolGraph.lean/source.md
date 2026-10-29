# Tool Graph — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `656824495ea191ef1e9f7be1005975f0a01d4a9e` · SHA-256 `678993ee4698a47e2bf82bcbb7a3aa527fbd265138b07715c9e80fec086e8589`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Workflow

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure ToolTransitionEdge where
  fromTool : MemoryVertex
  toTool : MemoryVertex
  stateSummary : String
  weight : Nat
  fromIsTool : fromTool.kind = MemoryKind.tool
  toIsTool : toTool.kind = MemoryKind.tool

def ToolTransitionEdge.proceduralWeightPositive (e : ToolTransitionEdge) : Prop :=
  0 < e.weight

structure HybridEpisodicProceduralMemory where
  tools : List MemoryVertex
  transitions : List ToolTransitionEdge
  edgeSummariesRetained : Bool

end Think.RadoProjectedModularHeatflow.MemoryCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4efead69f95313c528c7925613f532b265b7708cb7246dedc0fe0578cfeddc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToolGraph/Variant678993ee4698a47e2bf82bcbb7a3aa527fbd265138b07715c9e80fec086e8589.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
