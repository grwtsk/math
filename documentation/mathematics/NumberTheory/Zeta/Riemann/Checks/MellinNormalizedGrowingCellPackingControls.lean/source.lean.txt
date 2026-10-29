/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedGrowingCellPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.MellinNormalizedGrowingCellPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem growing_stage_nonnegative (z : ZeroPoint) (N : ℕ) :
    0 ≤ safeActionCumulativeValue z N :=
  safeActionCumulativeValue_nonnegative z N

theorem growing_stage_monotone (z : ZeroPoint) :
    Monotone (safeActionCumulativeValue z) :=
  safeActionCumulativeValue_mono z

end GRWTSK.RiemannHypothesis.Checks.MellinNormalizedGrowingCellPackingControls
