/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShellCancellation
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaShellCancellationControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["thetaError(2u) = thetaError(u) + shell(u)",
   "rho=7/8: inherited error + new shell must cancel to 3/4 scale",
   "rho=3/4: inherited error + new shell must cancel to 1/2 scale",
   "no shell-cancellation estimate is supplied by this control module"]

example (u : ℝ) :
    thetaError (2 * u) =
      thetaError u + thetaShellError u :=
  thetaError_two_mul u

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaShellCancellationControls
