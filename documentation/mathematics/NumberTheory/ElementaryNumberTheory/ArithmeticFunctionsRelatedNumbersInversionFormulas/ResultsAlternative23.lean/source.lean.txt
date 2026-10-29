import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedBetaInventory

/-!
# Deterministic finite variation budget after signed beta Abelization

The bounds below concern a positive derived budget, not growth of the signed
covariance or residual. Source variation is retained literally before coarsening.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateWeightedBetaVariation

open MeasureTheory Set ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateCorrelation EstimateBetaCentering
open EstimateWeightedBetaKernel EstimateWeightedBetaAbel EstimateWeightedBetaInventory

noncomputable section

/-- The existing elementary bound on the exact anchored centered prefix. -/
def betaPrefixBudget (U : ℕ) : ℝ := ∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ)|

/-- Exact finite source variation after extracting only the inverse square-root m factor. -/
def sourceVariationCost (A : ℝ) (m L H : ℕ) : ℝ :=
  |sourceCorrelation explicitSecondDerivative A (Real.log ((m : ℝ)*(H : ℝ)))| /
    Real.sqrt (H : ℝ) +
  ∫ x in Ioc (L : ℝ) (H : ℝ),
    |correlationSlope A (Real.log ((m : ℝ)*x))|/(x*Real.sqrt x)

/-- Unit floor discrepancies bound only the unweighted prefix, not its covariance. -/
theorem discrepancyPrefix_abs_le (U L : ℕ) (x : ℝ) (hU : 1 ≤ U)
    (hUL : U ≤ L) (hLx : (L : ℝ) ≤ x) :
    |discrepancyPrefix U L x| ≤ betaPrefixBudget U := by
  have h := anchored_prefix_eq_discrepancy U L x hU hUL hLx
  rw [anchored_prefix_eq_interval] at h
  rw [← neg_eq_iff_eq_neg.mpr h, abs_neg]
  exact centeredBeta_interval_abs_le U L _ hU hUL
    ((Nat.le_floor_iff ((Nat.cast_nonneg L).trans hLx)).2 hLx)

/-- The actual finite signed discrepancy kernel is integrable before integral estimates. -/
theorem discrepancyKernel_integrable (A : ℝ) (m U L H : ℕ) (hA : 1 ≤ A)
    (hm : 1 ≤ m) (hU : 1 ≤ U) (hUL : U ≤ L) :
    IntegrableOn (fun x ↦ deriv (rowWeight A m) x * discrepancyPrefix U L x)
      (Icc (L : ℝ) (H : ℝ)) := by
  have hL0 : 0 < (L : ℝ) := by exact_mod_cast (by omega : 0 < L)
  have hi := rowWeight_deriv_integrable A m (by linarith) hm (L : ℝ) H hL0
  have hg := integrableOn_mul_sum_Icc (m := 0)
    (anchoredCenteredBeta U L) (Nat.cast_nonneg L) hi
  apply hg.neg.congr
  filter_upwards [ae_restrict_mem measurableSet_Icc] with x hx
  change -(deriv (rowWeight A m) x *
    (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, anchoredCenteredBeta U L n)) =
      deriv (rowWeight A m) x * discrepancyPrefix U L x
  rw [anchored_prefix_eq_discrepancy U L x hU hUL hx.1]
  ring

