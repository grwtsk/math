# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicChebyshevCumulativeBudgetControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9116748f2e9267320e8a16b4498f104b73c1c95` · SHA-256 `6d6fbb5df2c874efc16059f6332519782eaa5ec1fc347722228a202d8c2c8af0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicChebyshevCumulativeBudget
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicChebyshevCumulativeBudgetControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem cumulative_budget_bounds_every_prefix
    (z : ZeroPoint) (N : ℕ) :
    (∑ j ∈ Finset.range N, safeQuarticDyadicPackingValue z j) ≤
      safeQuarticDyadicTotalBudget z :=
  safeQuarticDyadicPartial_le_totalBudget z N

end GRWTSK.RiemannHypothesis.Checks.DyadicChebyshevCumulativeBudgetControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5d52e9f8b40e051c3d2526fb4b17b8393210b90cd2b55dd1e90c91952e710bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicChebyshevCumulativeBudgetControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
