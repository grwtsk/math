# Complete source: GRWTSK.Algebra.Polynomial.Checks.Negative.SignedRootTraceModulus

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c865a70a54c47a1bfcff34df37a3c4c732e0f6dd` · SHA-256 `c8cf54d6c813b3675a0f55298a93d7f78b2efe544ba46f4a1084ecbd265defe4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentionally rejected: a positive squared-modulus sum cannot be used as
the negative signed-square trace at I and -I. -/
import GRWTSK.Algebra.Polynomial.SignedRootTrace
import Mathlib.Tactic.NormNum

open Polynomial Complex GRWTSK.Polynomial.SignedRootTrace

example : 0 ≤ (squareTrace {I, -I} (fun _ => 1) X).re := by
  have hne : (I : ℂ) ≠ -I := by intro h; have := congrArg Complex.im h; norm_num at this
  have hv : squareTrace {I, -I} (fun _ => 1) X = -2 := by
    simp [squareTrace, hne]
    norm_num
  rw [hv]
  change (0 : ℝ) ≤ -2
  exact (show (0 : ℝ) ≤ Complex.normSq I + Complex.normSq (-I) by norm_num)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2e06671d0397f3cfd167a3413fa748ea07e04f3d98bd9d5043c159643443fa1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Polynomial/Checks/Negative/SignedRootTraceModulus.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
