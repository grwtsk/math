# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianWindowNonpositiveScale

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fae02858c8ecbc7b0aed2b4176f6b4f631d0ae25` · SHA-256 `e2e4db4820bd154bfb51c74237b9b2dc66b5c0988106f51c2f0312bc7849004e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentional missing-positive-scale control. Apache-2.0. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianWindowSeminorms
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms

-- Intended rejection: nonnegative scale cannot supply the actual strict positive scale.
example : ∃ C : ℝ, 0<C ∧ ‖iteratedDeriv 0 (gaussianDyadicProfile 0 0) (3/4)‖ ≤
    C*(((2:ℝ)^0/0)^(-(1:ℝ))) := by
  obtain ⟨C,hC,h⟩ := gaussianDyadicProfile_derivative_uniform 1 0
  exact ⟨C,hC,h 0 (le_refl (0:ℝ)) 0 (3/4) (by norm_num)⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a6b379e766452eeb14d7fe6a32c9a7cadcd0bda299472b90aaf493a78c5fd6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/GaussianWindowNonpositiveScale.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
