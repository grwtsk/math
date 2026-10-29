# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeSymmetricTriangularKernelDecayControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db30b2f3fe679c0686acfa9b6c741b033197c09d` · SHA-256 `d87be089d9c71189d918c735d28ac43a0d07c41986e44ab85188c35b3b263043`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDecay
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelDecayControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["Jordan inequality gives |sin(pi t)| >= 2|t| on |t|<=1/2",
   "closed sine-squared kernel form implies O(1/(N t^2)) decay",
   "pointwise decay is therefore not independent once closed form is proved",
   "remaining analytic theorem is the finite symmetric-sum closed form"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelDecayControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c606867b37b866b456897f541bb4f5c83b2fa17694e46aa797b247ee15f0eeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeSymmetricTriangularKernelDecayControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
