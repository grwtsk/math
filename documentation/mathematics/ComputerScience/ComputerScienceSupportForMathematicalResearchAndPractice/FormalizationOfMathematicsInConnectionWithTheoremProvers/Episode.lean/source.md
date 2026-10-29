# Episode — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ac6128a34018d643332b3e4fc878c8dee27bf5c` · SHA-256 `5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Boundary

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive MemoryKind where
  | episode
  | gist
  | fact
  | entity
  | community
  | tool
  | workflowStep
  | sourceNode
  | witness
deriving DecidableEq, Repr

def MemoryKind.defaultSide : MemoryKind -> BoundarySide
  | .episode => .inner
  | .gist => .bridge
  | .fact => .bridge
  | .entity => .outer
  | .community => .outer
  | .tool => .outer
  | .workflowStep => .bridge
  | .sourceNode => .bridge
  | .witness => .bridge

structure MemoryVertex where
  id : Nat
  kind : MemoryKind
  side : BoundarySide
  text : String
  time? : Option String
  validAt? : Option String
  invalidAt? : Option String
  heat : Int
  weight : Nat
  residueClass : String
deriving DecidableEq, Repr

def MemoryVertex.usesDefaultBoundary (v : MemoryVertex) : Prop :=
  v.side = v.kind.defaultSide

theorem episode_defaults_inner :
    MemoryKind.episode.defaultSide = BoundarySide.inner := by
  rfl

theorem entity_defaults_outer :
    MemoryKind.entity.defaultSide = BoundarySide.outer := by
  rfl

theorem witness_defaults_bridge :
    MemoryKind.witness.defaultSide = BoundarySide.bridge := by
  rfl

end Think.RadoProjectedModularHeatflow.MemoryCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e53fd199122c8e5ea2d2861dc732444a7c547826cdac9bf93dbd3b9606fbb50f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Episode/Variant5c0a21b13c95d9f4dbcce6c1a6024f74d9590d7ff1fe672edb0fbfb3b6b0a616.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
