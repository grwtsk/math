# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerDiscreteReproductionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aa4227833e76bd897ee4215cc20f27d04c5b584` · SHA-256 `36e84144d3559ff859c099508193b67340a30fc360dbd7123c962b2566251aff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerDiscreteReproduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerDiscreteReproductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["sharp-step comparison requires discrete sampled-kernel mass one",
   "mass one requires alias-free cutoff N < 4X",
   "nonzero triangular frequencies are proved nonzero modulo 4X in that regime",
   "zero Fourier coefficient is exactly one",
   "remaining finite-DFT suppliers are mass-one and sample nonnegativity",
   "accepted comparison interface now includes the cutoff regime"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerDiscreteReproductionControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9e49a96c8bb81046028bbfcf2dfec92dbf07d028c5fd162e4210764dd9dd191 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerDiscreteReproductionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
