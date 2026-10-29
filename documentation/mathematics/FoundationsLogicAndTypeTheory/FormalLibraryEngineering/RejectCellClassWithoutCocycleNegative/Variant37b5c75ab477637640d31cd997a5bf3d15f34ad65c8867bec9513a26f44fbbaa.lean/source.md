# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCellClassWithoutCocycleNegative.Variant37b5c75ab477637640d31cd997a5bf3d15f34ad65c8867bec9513a26f44fbbaa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9189ab64ad98d7c7d8f647ced565d70f1fffaad6` · SHA-256 `37b5c75ab477637640d31cd997a5bf3d15f34ad65c8867bec9513a26f44fbbaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
-- An ambient cochain representative does not have the required kernel-subtype codomain.
def ambientIsNotCocycle : CycleHZeroComparison pointCycleClass edgeHodge where
  hodgeToCocycle := constantRepresentative
  cycleToCocycle := constantRepresentative
  commute := rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f3689f2034c1089427d0dfa446579bdb34b5384c502eb63d6746125372f96d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCellClassWithoutCocycleNegative/Variant37b5c75ab477637640d31cd997a5bf3d15f34ad65c8867bec9513a26f44fbbaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
