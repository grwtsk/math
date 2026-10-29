/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftedVonMangoldtPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftedVonMangoldtPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem safe_plus_stays_right_of_one (z : ZeroPoint) :
    1 < (safeShiftPlus z.1).re :=
  safeShiftPlus_one_lt_re z

theorem safe_minus_stays_right_of_one (z : ZeroPoint) :
    1 < (safeShiftMinus z.1).re :=
  safeShiftMinus_one_lt_re z

theorem safe_shift_packing_positive (z : ZeroPoint) (n : ℕ) :
    0 ≤ (safeShiftPackingSequence z).valueAt n :=
  safeShiftPackingSequence_valueAt_nonnegative z n

end GRWTSK.RiemannHypothesis.Checks.SafeShiftedVonMangoldtPackingControls
