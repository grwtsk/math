# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.WrongEigenvalueDenominator

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a3bb41907f376c416dd9607f569073cb69d5e15` · SHA-256 `f4e270005f383c578c434e8af5f0c1e76208e718b6cbb521e09dd03f4ab78987`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Spectral.FreeDirichletSpectrum

-- Using N instead of N+1 loses the paid Dirichlet boundary condition.
example : eigenvalue 1 0 = 2*Real.cos Real.pi := by
  norm_num [eigenvalue, angle]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2774ff271c5f40a2aa19f0f1dccb735288fdb9db95dccb72996b3e37bbd9734e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongEigenvalueDenominator__SourceOccurrence564bfa07d819a6b150b19572.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
