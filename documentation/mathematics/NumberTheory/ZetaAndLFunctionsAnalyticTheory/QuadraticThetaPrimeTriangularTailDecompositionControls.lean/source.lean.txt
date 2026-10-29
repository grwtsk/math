/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularTailDecomposition
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularTailDecompositionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["strict compact boundary localization is too strong for a global triangular kernel",
   "correct error model is near-boundary plus tail leakage",
   "near-boundary term is <= ceil(X/N)*log(4X)",
   "only the global tail leakage estimate remains analytic",
   "at beta=1/3 the near-boundary power is 2/3"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularTailDecompositionControls
