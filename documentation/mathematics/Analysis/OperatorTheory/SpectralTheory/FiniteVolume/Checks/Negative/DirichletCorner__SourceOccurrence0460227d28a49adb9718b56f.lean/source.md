# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.DirichletCorner

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ec208414c8d08bbcdf845bcbc8f25cf56418a8a` · SHA-256 `4b34563e1c5a547b2b6f1d62ef9f73ee7662b45837692bcb1e6275e300c08ee0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume

-- Deliberately false: a Dirichlet path is not a cyclic periodic restriction.
example : freeDirichlet 3 0 2 = 1 := by
  norm_num [freeDirichlet]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7e91aa5155d9a63ace6076601d128bd950454d6e2537adac9908e15bbe1a1e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/DirichletCorner__SourceOccurrence0460227d28a49adb9718b56f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
