# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerArithmeticGainSplitControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bedb25a14903408a815c4ba8c4af6594c50c5c24` · SHA-256 `ace563fed48cd65ec92719024041eee26dcd5802d8a3eb69a05103941156a155`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticGainSplit
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerArithmeticGainSplitControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["total graded Fejer gain splits as beta/2 plus 1-rho",
   "complete bandwidth neutralization leaves smoothed-value exponent rho",
   "residual value closure is equivalent to arithmetic gain at least 1-rho",
   "pure bandwidth neutralization cannot close a subunit threshold",
   "boundary-minimal bandwidth is beta=2(1-rho)",
   "boundary-minimal total gain is 2(1-rho)",
   "at rho=7/8 the boundary-minimal bandwidth is 1/4",
   "at rho=7/8 bandwidth neutralization contributes 1/8",
   "at rho=7/8 residual arithmetic cancellation must contribute at least 1/8",
   "the split supplier converts to the corrected total-gain supplier",
   "seven-eighths smoothed-value supplier remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerArithmeticGainSplitControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0144028dab76d06a38a4b0f231d89f8ffe737933db7385915865fe75a9f12ce6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerArithmeticGainSplitControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
