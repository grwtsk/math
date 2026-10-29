# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.ExactCutAdditivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a99097200ac4458d270bc3cc6379469b66c195c3` · SHA-256 `72aa5bba6b8831919c7b3c3e77c0b4ec0db7babcd0cad74adb676efabb1679be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.FreeIDS GRWTSK.Spectral.SturmianFiniteVolume
example : freeCount 2 0 = freeCount 1 0 + freeCount 1 0 := by
  have hc1 : cutoff 1 0 = 1 := by
    simp [cutoff, angleFraction]
    field_simp
    norm_num
  have hc2 : cutoff 2 0 = (3/2:ℝ) := by
    simp [cutoff, angleFraction]
    field_simp
    norm_num
  simp only [freeCount_eq_ceil, hc1, hc2]
  norm_num
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=005e3480c7513895baab3f330340096674b54c2eca20ace039ed255abd280b9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/ExactCutAdditivity__SourceOccurrence1862c302eaec6c9770dd130d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
