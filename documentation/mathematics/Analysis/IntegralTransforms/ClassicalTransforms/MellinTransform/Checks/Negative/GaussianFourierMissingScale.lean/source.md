# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianFourierMissingScale

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66ac170d0073e03416b570ba0e4db35de1163fc5` · SHA-256 `7acf8e0a10481f3dfbc5ca386860bc96ff031289300b9b2ba008300282c7bdea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intended rejection: zero is outside the actual real-power cancellation helper domain.
No zero-scale Schwartz constructor or full Fourier-moment claim is used. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianFourierMoments
open GRWTSK.Analysis.MellinTransform.GaussianFourierMoments
example : (0:ℝ)^(1:ℝ)*(0:ℝ)^(-(1:ℝ))=1 :=
  scale_rpow_cancel 0 1 (le_refl (0:ℝ))
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66b2002337d2ec5c0796f2a4b62b345e3967526e992adf710b3738d9c62885a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/GaussianFourierMissingScale.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
