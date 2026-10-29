# Complete source: GRWTSK.Algebra.GroupTheory.Actions.GaugeState.Checks.Negative.IncorrectCurrentState

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c6cadbb70481313154f52498f25d436a36d3a0c` · SHA-256 `6b35794dc12edcca795671546a3357a8e2942b35d7239a7e821c6a40c713f26d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
private def X (_ : ℕ) : ℚˣ := 1
example : gaugeState B X 1 = gaugeTransfer (fun _ => (1 : ℚˣ)) B 0 • gaugeState B X 1 := by
  apply Units.ext
  norm_num [gaugeState, gaugeTransfer, B, X, smul_eq_mul]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cb2157f8075df773fb7fe32ad721b7b1da81d32c2af1fe8cbc0af99df4a62ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Actions/GaugeState/Checks/Negative/IncorrectCurrentState__SourceOccurrence76a32aa0ef5c26ca94aeb1cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
