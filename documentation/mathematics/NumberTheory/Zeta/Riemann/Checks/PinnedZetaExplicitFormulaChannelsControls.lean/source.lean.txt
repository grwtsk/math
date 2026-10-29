/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedZetaExplicitFormulaChannels
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedZetaExplicitFormulaChannelsControls

open GRWTSK.RiemannHypothesis

theorem trivial_zero_minus_two :
    riemannZeta (-2 : ℂ) = 0 := by
  simpa using pinned_trivial_zero 0

theorem completed_FE_at_two :
    completedRiemannZeta (1 - (2 : ℂ)) =
      completedRiemannZeta 2 :=
  pinned_completed_functional_equation 2

/-- The channel bundle is inhabited without supplying a global explicit-formula
summation theorem. -/
def knownChannels : KnownZetaExplicitFormulaChannels :=
  pinnedKnownZetaExplicitFormulaChannels

def globalSummationStatus : String :=
  "OPEN: contour/test-function identity + summation order + endpoint + tail"

end GRWTSK.RiemannHypothesis.Checks.PinnedZetaExplicitFormulaChannelsControls
