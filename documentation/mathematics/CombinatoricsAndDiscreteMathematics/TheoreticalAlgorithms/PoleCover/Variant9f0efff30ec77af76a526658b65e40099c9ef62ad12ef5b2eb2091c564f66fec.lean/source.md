# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PoleCover.Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfc529a2d56c429d33406f4c4885a16a80e14ebb` · SHA-256 `9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Compact

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure PoleChart where
  poleLabel : String
  compact : CompactPatch
  support : List MemoryVertex
  residueMapLabel : String
deriving Repr

structure PoleCover where
  compact : CompactPatch
  charts : List PoleChart
  compactConservative : Prop
  residueComplete : Prop
  overlapCompatible : Prop

def PoleCover.compactDeterminedByPoles (C : PoleCover) : Prop :=
  C.compactConservative ∧ C.residueComplete ∧ C.overlapCompatible

def polesFormCompactConservativeResidueCover (C : PoleCover) : Prop :=
  C.compactConservative ∧ C.residueComplete

theorem compact_determined_requires_conservative_cover
    (C : PoleCover)
    (h : C.compactDeterminedByPoles) :
    polesFormCompactConservativeResidueCover C := by
  exact And.intro h.1 h.2.1

theorem conservative_residue_cover_with_overlaps_determines_compact
    (C : PoleCover)
    (hCover : polesFormCompactConservativeResidueCover C)
    (hOverlap : C.overlapCompatible) :
    C.compactDeterminedByPoles := by
  exact And.intro hCover.1 (And.intro hCover.2 hOverlap)

end Think.RadoProjectedModularHeatflow.MemoryCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cb87620d7335847f10a72847cee1b0b5ed90fe42262477ecca99c4ea369385b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PoleCover/Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
