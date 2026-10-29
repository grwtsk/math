# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularSampledKernelControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0b188dbfb8c942ffb7d15b11db1d9793c656768` · SHA-256 `63aa1cfcf10a0ed349edafa98964d6e8f24f577a2a42c6b0becc6a6f0c4720ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularSampledKernel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularSampledKernelControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["explicit non-existential 1/(4*N*t^2) kernel decay is exposed",
   "sampled kernel uses natural 1/X convolution normalization",
   "for 1<=d<=X/2 sampled kernel is <= X/(4*N*d^2)",
   "square-decay is stronger than the earlier harmonic-tail heuristic",
   "remaining arithmetic step is identification of prime-prefix smoothing error with sampled-kernel tail"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularSampledKernelControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=523088e526e69d5d820fe10a6abf5c90f277b51b598a9db05d6f73a12d42c7b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularSampledKernelControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
