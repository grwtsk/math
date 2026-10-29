# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.ZeroVolumeError

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d0286b2ce78708f8f15f76052c36f8d5a317d63` · SHA-256 `fb9f66509dd6b470a1078a901718f56e52437baa30612725a48b39cec02fb7b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Spectral.FreeIDS GRWTSK.Spectral.SturmianFiniteVolume

-- The one-over-volume error requires positive volume, not merely N>=0.
example : freeIDS 2 - 1/(0:ℝ) ≤ freeNormalizedCount 0 2 := by
  rw [freeIDS_of_two_le (by norm_num)]
  norm_num [freeNormalizedCount, freeCount_eq_ceil]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24f00177927d4ce12e7e4abf7ba49cd3388788e226911265bc25fe8e2a907bf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/ZeroVolumeError__SourceOccurrence890b90b4b11668de434f1af6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
