/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenPolarizedReadout
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenPolarizedReadoutControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.ComplexReadout
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem every_test_action_has_growing_fourier_reconstruction
    {X : ℕ} (hX : 0 < X)
    (φ : ComplexTest) :
    Tendsto (fourierReconstructedActionHead X φ)
      atTop (𝓝 (action X φ.value)) :=
  fourierReconstructedActionHead_tendsto hX φ

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenPolarizedReadoutControls
