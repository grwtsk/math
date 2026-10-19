import SourceCenteredMobiusNorm

/-! Exact inventory, centering and scalar-budget scope fixtures. -/

set_option autoImplicit false
noncomputable section
namespace CenteredMobiusNormFixtures

open MeasureTheory Set Filter
open SourcePairing
open FormalResearch.RiemannHypothesis
open SourceHankelReflection SourceVaughanHankel SourceCenteredMobiusNorm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering

theorem zero_scale_excluded : ¬ (1 ≤ (0 : ℝ)) := by norm_num

theorem unit_cutoff_actual : vaughanCutoff (1 : ℝ) = 1 := by
  norm_num [vaughanCutoff]

theorem scale_two_actual_bound : ‖centeredMobiusReflectedL2 2 (by norm_num)‖ ≤ 12 := by
  simpa using centeredMobiusReflectedL2_norm_le_scale_add_ten 2 (by norm_num)

theorem scale_seven_actual_bound : ‖centeredMobiusReflectedL2 7 (by norm_num)‖ ≤ 17 := by
  simpa using centeredMobiusReflectedL2_norm_le_scale_add_ten 7 (by norm_num)

theorem lower_endpoint_excluded (A : ℝ) : vaughanCutoff A ∉ longInventory A := by
  simp [longInventory]

theorem upper_endpoint_closed (A : ℝ) (h : vaughanCutoff A < sourceKernelCutoff A) :
    sourceKernelCutoff A ∈ longInventory A := by
  exact Finset.mem_Ioc.mpr ⟨h, le_rfl⟩

theorem empty_row_actual (A : ℝ) (hp : 0 < A) (U : ℕ) (c : ℕ → ℝ) :
    reflectedL2 A hp (Finset.Ioc U U) c = 0 := by
  apply Lp.ext
  filter_upwards [(reflectedProfile_memLp hp (Finset.Ioc U U) c).coeFn_toLp,
    Lp.coeFn_zero (E := ℝ) (p := 2) (μ := volume)] with x hq hz
  rw [hq, hz]
  simp [reflectedProfile]

theorem one_upper_atom (A : ℝ) (U : ℕ) (c : ℕ → ℝ) (x : ℝ) :
    reflectedProfile A (Finset.Ioc U (U + 1)) c x =
      c (U + 1) * normalizedTest explicitSecondDerivative A (x + Real.log ((U + 1 : ℕ) : ℝ)) := by
  simp [reflectedProfile, Nat.Ioc_succ_singleton]

theorem lower_prefix_zero (U : ℕ) :
    (∑ n ∈ Finset.Ioc U U, centeredBeta U n) = 0 := by simp

theorem separately_cast_quotient_discrepancy : floorDiscrepancy 2 4 3 = (1 : ℝ) / 3 := by
  norm_num [floorDiscrepancy]

theorem centering_not_dropped (U n : ℕ) :
    EstimateVaughanIdentity.beta U n = centeredBeta U n - alpha U :=
  beta_eq_centered_sub_alpha U n

theorem actual_reflection_orientation (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    centeredMobiusReflectedProfile A x = centeredMobiusForwardProfile A (-x) :=
  centeredMobiusReflectedProfile_eq_reflection A hA x

theorem log_ratio_one : Real.log (1 : ℝ) / Real.sqrt 1 = 0 := by simp

theorem terminal_correction_retained (u a rL rN : ℝ) :
    u * rN + u * (1 + 10 / a) * (rL - rN) =
      u * rL * (1 + 10 / a) - 10 * u / a * rN := by ring

end CenteredMobiusNormFixtures
