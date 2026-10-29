# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaGradedFourierNoDescentControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83de964cce761d8bf7987b83c6f0651190553a41` · SHA-256 `494a7159c669e807d5ba3004163a1c1d653fad9dc0b1859199918af84b381495`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaGradedFourierNoDescent
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaGradedFourierNoDescentControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["prime-only Fourier coordinate premise is parameterized by threshold rho",
   "rho=1/2 specialization equals the existing critical premise",
   "existing critical premise is equivalent to half-threshold energy and already implies RH",
   "graded naive Fourier exponent is rho + beta/2",
   "reaching quadraticThreshold rho requires beta <= 2(rho-1)",
   "for rho<1 and beta>=0 naive graded Fourier cannot produce quadratic descent",
   "seven-eighths smoothed-value supplier must use a genuinely graded premise or stronger nonlinear structure"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaGradedFourierNoDescentControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c26c6fdeff6d52b383d4952e9e156a2427c47c6bbad43f6465e124e8a0470373 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaGradedFourierNoDescentControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
