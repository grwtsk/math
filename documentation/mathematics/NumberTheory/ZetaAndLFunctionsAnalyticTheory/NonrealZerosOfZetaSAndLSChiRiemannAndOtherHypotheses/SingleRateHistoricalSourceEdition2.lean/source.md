# Single Rate Historical Source Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97922426bc382c4f4cffb012ca0d59b9a9a41ed3` · SHA-256 `8307e54a45855fb2c0bedfc3f2359aad0d3d9d507ec4f60507782dfbc0c74bee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.AlmostMathieu
import GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold
import GRWTSK.Algebra.LinearAlgebra.Determinant.RankOneQuadraticForm
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion
import GRWTSK.NumberTheory.Moebius.ComparisonEnergy
import GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth
import GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
open GRWTSK.RiemannHypothesis.CCC MeasureTheory Set

-- Must fail: one paid damping is not the every-positive-damping premise.
example (h : IntegrableOn
    (fun u ↦ Real.exp (-u) * wholePickup u ^ 2) (Ici 0)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupWeightedEnergyAll h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9956427c6ed39b98780b78eaa8e538d819d6fdfa31d0f9f0c2f259310a6a94c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SingleRate/Variant8307e54a45855fb2c0bedfc3f2359aad0d3d9d507ec4f60507782dfbc0c74bee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
