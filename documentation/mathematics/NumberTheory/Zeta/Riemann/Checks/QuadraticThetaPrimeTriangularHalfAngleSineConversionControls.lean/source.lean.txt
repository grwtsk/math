/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHalfAngleSineConversion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHalfAngleSineConversionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["exp(2ix)-1 half-angle identity is source-written",
   "geometric numerator and denominator are rewritten through sine factors",
   "geometric block becomes phase times sine ratio off-boundary",
   "remaining sine-norm step is only phase times conjugate phase equals one"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHalfAngleSineConversionControls
