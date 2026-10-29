/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDoubleSum
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDoubleSumControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["inner cyclic sum reindexes by y -> r=x-y",
   "translated point simplifies to x-r",
   "finite x/r sums are swapped exactly",
   "kernel factor pulls out of the inner x-sum",
   "CyclicConvolutionDoubleSumReindexingClaim is discharged",
   "CyclicConvolutionL1ByTranslationClaim is discharged",
   "remaining universal supplier is interval translation cardinality only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDoubleSumControls
