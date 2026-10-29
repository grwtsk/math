# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerMassOneReductionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ecf6ba63ccee3af15231b43310b3405f55ab8e8` · SHA-256 `bdb168931098746d1848382ba11c97f10fbc762abd8450f8f391fe5a272885fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMassOneReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMassOneReductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["period-4X mass one is reduced to finite Fourier-mode orthogonality",
   "zero mode sum is exactly 4X",
   "zero triangular coefficient is exactly one",
   "all nonzero support modes vanish under the orthogonality supplier",
   "remaining DFT theorem is a standard nontrivial-character sum on ZMod(4X)"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMassOneReductionControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb6c2cdc26d46bf787c9308463f5eb7b679a9786d984bff6979c9eab4dfc408a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMassOneReductionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
