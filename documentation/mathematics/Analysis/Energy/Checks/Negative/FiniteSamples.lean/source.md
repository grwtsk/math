# Complete source: GRWTSK.Analysis.Energy.Checks.Negative.FiniteSamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c63d955c69e315fb295472a478ba90cd59d0850` · SHA-256 `154a84bc8494bda116616878060fa9445942e4198f2b76356fcaf1d9a7c0076a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.AlmostMathieu
import GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold
import GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion
import GRWTSK.NumberTheory.Moebius.ComparisonEnergy
import GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth
import GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC

-- Must fail: a finite carrier is not the complete sampled arithmetic budget.
example (C r : ℝ) (hC : 0 ≤ C) (hr : 0 ≤ r)
    (h : ∀ n : ℕ, n ≤ 100 → pickupCross n ≤ C * (1 + (n : ℝ)) ^ r) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupCrossNatPoly ⟨C, r, hC, hr, h⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0473748ab218c6ecf0e14ca43db250f57a534be9adc76ee3313a47809d58305 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Energy/Checks/Negative/FiniteSamples.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
