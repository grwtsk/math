# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerGradedGainBudgetControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bd6fdbff2810b39bbf9e7644ccdefbf5ec24e8a` · SHA-256 `c065ad6db1e4af1396cc3bda5a35cbf1a89533f63d4c3d59ca089fefba9c5434`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerGradedGainBudget
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerGradedGainBudgetControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["graded smoothed-value gain requirement is 1-rho+beta/2",
   "Fejer boundary closure is equivalent to beta >= 2(1-rho)",
   "pure removal of square-root bandwidth loss leaves exponent rho",
   "subunit thresholds require additional arithmetic gain 1-rho",
   "boundary plus value closure forces total gain at least 2(1-rho)",
   "at rho=7/8 every corrected Fejer supplier needs total gain at least 1/4",
   "at rho=7/8 gain beyond bandwidth removal is at least 1/8",
   "corrected supplier consumes the rho-graded premise rather than the critical premise",
   "seven-eighths smoothed-value supplier remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerGradedGainBudgetControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=196035a5261af547db969826e3d9f55a1f2a24a447eaed465a256616ebc61451 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerGradedGainBudgetControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
