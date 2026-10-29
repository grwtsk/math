# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.SectorMissingAdditiveCutoff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5d115611656589763f915b79a231fdfb8ba41bf` · SHA-256 `94216f30fa1fd1a1ecbf1263d66ca975853bd5434a2d3d31b97f81ec87163e03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

-- The quotient square has four pairs; the required additive region has one.
example : commonDivisorWeightedMoment 5 2 (fun _ _ _ => (1 : ℤ)) =
    ∑ _p ∈ (Finset.Icc 1 (5 / 2)).product (Finset.Icc 1 (5 / 2)), (1 : ℤ) := by
  have h : commonDivisorWeightedMoment 5 2 (fun _ _ _ => (1 : ℤ)) = 1 := by
    decide
  exact h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c011a62b81ec8f1f20b82b718df247a4a55dc302ce3622b73c4a5a64f576dcb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/SectorMissingAdditiveCutoff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
