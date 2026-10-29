# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.ZeroTraceAllEnergies

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61e4868eacce3c276f43e819a5645e1f54f4f49e` · SHA-256 `3967d2d9f515622db0d3b59e6f67286c5f4a7c29c254e75a01397f4fc611579d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.Sturmian
open GRWTSK.LinearAlgebra.Sturmian

-- The free transfer at energy three remains outside the bounded-trace interval.
example : |Matrix.trace (transfer 3 0 0 0 0)| ≤ 2 := by
  exact (zero_coupling_trace_iff 3 0 0 0).2 (by norm_num)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f13b5ed63e2fde4974da1a6f16c6cfb10ac229f76367ec7b154dd5fb50ca45af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/ZeroTraceAllEnergies__SourceOccurrencedc2625886d31c20e3e3e218d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
