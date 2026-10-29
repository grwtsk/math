# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.ZeroTraceAllEnergies

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fb97199f08a528d098fd9afe64f326be1286f26` · SHA-256 `4ecc699b198b2206cc33c7ac49369701fc2bc20d6557fb564b8b6bd6e9c99e8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.Sturmian
open GRWTSK.LinearAlgebra.Sturmian

-- The free transfer at energy three remains outside the bounded-trace interval.
example : |Matrix.trace (transfer 3 0 0 0 0)| ≤ 2 := by
  exact (zero_coupling_trace_iff 3 0 0 0).2 (by norm_num)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e880399fecc5588a4d34aea8b18daed18429275c3cb87d0e29fd63d60c43ddd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/ZeroTraceAllEnergies__SourceOccurrence7493c4190aa98f24cb4ebe97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
