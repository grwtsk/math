# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.WrongSamplingStep

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe97f98f2b61b656290aa1f6561c656f5fdd7cdb` · SHA-256 `7b0275afbee2c67df1a104dc16e884804e1a7a9b6ec79e76a0bed8c467c82d86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianBlockCounts
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Spectral.SturmianBlockCounts GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.FreeIDS

example (q L : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    blockCountSum q L α V ξ origin E = ∑ j ∈ Finset.range q,
      (sturmianCount L α V ((ξ+(origin:ℝ)*α)+(j:ℝ)*α) 0 E : ℝ) :=
  blockCountSum_phase q L α V ξ origin E
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcdf101e5267eecc9d5c0213f7abf66d2c7fb5711b57fff64c8d43e782f7d0ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongSamplingStep__SourceOccurrence69c749ccff2c7c143170fd39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
