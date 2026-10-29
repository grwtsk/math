# Complete source: GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform.Checks.Negative.MissingMertensEndpoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `472ae58670ec85f4409487585e18dffed60e8986` · SHA-256 `f5c3e4689a81a739889076777ee6be187537ad29c921ce6b564173ea82f7218d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform
open GRWTSK.RiemannHypothesis.CCC
example {T : ℝ} (hT : 0 ≤ T) {z s : ℂ} (hs : s = z+1/2)
    (hz : z ≠ 0) (hs0 : s ≠ 0) :
    noteWindowLaplace wholePickup z T = pickupDirichletPrefix ⌊Real.exp T⌋₊ s / (z*s) -
      2*Complex.exp (-z*T)/z*(pickupWeightedPrefix ⌊Real.exp T⌋₊ : ℂ) := by
  exact wholePickup_cutoff_laplace hT hs hz hs0
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4ce4fa1405dc525733debc5cdf1e425380709cf0bdc147fba395b7bc4af2fb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform/Checks/Negative/MissingMertensEndpoint.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
