# Memory — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c02d4639adc267bc91caf8064b67554e3602ea17` · SHA-256 `0ca5968e2f6836e112211ff58e48863469dbd6f7c68251b844176aa1ed24248e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.All
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Canonical

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

inductive SourcePrimitive where
  | zepGraphiti
  | graphGuidedRAG
  | workflowEpisodicMemory
  | hybridEpisodicProceduralMemory
  | remem
  | radoProjectedModularHeatflow
deriving DecidableEq, Repr

structure PrimitiveRole where
  primitive : SourcePrimitive
  role : String
  importedAsAuthority : Bool
deriving DecidableEq, Repr

def primitiveRoles : List PrimitiveRole :=
  [ { primitive := .zepGraphiti
      role := "temporal KG strata and bi-temporal memory fields"
      importedAsAuthority := false }
  , { primitive := .graphGuidedRAG
      role := "boundary recall operators over local graph neighborhoods"
      importedAsAuthority := false }
  , { primitive := .workflowEpisodicMemory
      role := "trajectory compilation and similar-workflow next-step hints"
      importedAsAuthority := false }
  , { primitive := .hybridEpisodicProceduralMemory
      role := "tool graph transitions with episodic edge summaries"
      importedAsAuthority := false }
  , { primitive := .remem
      role := "time-aware gists, facts, and agentic retrieval"
      importedAsAuthority := false }
  , { primitive := .radoProjectedModularHeatflow
      role := "witness graph, heat centroid, residues, and spectral anti-clumping"
      importedAsAuthority := false }
  ]

theorem primitiveRoles_count :
    primitiveRoles.length = 6 := by
  rfl

structure BoundaryMemoryInput where
  system : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryMemorySystem
  query : String
  activeEvent : String
  sourcePrimitives : List PrimitiveRole

def noPrimitiveImportsAuthority (I : BoundaryMemoryInput) : Prop :=
  ∀ p ∈ I.sourcePrimitives, p.importedAsAuthority = false

end Think.RadoProjectedModularHeatflow.BoundaryMemory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9c688c74778445cd62ec585d8ddb3ac6cb99259af391170ed6c962c888b2cdf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memory/Variant0ca5968e2f6836e112211ff58e48863469dbd6f7c68251b844176aa1ed24248e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
