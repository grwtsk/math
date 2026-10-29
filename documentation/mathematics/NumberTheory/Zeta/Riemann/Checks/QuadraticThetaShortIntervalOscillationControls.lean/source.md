# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaShortIntervalOscillationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1246d5889713b4552ea0bcdcb76c18ff820646c` · SHA-256 `d83c720fbc6147a4734801473a6fdf67333d9e1a3c96adfcf620f8fea8449e0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShortIntervalOscillation
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaShortIntervalOscillationControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["uniform shell cancellation equals control of thetaError(2u) over [2X,4X]",
   "short-interval oscillation plus anchor cancellation implies recurrence",
   "monotonicity and Chebyshev upper bounds give only O(X) oscillation",
   "at rho=7/8 the target is X^(3/4+eta/2), sublinear for eta<1/2"]

example {η : ℝ} (hη : η < (1 : ℝ) / 2) :
    quadraticThreshold ((7 : ℝ) / 8) + η / 2 < 1 :=
  sevenEighths_oscillation_exponent_lt_one hη

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaShortIntervalOscillationControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=458846fe427378ae1e3359165c702aa4412ab536a8919d18d7495382eb5ade24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaShortIntervalOscillationControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
