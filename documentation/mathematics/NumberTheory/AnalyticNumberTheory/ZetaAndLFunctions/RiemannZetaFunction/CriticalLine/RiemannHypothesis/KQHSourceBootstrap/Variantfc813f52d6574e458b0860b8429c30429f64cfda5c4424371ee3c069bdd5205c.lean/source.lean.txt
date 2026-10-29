import FormalResearch.RiemannHypothesis.KQHBootstrap
import FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction

/-!
# Finite-horizon boundedness and the original nonaffine-source consumer

The crude finite-range bound is unconditional and keeps every prime power. Its exponential
dependence on the horizon cannot close the estimate. The horizon-independent square-root
inequality remains an explicit arithmetic premise, while its conditional return uses the
existing all-real consumer without changing its finite prefix or source.

Direction and evaluation: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.KQHSourceBootstrap

open KQHBootstrap SourcePairing SourceMangoldtAbel SourceKapitzaReconstruction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateCorrelation EstimatePrimeSmoothDefect
open EstimateMertensResidual
open SourceContinuousHalfEnergy SourceFirstPrimeAbel

theorem chebyshevPrimePower_nonneg (x : ℝ) : 0 ≤ chebyshevPrimePower x := by
  exact Finset.sum_nonneg (fun n _ => ArithmeticFunction.vonMangoldt_nonneg (n := n))

theorem chebyshevPrimePower_mono {x y : ℝ} (hxy : x ≤ y) :
    chebyshevPrimePower x ≤ chebyshevPrimePower y := by
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · exact Finset.Icc_subset_Icc le_rfl (Nat.floor_mono hxy)
  · intro n _ _
    exact ArithmeticFunction.vonMangoldt_nonneg (n := n)

theorem normalizedPsiError_abs_le_on_interval {s T : ℝ}
    (hs : 0 ≤ s) (hsT : s ≤ 2 * T) :
    |normalizedPsiError s| ≤ chebyshevPrimePower (Real.exp (2 * T)) + 1 := by
  have hp := chebyshevPrimePower_nonneg (Real.exp s)
  have he : Real.exp (-s) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hm := chebyshevPrimePower_mono (Real.exp_le_exp.mpr hsT)
  rw [normalizedPsiError_eq_prefix]
  calc
    _ ≤ |Real.exp (-s) * chebyshevPrimePower (Real.exp s)| + |(1 : ℝ)| := abs_sub _ _
    _ = Real.exp (-s) * chebyshevPrimePower (Real.exp s) + 1 := by
      rw [abs_of_nonneg (mul_nonneg (Real.exp_pos _).le hp)]
      norm_num
    _ ≤ chebyshevPrimePower (Real.exp s) + 1 := by
      nlinarith [mul_le_mul_of_nonneg_right he hp]
    _ ≤ _ := by linarith

/-- Every signed correlation coefficient is bounded before any finite supremum is used. -/
theorem residual_abs_le_chebyshev (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A| ≤ chebyshevPrimePower (Real.exp (2 * A)) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  change (∑ n ∈ primePowerInventory (2 * A),
    |ArithmeticFunction.vonMangoldt n *
      exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n)|) ≤
    ∑ n ∈ primePowerInventory (2 * A), ArithmeticFunction.vonMangoldt n
  apply Finset.sum_le_sum
  intro n hn
  have hnlog := (mangoldtInventory_log_bounds (2 * A) n hn).1
  have he : Real.exp (-Real.log (n : ℝ) / 2) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by linarith)
  have hc := actual_correlation_abs_le_one A (Real.log n) hA
  have hm := ArithmeticFunction.vonMangoldt_nonneg (n := n)
  unfold exponentialTest
  rw [abs_mul, abs_mul, abs_of_nonneg hm, abs_of_pos (Real.exp_pos _)]
  rw [← mul_assoc]
  calc
    _ ≤ ArithmeticFunction.vonMangoldt n * Real.exp (-Real.log (n : ℝ) / 2) * 1 :=
      mul_le_mul_of_nonneg_left hc (mul_nonneg hm (Real.exp_pos _).le)
    _ ≤ ArithmeticFunction.vonMangoldt n := by
      simpa using mul_le_mul_of_nonneg_left he hm

def finiteSourceBudget (T : ℝ) : ℝ :=
  (4 * T + 14) * (chebyshevPrimePower (Real.exp (2 * T)) + 1)

