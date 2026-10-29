# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.MissingBlockLength

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a61f7885d633fac5d101b34593ae151a8992d2a` · SHA-256 `7e99ba36b4fbe75c10a1b946c822c98e6904d30377c5987c16568c84bab4c935`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.SturmianBlockCounts
import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.SturmianBlockCounts GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.FreeIDS

example (N L : ℕ) (hN : 0 < N) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |sturmianNormalizedCount N α V ξ origin E - blockCountSum (N/L) L α V ξ origin E/N| ≤
      2/(L:ℝ)+(L:ℝ)/N :=
  finite_block_approximation N L hN
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5b152dcb42b00f908e9a6686d0a212f096ac701cdbf65175a42ed08442c7bba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/MissingBlockLength__SourceOccurrence0ce1b4ae232f633627149458.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
