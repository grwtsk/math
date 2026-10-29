/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftEnvelope
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftEnvelopeControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem plus_block_has_source_envelope (z : ZeroPoint) (j : ℕ) :
    ‖safePlusDyadicBlock z j‖ ≤ safeDyadicEnergyEnvelope z j :=
  safePlusDyadicBlock_norm_le z j

theorem minus_block_has_source_envelope (z : ZeroPoint) (j : ℕ) :
    ‖safeMinusDyadicBlock z j‖ ≤ safeDyadicEnergyEnvelope z j :=
  safeMinusDyadicBlock_norm_le z j

end GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftEnvelopeControls
