# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.DroppedRemainderCost

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `831deda539b2247b88ff6f065794a821db0aeab9` · SHA-256 `072a29001f86f820824e02059e6c0c0d15b3cc02ee24d4cb5b884f3b082fc710`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianBlockCounts
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=044417417a5c45b463c603d53ab5735abca954288a87fcb3604cdb9078fac97e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/DroppedRemainderCost__SourceOccurrence91ab68b462ab5e0ae34ea33e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
