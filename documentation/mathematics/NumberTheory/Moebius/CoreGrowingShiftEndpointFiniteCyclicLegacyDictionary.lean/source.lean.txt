/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / IMPORT_CLOSURE_BLOCKED / NOT_KERNEL_AUDITED.
Issue: #967.

This file is the exact dictionary from the new Mathlib-only endpoint data
layer to the existing endpoint declarations.  It intentionally imports the
legacy summation-by-parts stack, whose current-main import closure has known
elaboration failures before this leaf.  Accordingly, the declarations below
are authored identities, not replay or audit claims.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointFiniteCyclicData
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The isolated modulus is definitionally the legacy doubled endpoint
modulus. -/
theorem coreGrowingShiftEndpointFiniteCyclicModulus_eq_legacy
    (j : ℕ) :
    coreGrowingShiftEndpointFiniteCyclicModulus j =
      coreGrowingShiftEndpointDoubledFourierModulus j := by
  rfl

/-- The isolated negative-phase character is definitionally the character
used by the endpoint summation-by-parts source. -/
theorem coreGrowingShiftEndpointFiniteCyclicNegativePhase_eq_legacy
    (j n : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointFiniteCyclicNegativePhase j t n =
      coreGrowingShiftEndpointTransverseNatCharacter j t n := by
  rfl

/-- The isolated multiplier is definitionally the legacy transverse
multiplier. -/
theorem coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_legacy
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointFiniteCyclicMultiplier j t =
      coreGrowingShiftEndpointTransverseMultiplier j t := by
  rfl

/-- The isolated circular distance is definitionally the legacy transverse
distance. -/
theorem coreGrowingShiftEndpointFiniteCyclicDistance_eq_legacy
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointFiniteCyclicDistance j t =
      coreGrowingShiftEndpointTransverseCircularDistance j t := by
  rfl

/-- The Mathlib-only Jordan theorem supplies the exact legacy
inverse-multiplier inequality once the legacy import closure is available. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance_from_minimal
    {j : ℕ}
    {t : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (ht : t ≠ 0) :
    ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (4 * (coreGrowingShiftEndpointTransverseCircularDistance j t : ℝ)) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_legacy,
    coreGrowingShiftEndpointFiniteCyclicDistance_eq_legacy,
    coreGrowingShiftEndpointFiniteCyclicModulus_eq_legacy] using
    coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance ht

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicModulus_eq_legacy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicNegativePhase_eq_legacy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance_from_minimal
