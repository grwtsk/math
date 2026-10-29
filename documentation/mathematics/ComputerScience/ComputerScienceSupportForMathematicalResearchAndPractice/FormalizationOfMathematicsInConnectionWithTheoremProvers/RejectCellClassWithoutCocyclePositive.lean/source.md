# Reject Cell Class Without Cocycle Positive — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `393a1edf5d2929ffca25cffa1e0c86016006e9ba` · SHA-256 `832cf21206a6cffcd28a767f8fb9b30446e68ae55d4e77ee3320bf29d4480a94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : CycleHZeroComparison pointCycleClass edgeHodge :=
  EdgeFixture.pointHZeroComparison
example (q : ℚ) : edgeHodge.delta (EdgeFixture.constantCocycle q) = 0 :=
  (EdgeFixture.constantCocycle q).property
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2676444472270caab97c0ce9a322f4eb6eb538bb2867e1b8f3a0c8f57a28465f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCellClassWithoutCocyclePositive/Variant832cf21206a6cffcd28a767f8fb9b30446e68ae55d4e77ee3320bf29d4480a94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
