/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftPackingObstruction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftPackingObstructionControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem lower_mass_packet_impossible_at_offline_zero
    (z : ZeroPoint) (ha : zeroDefect z.1 ≠ 0) :
    ¬ OffLineDyadicCommonLowerMassAtZero z ha :=
  no_offLineDyadicCommonLowerMassAtZero z ha

end GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftPackingObstructionControls
