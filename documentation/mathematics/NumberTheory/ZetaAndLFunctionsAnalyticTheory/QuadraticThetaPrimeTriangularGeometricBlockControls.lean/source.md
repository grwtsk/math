# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularGeometricBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e4f904ef56e60deecbdd1239607f7afa1c9d969` · SHA-256 `6c867a12223c84bc981e3b38bfa36c25f8f7604b5a694a88fd13489c0707e477`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularGeometricBlock
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularGeometricBlockControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["length-N exponential block is explicitly defined",
   "block equals finite exponential sum",
   "geometric-series quotient is proved from geom_sum_eq",
   "remaining closed-form work is autocorrelation counting plus sine conversion"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularGeometricBlockControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15d967a5d2b94f71bbc496cb301410f6f5f95607d8c554246b60e89398d0031d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularGeometricBlockControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
