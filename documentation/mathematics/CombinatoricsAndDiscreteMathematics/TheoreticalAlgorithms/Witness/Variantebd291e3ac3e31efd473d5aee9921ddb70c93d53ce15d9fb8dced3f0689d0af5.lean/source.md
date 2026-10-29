# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Witness.Variantebd291e3ac3e31efd473d5aee9921ddb70c93d53ce15d9fb8dced3f0689d0af5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b447cc8f94c4a204d1323b946c8f58a899d3f07b` · SHA-256 `ebd291e3ac3e31efd473d5aee9921ddb70c93d53ce15d9fb8dced3f0689d0af5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Consolidation

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive BoundaryWitnessKind where
  | entityResolution
  | temporalInvalidation
  | workflowNovelty
  | proceduralExploration
  | sourceResidue
  | refusalSupport
deriving DecidableEq, Repr

structure BoundaryWitness where
  witness : MemoryVertex
  kind : BoundaryWitnessKind
  connectsTo : List MemoryVertex
  avoids : List MemoryVertex
  targetTreeNode : Nat
  coefficientTarget : Nat -> Int
  bridgeSide : witness.side = BoundarySide.bridge
  witnessKind : witness.kind = MemoryKind.witness

def BoundaryWitness.insertedForResidue (w : BoundaryWitness) (R : BoundaryResidue) : Prop :=
  w.targetTreeNode = R.treeNode

theorem boundary_witness_is_bridge (w : BoundaryWitness) :
    w.witness.side = BoundarySide.bridge :=
  w.bridgeSide

end Think.RadoProjectedModularHeatflow.MemoryCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2c4e701e8736aded3dd4e17c549ae7d6fb87a78d660096c347db0520fe9e923 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Witness/Variantebd291e3ac3e31efd473d5aee9921ddb70c93d53ce15d9fb8dced3f0689d0af5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
