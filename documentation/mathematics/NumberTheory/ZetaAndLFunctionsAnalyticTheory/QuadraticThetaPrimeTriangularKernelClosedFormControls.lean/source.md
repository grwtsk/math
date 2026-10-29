# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularKernelClosedFormControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f36dd11db3cb9296bd6ebc3b04d30d72ed71b6ca` · SHA-256 `75e0bed546a8fca2f3579d91ccb6b76057dcbfa21d6c6cf72c54163bb75d180a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularKernelClosedForm
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularKernelClosedFormControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["unit exponential phase cancels with its conjugate",
   "off-boundary geometric-block sine-norm claim is discharged",
   "symmetric triangular kernel sine-squared closed form is discharged",
   "explicit 1/(4*N*t^2) pointwise decay claim is discharged",
   "next frontier is propagation from kernel decay to the prime-prefix smoothing/tail claim"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularKernelClosedFormControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7939c0d0ea6a06791a3aadd17eb3274b8b8dfdae64d1052885d9523c48093b6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularKernelClosedFormControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
