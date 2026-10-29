# Complete source: GRWTSK.Analysis.Inequalities.ExponentialDiagonal

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3ca8509f335a38e18f771990f8d51e265c7c334` · SHA-256 `f66230be0e73e9131682ccc031b09f1c72354a628dbfe3d3875bc1a6e4692b99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Tactic.Linarith

namespace GRWTSK.RiemannHypothesis.CCC.DiagonalAffineAlgebra

/-- The explicit sharp diagonal expression is at most its quadratic allowance. -/
theorem sharp_diagonal_le_quadratic (T : ℝ) :
    2 * T ^ 2 - 8 * T + 16 * (1 - Real.exp (-T / 2)) ≤ 2 * T ^ 2 := by
  have h := Real.add_one_le_exp (-T / 2)
  linarith

end GRWTSK.RiemannHypothesis.CCC.DiagonalAffineAlgebra
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5026cb92e13a94252fd8bd60a7b2a945a98fad7c026d31f3a8f91dfd4844ce64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Inequalities/ExponentialDiagonal.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
