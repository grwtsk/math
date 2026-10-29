# Complete source: GRWTSK.Algebra.GroupTheory.Actions.GaugeState.Checks.Negative.IncorrectInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0734a8b05065879367ef71da012be214d90da02` · SHA-256 `0e14bf9da27bf0568a073273db29ed87731aa858957969d3b2115421d7bd53f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
private def X (_ : ℕ) : ℚˣ := 1
example : gaugeState B X 1 = B 1 • X 1 := by
  apply Units.ext
  norm_num [gaugeState, B, X, smul_eq_mul]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56a076b18d7100ed39a0194262f18bc6619e714e109b3210a8ee49e2e8fe6bcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Actions/GaugeState/Checks/Negative/IncorrectInverse__SourceOccurrenceb94e91bcdfd82c2c3b2c7bdb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
