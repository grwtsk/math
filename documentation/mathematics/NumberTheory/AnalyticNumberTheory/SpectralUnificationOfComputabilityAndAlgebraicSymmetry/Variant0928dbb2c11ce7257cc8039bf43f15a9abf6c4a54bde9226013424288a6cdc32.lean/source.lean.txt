import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMovingFrontBound

/-!
# Exact localization of the unchanged signed residual

The proved compensated prefix tends to zero through real source scales.
Consequently the original residual and its actual moving tail differ by a
uniformly bounded vanishing error. The final equivalence records the precise
remaining arithmetic question and does not prove either boundedness premise.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateMovingFrontLocalization

open Filter
open EstimateMertensResidual EstimateMovingFrontTransport EstimateMovingFrontBound

noncomputable section

/-- The original residual differs from the actual signed moving tail by at most
`4160/3`, uniformly over every real source scale at least one. -/
theorem mertensResidual_sub_movingTail_abs_le_uniform (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A - sourceMovingTail A| ≤ 4160 / 3 := by
  rw [mertensResidual_eq_prefix_add_movingTail A hA, add_sub_cancel_right]
  exact sourcePrefixPairing_moving_abs_le_uniform A hA

/-- The endpoint-compensated moving prefix is negligible through all real scales. -/
theorem mertensResidual_sub_movingTail_tendsto_zero :
    Tendsto (fun A : ℝ ↦ mertensResidual A - sourceMovingTail A) atTop (nhds 0) := by
  apply sourcePrefixPairing_moving_tendsto_zero.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [mertensResidual_eq_prefix_add_movingTail A hA]
  ring

/-- Exact localization of the existing arithmetic hypothesis. The proved
uniform prefix error is added in both directions; neither premise is asserted. -/
theorem mertens_residual_tail_iff_moving_signed_tail :
    MertensResidualTailUpperBound ↔
      ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
        ∀ A : ℝ, R ≤ A → sourceMovingTail A ≤ D := by
  constructor
  · rintro ⟨D, hD, R, hR, hres⟩
    refine ⟨D + 4160 / 3, by positivity, R, hR, ?_⟩
    intro A hRA
    have heq := mertensResidual_eq_prefix_add_movingTail A (hR.trans hRA)
    have hb := (abs_le.mp (sourcePrefixPairing_moving_abs_le_uniform A (hR.trans hRA))).1
    linarith [hres A hRA]
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨D + 4160 / 3, by positivity, R, hR, ?_⟩
    intro A hRA
    have heq := mertensResidual_eq_prefix_add_movingTail A (hR.trans hRA)
    have hb := (abs_le.mp (sourcePrefixPairing_moving_abs_le_uniform A (hR.trans hRA))).2
    linarith [htail A hRA]

end
end EstimateMovingFrontLocalization
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
