# Reject Projector Energy Loss Counterexample — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6f5dcffc8d9cbf477c33bfee8882349936dd48c` · SHA-256 `c014f79da1fd72541d9a127a1d105086d5dfb8984db1240e1a96f6f56b9dd6ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat
-- Discarding the complement loses all energy for this nonzero one-coordinate vector.
example : energy (fun _ : Fin 1 => (1 : ℝ)) (fun _ => 1) ≠
    energy (fun _ : Fin 1 => (1 : ℝ))
      (coordinateProjector (fun _ => false) (fun _ => 1)) := by
  norm_num [energy, dot, diagonal, coordinateProjector]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7621549ed07cfd9a19881761aa24919eb658b08888b57cd3a7ee3f4d2a04cd09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectProjectorEnergyLossCounterexample/Variantc014f79da1fd72541d9a127a1d105086d5dfb8984db1240e1a96f6f56b9dd6ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
