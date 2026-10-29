# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.MellinNormalizedDyadicPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba2c52fdd438c118dc49f82a6686cce457a80802` · SHA-256 `e266c6606e189ee49eb3e606d49d3dec9f1b5cf4d9f7ede9bf3b851fac6175da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedDyadicPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.MellinNormalizedDyadicPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem normalized_action_is_uniformly_bounded
    (z : ZeroPoint) (j : ℕ) :
    ‖safePlusDyadicAction z j‖ ≤ safeChebyshevActionConstant z :=
  safePlusDyadicAction_norm_le z j

theorem normalized_quartic_is_positive
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeQuarticDyadicActionValue z j :=
  safeQuarticDyadicActionValue_nonnegative z j

end GRWTSK.RiemannHypothesis.Checks.MellinNormalizedDyadicPackingControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68fe28cfd865b560512a0310902acee8c4078e4918a36ee449cd617048ca7c84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedDyadicPackingControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
