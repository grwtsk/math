# Complete source: GRWTSK.Algebra.Polynomial.Checks.Negative.SignedRootTraceNegativeWeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7db2107ef86c0a4812dd5853f43c84437039fe1e` · SHA-256 `17e40863d0a436709d06f1c57966b630e60243e60301a9e9a9f93f1ce95538fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentionally rejected: real nodes do not permit replacing negative weights
by positive ones. The intended mismatch is the false bound 0 ≤ -1. -/
import GRWTSK.Algebra.Polynomial.SignedRootTrace
import Mathlib.Tactic.NormNum

open Polynomial Complex GRWTSK.Polynomial.SignedRootTrace

example : 0 ≤ (squareTrace {0} (fun _ => -1) (1 : Polynomial ℝ)).re := by
  have hv : squareTrace {0} (fun _ => -1) (1 : Polynomial ℝ) = -1 := by
    simp [squareTrace]
  rw [hv]
  change (0 : ℝ) ≤ -1
  exact (show (0 : ℝ) ≤ 1 by norm_num)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72fe5413f64ea5b71c155948186db3c1f6f6a95ab561ef2e575cd44f02caeb5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Polynomial/Checks/Negative/SignedRootTraceNegativeWeight.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