/-- Finite boundedness uses the actual endpoint samples, with no PNT provider assumed. -/
theorem nonaffineWork_le_finiteSourceBudget {A T : ℝ} (hA : 1 ≤ A) (hAT : A ≤ T) :
    nonaffineWork A ≤ finiteSourceBudget T := by
  let K := chebyshevPrimePower (Real.exp (2 * T)) + 1
  have hK : 0 ≤ K := by
    have hp := chebyshevPrimePower_nonneg (Real.exp (2 * T))
    dsimp [K]
    linarith
  have hp : |endpointValue A| ≤ K :=
    normalizedPsiError_abs_le_on_interval (by linarith) (by linarith)
  have hq : |normalizedPsiError (2 * A - 1)| ≤ K :=
    normalizedPsiError_abs_le_on_interval (by linarith) (by linarith)
  have hb : |endpointSlope A| ≤ 2 * K := by
    change |normalizedPsiError (2 * A - 1) - normalizedPsiError (2 * A)| ≤ 2 * K
    have hp₀ : |normalizedPsiError (2 * A)| ≤ K := hp
    exact (abs_sub _ _).trans (by linarith)
  have h₀ := kernelMomentZero_abs_le_one A hA
  have h₁ := kernelMomentOne_abs_le A hA
  have ht : |trendValue A| ≤ (4 * T + 13) * K := by
    have hx : |endpointValue A * kernelMomentZero A| ≤ K := by
      rw [abs_mul]
      exact (mul_le_mul hp h₀ (abs_nonneg _) hK).trans_eq (mul_one _)
    have hy : |endpointSlope A * kernelMomentOne A| ≤ 2 * K * (2 * A + 6) := by
      rw [abs_mul]
      exact mul_le_mul hb h₁ (abs_nonneg _) (by positivity)
    unfold trendValue
    apply (abs_add_le _ _).trans
    have hKT := mul_le_mul_of_nonneg_right hAT hK
    nlinarith
  have hr : mertensResidual A ≤ K - 1 := by
    have hraw := (le_abs_self (mertensResidual A)).trans (residual_abs_le_chebyshev A hA)
    have hm := chebyshevPrimePower_mono (Real.exp_le_exp.mpr (by linarith : 2 * A ≤ 2 * T))
    dsimp [K]
    linarith
  have hd : 0 ≤ continuousDefect A := by unfold continuousDefect; positivity
  have he := mertensResidual_eq_defect_trend_nonaffine A hA
  have htlow := (abs_le.mp ht).1
  unfold finiteSourceBudget
  dsimp [K] at hr htlow
  nlinarith

theorem nonaffine_image_bddAbove {R T : ℝ} (hR : 1 ≤ R) :
    BddAbove (nonaffineWork '' Set.Icc R T) := by
  apply image_bddAbove_of_upper_bound (F := finiteSourceBudget T)
  intro A hRA hAT
  exact nonaffineWork_le_finiteSourceBudget (hR.trans hRA) hAT

/-- Only the independent closing inequality and trend provider remain in the exact #16 return. -/
theorem original_lower_of_native_bootstrap (R Rε C₀ C₁ ε : ℝ)
    (hR : 1 ≤ R) (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁)
    (hclose : ∀ T : ℝ, R ≤ T →
      finiteHorizon nonaffineWork R T ≤
        C₀ + C₁ * Real.sqrt (finiteHorizon nonaffineWork R T))
    (htrend : ∀ A : ℝ, Rε ≤ A → |trendValue A| ≤ ε) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor (consumerRadius R Rε))
        (archimedeanMultiplier 0 + 2 - 2 * closingBound C₀ C₁ - 2 * ε -
          2 * continuousDefect (consumerRadius R Rε)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply original_lower_of_separate_nonaffine_caps
  · exact uniform_cap_of_finite_horizon_sqrt hC₀ hC₁
      (fun _ _ => nonaffine_image_bddAbove hR) hclose
  · exact htrend

theorem estimate_of_native_bootstrap (R Rε C₀ C₁ ε : ℝ)
    (hR : 1 ≤ R) (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁)
    (hclose : ∀ T : ℝ, R ≤ T →
      finiteHorizon nonaffineWork R T ≤
        C₀ + C₁ * Real.sqrt (finiteHorizon nonaffineWork R T))
    (htrend : ∀ A : ℝ, Rε ≤ A → |trendValue A| ≤ ε) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_native_bootstrap R Rε C₀ C₁ ε hR hC₀ hC₁ hclose htrend⟩

/-- The restricted compression error is `r-I`, so its direct return does not
pay for the affine trend a second time. Its uniform scalar cap is still a premise. -/
theorem original_lower_of_compensated_residual_cap (R D : ℝ) (hR : 1 ≤ R)
    (hcap : ∀ A : ℝ, R ≤ A → mertensResidual A - criticalContinuousMoment A ≤ D) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R)
        (archimedeanMultiplier 0 + 4 - 2 * D - 2 * continuousDefect R) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hi := one_add_continuous_eq_defect A hA
    have hd := continuousDefect_antitone (by linarith : 0 ≤ R) hRA
    have hr := hcap A hRA
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    linarith
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

theorem estimate_of_compensated_residual_cap (R D : ℝ) (hR : 1 ≤ R)
    (hcap : ∀ A : ℝ, R ≤ A → mertensResidual A - criticalContinuousMoment A ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_compensated_residual_cap R D hR hcap⟩

/-- The same complete signed scalar gives the nonaffine cap after paying for
the actual trend, with its sign retained. -/
theorem nonaffine_le_of_compensated_residual_cap (A D ε : ℝ) (hA : 1 ≤ A)
    (hcap : mertensResidual A - criticalContinuousMoment A ≤ D)
    (htrend : |trendValue A| ≤ ε) : nonaffineWork A ≤ D - 1 + ε := by
  have he := mertensResidual_eq_affine_nonaffine A hA
  have ht := (abs_le.mp htrend).1
  linarith

end FormalResearch.RiemannHypothesis.KQHSourceBootstrap
