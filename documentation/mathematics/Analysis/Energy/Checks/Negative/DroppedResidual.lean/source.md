# Complete source: GRWTSK.Analysis.Energy.Checks.Negative.DroppedResidual

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1bab9f6df30d0287b489f6d013630651ac2185c` · SHA-256 `340861a9ab734d68b26c48200d4eaa30cfc540641ba57fa809c7fc265ab86b5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.AlmostMathieu
import GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold
import GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion
import GRWTSK.NumberTheory.Moebius.ComparisonEnergy
import GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth
import GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC MeasureTheory

-- Must fail: comparison energy alone does not pay the complete difference.
example {g : ℝ → ℝ} (hg : Continuous g)
    (hmain : SubexponentialUpper (fun T ↦ ∫ u in (0 : ℝ)..T, g u ^ 2)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickup_comparison hg hmain
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9ff2c047d342768dd402a8ef32d045d7f0b233cc136f7f201f835bdbc3a1dee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Energy/Checks/Negative/DroppedResidual.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
