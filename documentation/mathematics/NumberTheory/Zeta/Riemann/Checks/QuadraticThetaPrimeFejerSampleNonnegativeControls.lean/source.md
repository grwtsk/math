# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerSampleNonnegativeControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `929d4c31621b26331a6af180f67fa6ae6110bb17` · SHA-256 `0957f6f90ab58b94e9a38cefb8fd9d6d87a8f0e799f6d862fba731dc4aa6b7f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerSampleNonnegative
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerSampleNonnegativeControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["autocorrelation identity makes the triangular kernel globally real/nonnegative",
   "period-4X signed lattice samples are nonnegative at every residue",
   "zero residue requires no special off-boundary argument",
   "PeriodFourXSampledKernelNonnegativeClaim is discharged",
   "discrete reproduction is reduced to mass-one only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerSampleNonnegativeControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c9c4b67d09ba11b4325b5967ecfc81766bf835149ba3e69c63ded8d17d27cca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerSampleNonnegativeControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
