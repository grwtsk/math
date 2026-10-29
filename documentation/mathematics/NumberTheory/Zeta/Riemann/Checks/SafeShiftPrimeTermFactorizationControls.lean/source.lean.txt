/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftPrimeTermFactorization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftPrimeTermFactorizationControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem even_scale_centered
    (z : ZeroPoint) (e : PrimePowerEvent)
    (ha : zeroDefect z.1 = 0) :
    safeEvenDefectScale z e = 1 :=
  safeEvenDefectScale_eq_one_of_zeroDefect z e ha

theorem odd_scale_centered
    (z : ZeroPoint) (e : PrimePowerEvent)
    (ha : zeroDefect z.1 = 0) :
    safeOddDefectScale z e = 0 :=
  safeOddDefectScale_eq_zero_of_zeroDefect z e ha

end GRWTSK.RiemannHypothesis.Checks.SafeShiftPrimeTermFactorizationControls
