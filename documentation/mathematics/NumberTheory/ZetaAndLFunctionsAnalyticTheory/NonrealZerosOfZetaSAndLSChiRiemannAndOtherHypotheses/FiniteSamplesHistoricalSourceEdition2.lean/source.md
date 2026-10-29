# Finite Samples Historical Source Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60012f993eaaae451815d72df2c0ecb382af660c` · SHA-256 `c23833c2d1a390064fbff51ff129c1c5940344b78acf8513a5af631535906649`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.AlmostMathieu
import GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold
import GRWTSK.Algebra.LinearAlgebra.Determinant.RankOneQuadraticForm
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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=962eb5f8fa96efb9fd068f099ccea9e773b0bacbeb675a9a34e7a3ec394f417f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteSamples/Variantc23833c2d1a390064fbff51ff129c1c5940344b78acf8513a5af631535906649.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
