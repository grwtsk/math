/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenCoordinateEnergyCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenCoordinateEnergyCriterionControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem explicit_coordinate_bound_is_original_supplier :
    AllDyadicArithmeticFourierCoordinateBound ↔ AllDyadicEnergyBound :=
  allDyadicArithmeticFourierCoordinateBound_iff_energy

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenCoordinateEnergyCriterionControls
