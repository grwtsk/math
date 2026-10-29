# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.WrongEigenvalueDenominator

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5dcc8f1aa71466ec716ba3e01a1b52400206ed1` · SHA-256 `a1947cf3f4f013c84b4a398b15535a163e1cc5f08454afb2a181e40277707716`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.FreeDirichletSpectrum

-- Using N instead of N+1 loses the paid Dirichlet boundary condition.
example : eigenvalue 1 0 = 2*Real.cos Real.pi := by
  norm_num [eigenvalue, angle]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6836d59bbb1675adeed5d890f3ff296ea95aca115e236535664791dc1d238317 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongEigenvalueDenominator__SourceOccurrence4531255190c7245d992248d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