/-- The sharp deterministic prefix-times-literal-variation bound at finite endpoints. -/
theorem weightedCenteredInterval_abs_le_variation (A : ℝ) (m U L H : ℕ) (hA : 1 ≤ A)
    (hm : 1 ≤ m) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |weightedCenteredInterval A m U L H| ≤ betaPrefixBudget U *
      (|rowWeight A m (H : ℝ)| +
        ∫ x in Ioc (L : ℝ) (H : ℝ), |deriv (rowWeight A m) x|) := by
  have hL0 : 0 < (L : ℝ) := by exact_mod_cast (by omega : 0 < L)
  have hi : IntegrableOn (fun x ↦ |deriv (rowWeight A m) x|) (Icc (L : ℝ) (H : ℝ)) :=
    (rowWeight_deriv_integrable A m (by linarith) hm (L : ℝ) H hL0).abs
  have hg : IntegrableOn
      (fun x ↦ |deriv (rowWeight A m) x * discrepancyPrefix U L x|)
      (Icc (L : ℝ) (H : ℝ)) := (discrepancyKernel_integrable A m U L H hA hm hU hUL).abs
  have hb : 0 ≤ betaPrefixBudget U := Finset.sum_nonneg (fun _ _ ↦ abs_nonneg _)
  have hj : |∫ x in Ioc (L : ℝ) (H : ℝ),
      deriv (rowWeight A m) x * discrepancyPrefix U L x| ≤
      betaPrefixBudget U * ∫ x in Ioc (L : ℝ) (H : ℝ), |deriv (rowWeight A m) x| := by
    calc
      _ ≤ ∫ x in Ioc (L : ℝ) (H : ℝ),
          |deriv (rowWeight A m) x * discrepancyPrefix U L x| := by
        simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm
          (μ := volume.restrict (Ioc (L : ℝ) (H : ℝ)))
          (fun x ↦ deriv (rowWeight A m) x * discrepancyPrefix U L x)
      _ ≤ ∫ x in Ioc (L : ℝ) (H : ℝ), betaPrefixBudget U * |deriv (rowWeight A m) x| := by
        apply integral_mono_ae (hg.mono_set Ioc_subset_Icc_self)
          ((hi.mono_set Ioc_subset_Icc_self).const_mul _)
        filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
        rw [abs_mul]
        nlinarith [mul_le_mul_of_nonneg_left
          (discrepancyPrefix_abs_le U L x hU hUL hx.1.le) (abs_nonneg (deriv (rowWeight A m) x))]
      _ = _ := integral_const_mul _ _
  rw [weightedCenteredInterval_eq_abel A m U L H hA hm hU hUL hLH]
  unfold abelDiscrepancyMoment
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_neg]
  have hEnd := mul_le_mul_of_nonneg_left
    (discrepancyPrefix_abs_le U L (H : ℝ) hU hUL (by exact_mod_cast hLH))
    (abs_nonneg (rowWeight A m (H : ℝ)))
  nlinarith

/-- The same deterministic bound displays the exact extracted inverse square-root m scale. -/
theorem weightedCenteredInterval_abs_le_scaled_variation (A : ℝ) (m U L H : ℕ)
    (hA : 1 ≤ A) (hm : 1 ≤ m) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |weightedCenteredInterval A m U L H| ≤
      betaPrefixBudget U / Real.sqrt (m : ℝ) * sourceVariationCost A m L H := by
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have hL0 : 0 < (L : ℝ) := by exact_mod_cast (by omega : 0 < L)
  have hH0 : 0 < (H : ℝ) := hL0.trans_le (by exact_mod_cast hLH)
  have he : |rowWeight A m (H : ℝ)| =
      1/Real.sqrt (m : ℝ) *
        (|sourceCorrelation explicitSecondDerivative A (Real.log ((m : ℝ)*(H : ℝ)))| /
          Real.sqrt (H : ℝ)) := by
    unfold rowWeight EstimatePlainKernel.sourcePlainWeight
    rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _), Real.sqrt_mul hm0.le]
    ring
  have hi : (∫ x in Ioc (L : ℝ) (H : ℝ), |deriv (rowWeight A m) x|) =
      1/Real.sqrt (m : ℝ) *
        ∫ x in Ioc (L : ℝ) (H : ℝ),
          |correlationSlope A (Real.log ((m : ℝ)*x))|/(x*Real.sqrt x) := by
    rw [← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    have hx0 : 0 < x := hL0.trans hx.1
    dsimp only
    rw [rowWeight_deriv A x m (by linarith) hm hx0, abs_div,
      abs_of_nonneg (by positivity : 0 ≤ x*Real.sqrt ((m : ℝ)*x)), Real.sqrt_mul hm0.le]
    ring
  have hb := weightedCenteredInterval_abs_le_variation A m U L H hA hm hU hUL hLH
  rw [he, hi] at hb
  simpa only [sourceVariationCost, div_eq_mul_inv, mul_add, mul_assoc, one_mul] using hb

end
end EstimateWeightedBetaVariation
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
