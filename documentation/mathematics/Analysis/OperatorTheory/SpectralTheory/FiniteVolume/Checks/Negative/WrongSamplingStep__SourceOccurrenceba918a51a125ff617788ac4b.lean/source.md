# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.WrongSamplingStep

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d05543377f60fa33c331a52fe96ddd428f6c3cf7` · SHA-256 `71c93cf70563883ace3e31385e43d33fddcb2a76e52a7fc2274d8679f6fcc935`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.SturmianBlockCounts
import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.SturmianBlockCounts GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.FreeIDS

example (q L : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    blockCountSum q L α V ξ origin E = ∑ j ∈ Finset.range q,
      (sturmianCount L α V ((ξ+(origin:ℝ)*α)+(j:ℝ)*α) 0 E : ℝ) :=
  blockCountSum_phase q L α V ξ origin E
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f480e31860ca00ac650b4266f060b920b3ef7e038ae19410437a680e6de12b15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongSamplingStep__SourceOccurrenceba918a51a125ff617788ac4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
