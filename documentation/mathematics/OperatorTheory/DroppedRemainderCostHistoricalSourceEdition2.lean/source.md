# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.DroppedRemainderCost

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a8c5a6c16e1c86e048f9fe7a2f7927a47d197f6` · SHA-256 `cb32190ecc88ee578a11db7f0fd3d52be49483957334b748b92a48f9adc14b40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.SturmianBlockCounts
import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.SturmianBlockCounts GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.FreeIDS
private theorem free_one : freeCount 1 0 = 1 := by
  have hc : cutoff 1 0 = 1 := by
    simp [cutoff, angleFraction]
    field_simp
    norm_num
  rw [freeCount_eq_ceil, hc]
  norm_num
private theorem free_two : freeCount 2 0 = 1 := by
  have hc : cutoff 2 0 = (3/2:ℝ) := by
    simp [cutoff, angleFraction]
    field_simp
    norm_num
  rw [freeCount_eq_ceil, hc]
  norm_num
private theorem zero_count (N : ℕ) (origin : ℤ) :
    sturmianCount N 0 0 0 origin 0 = freeCount N 0 := by
  simp only [sturmianCount, freeCount, hamiltonian_zero]

example : |blockCountSum 0 1 0 0 0 0 0 - (sturmianCount 1 0 0 0 0 0 : ℝ)| ≤ 0 := by
  norm_num [blockCountSum, zero_count, free_one]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c29d54db033833d753ec1e3f929e686a19bfe4db6bd4a8412c6060627ef20b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/DroppedRemainderCost__SourceOccurrenced8a48783982d509e6a8f4cfa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
