# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.DirichletCorner

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c29ad87db141d2f8baccb7b47023308cba504cac` · SHA-256 `3b2ab3e99b2f8670a2ef6106b4f720c4f616e16a010ad9dca6e0d71056a00b8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume

-- Deliberately false: a Dirichlet path is not a cyclic periodic restriction.
example : freeDirichlet 3 0 2 = 1 := by
  norm_num [freeDirichlet]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42096ad943a0124956c95acf1cc2eed6f760af64e5a0b8ae635b0634475ad978 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/DirichletCorner__SourceOccurrence4a81ca915afae09ab4f90b85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
