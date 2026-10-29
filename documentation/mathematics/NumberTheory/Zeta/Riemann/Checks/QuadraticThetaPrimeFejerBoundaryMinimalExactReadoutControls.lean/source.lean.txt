/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerBoundaryMinimalExactReadout
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerBoundaryMinimalExactReadoutControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["the concrete boundary-minimal cutoff schedule is already source-proved",
   "an exact X^(3/2) log^4 correlation bound gives an X^(3/4) log^2 smoothed-value bound",
   "the square-root extraction uses the exact weighted prime-atom correlation identity",
   "the ceiling cutoff satisfies X/N <= X^(3/4)",
   "on dyadic scales 1+log(2X) <= 4 log X",
   "on dyadic scales 1+log(4X) <= 5 log X",
   "the corrected Fejer boundary error is at most 80 X^(3/4) log(X)^2",
   "the sharp discrepancy is the smoothed value plus its actual approximation error",
   "the deterministic exact-correlation readout is source-proved",
   "the exact seven-eighths weighted prime-atom correlation theorem is the sole remaining supplier",
   "no threshold descent or Riemann Hypothesis result is supplied"]

theorem deterministicExactReadoutClosed :
    SevenEighthsBoundaryMinimalExactCorrelationReadout :=
  sevenEighthsBoundaryMinimalExactCorrelationReadout

def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalExactCorrelationBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerBoundaryMinimalExactReadoutControls
