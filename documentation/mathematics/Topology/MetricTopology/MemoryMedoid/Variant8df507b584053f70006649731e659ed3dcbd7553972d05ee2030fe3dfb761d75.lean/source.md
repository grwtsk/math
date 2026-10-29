# Complete source: GRWTSK.Topology.MetricTopology.MemoryMedoid.Variant8df507b584053f70006649731e659ed3dcbd7553972d05ee2030fe3dfb761d75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17b5fccf5802bc658b1669afca223cb2b062a6b3` · SHA-256 `8df507b584053f70006649731e659ed3dcbd7553972d05ee2030fe3dfb761d75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.Center.KakeyaMedoid
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryAlgebra

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryMedoid

abbrev Phase := Think.PhaseId
abbrev MemoryVertex := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryVertex
abbrev WeightedMemory := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.WeightedMemory
abbrev ResidueAtom := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom

structure PhasePoleDistance where
  dist : Nat -> Phase -> Nat

def projectedDistance
    (projection : MemoryVertex -> Nat)
    (D : PhasePoleDistance)
    (v : MemoryVertex)
    (p : Phase) : Nat :=
  D.dist (projection v) p

def medoidOverProjectedSupport
    (projection : MemoryVertex -> Nat)
    (D : PhasePoleDistance)
    (M : WeightedMemory)
    (support : List MemoryVertex) : Phase :=
  Think.Pipeline.Center.KakeyaMedoid.medoidK
    (projectedDistance projection D)
    M
    support

def medoidProjectionResidues : List ResidueAtom :=
  Think.RadoProjectedModularHeatflow.MemoryAlgebra.projectionResidues ++
    Think.Pipeline.Center.KakeyaMedoid.medoidResidues

theorem medoidProjectionResidues_mark_projection :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.sourceTreeProjectionMayEraseEdges ∈
      medoidProjectionResidues := by
  simp
    [medoidProjectionResidues,
      Think.RadoProjectedModularHeatflow.MemoryAlgebra.projectionResidues,
      Think.Pipeline.Center.KakeyaMedoid.medoidResidues]

theorem medoidProjectionResidues_mark_nonTheorem :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.kakeyaMedoidNotKakeyaTheorem ∈
      medoidProjectionResidues := by
  simp
    [medoidProjectionResidues,
      Think.RadoProjectedModularHeatflow.MemoryAlgebra.projectionResidues,
      Think.Pipeline.Center.KakeyaMedoid.medoidResidues]

end Think.RadoProjectedModularHeatflow.MemoryMedoid
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0772215eb69505811b44abd61cf4b490654d04ebbabcfb419f2dd35ee1fdad42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/MemoryMedoid/Variant8df507b584053f70006649731e659ed3dcbd7553972d05ee2030fe3dfb761d75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
