/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierFrame
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierFrameControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem Fourier_heads_capture_green_energy
    (X : ℕ) :
    Tendsto (greenFourierHeadEnergy X) atTop (𝓝 (greenEnergy X)) :=
  greenFourierHeadEnergy_tendsto X

theorem full_Fourier_stage_captures_augmented_energy
    (X : ℕ) :
    Tendsto (fullGreenFourierStage X) atTop (𝓝 (augmentedEnergy X)) :=
  fullGreenFourierStage_tendsto X

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierFrameControls
