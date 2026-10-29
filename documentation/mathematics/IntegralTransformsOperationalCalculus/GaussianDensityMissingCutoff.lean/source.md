# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianDensityMissingCutoff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10a0bc972cfd1bbf52f331a360d0f8b50d8a2321` · SHA-256 `689ba388e7697b64837957703519a677644d95728f9eab6fbe3c5cdbef149214`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intended rejection: the actual positive zero-cutoff density sum cannot obey the proposed bound. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianDensityMoments
open GRWTSK.Analysis.MellinTransform.GaussianDensityMoments
open GRWTSK.Analysis.MellinTransform.GaussianDensityMoments.Checks
example : ∃C : ℝ,0<C ∧
    (∑'j : ℕ,gaussianRemoteMoment exampleWindow exampleWindow_compact 0 1 1 0 j)≤
      C*(1:ℝ)^(1:ℝ)/(0:ℝ)^1 := by
  obtain ⟨C,hC,h⟩ := gaussianRemoteMoment_summed exampleWindow exampleWindow_compact 0 1 1 (by norm_num)
  exact ⟨C,hC,(h 1 0 (by norm_num) (le_refl (0:ℝ))).2⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02148582c863ca63628d6de1cbe54708f656d6d415b422649274c776a36621d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/GaussianDensityMissingCutoff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
