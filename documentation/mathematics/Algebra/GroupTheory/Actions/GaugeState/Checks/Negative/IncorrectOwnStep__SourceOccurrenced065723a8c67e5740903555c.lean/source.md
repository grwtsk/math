# Complete source: GRWTSK.Algebra.GroupTheory.Actions.GaugeState.Checks.Negative.IncorrectOwnStep

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10fad1625768fabd0079adecf2e23a36a0b8493c` · SHA-256 `58c1b97095d83582cdf7028cff4c0c5928b2f40accfb25565431bd753d01d9c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
private def X (_ : ℕ) : ℚˣ := 1
example : gaugeState B X 0 = (B 1)⁻¹ • X 0 := by
  apply Units.ext
  norm_num [gaugeState, B, X, smul_eq_mul]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9786719f4dcf2de23b6d7565f985f5be110852ca41cd4df68d3e72bf0327747c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Actions/GaugeState/Checks/Negative/IncorrectOwnStep__SourceOccurrenced065723a8c67e5740903555c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
