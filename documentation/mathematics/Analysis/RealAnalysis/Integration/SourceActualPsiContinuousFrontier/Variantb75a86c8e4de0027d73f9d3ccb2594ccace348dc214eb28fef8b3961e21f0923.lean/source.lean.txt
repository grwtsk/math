import SourceCancelledFactorialSectorBudget

/-!
The full actual arithmetic pairing after the proved factorial cancellation.
Actual Psi, the negative unit floor and both signed reciprocal cutoff moments
remain in one independently defined, genuinely integrable arithmetic density.
The entire early head and outside factorial moments are retained by full Abel.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPsiContinuousFrontier
open MeasureTheory Set
open scoped BigOperators
open SourceActualFactorialTailDecomposition SourceActualFactorialMellinTransport
open SourceActualFactorialJointCancellation SourceCancelledFactorialSectorBudget
open SourceStrictComplementaryAbel SourceStrictComplementaryLocalization
open SourceFullPositiveKappa SourceLeadingFullKappaReduction SourceFullDivisorLogInventory
open SourcePairing SourcePositiveSampling
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMobiusSplit EstimateMertensAbel
noncomputable section

/-- Below the first closed atom, the actual complementary cumulative is exactly zero. -/
theorem complementaryCumulative_zero_below_one (U : ℕ) {x : ℝ} (hx : x < 1) :
    complementaryCumulative U x = 0 := by
  simp [complementaryCumulative, Nat.floor_eq_zero.mpr hx, complementaryPlainCoefficient_zero]

/-- The closed unit atom is retained before measure-zero interval transport. -/
theorem complementaryCumulative_at_one (U : ℕ) : complementaryCumulative U 1 = -1 := by
  unfold complementaryCumulative
  rw [Nat.floor_one, show Finset.Icc 0 1 = {0, 1} by decide]
  simp [complementaryPlainCoefficient_zero, complementaryPlainCoefficient_one]

/-- The true positive-axis extension adds only the proven below-unit zero density. -/
theorem complementary_derivative_integrable_positive (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun x => complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) (Ioi (0 : ℝ)) := by
  have hl : IntegrableOn (fun x => complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) (Ioo (0 : ℝ) 1) := by
    apply integrableOn_zero.congr_fun
    · intro x hx
      dsimp only
      rw [complementaryCumulative_zero_below_one _ hx.2, zero_mul]
    · exact measurableSet_Ioo
  have hi : IntegrableOn (fun x => complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) (Ioc (0 : ℝ) 1) :=
    (integrableOn_Ioc_iff_integrableOn_Ioo).mpr hl
  have h := hi.union (complementary_derivative_integrable_Ioi hA)
  rw [Ioc_union_Ioi_eq_Ioi (by norm_num : (0 : ℝ) ≤ 1)] at h
  exact h

/-- Full L-B keeps the genuine head and the closed unit while extending its ordinary integral. -/
theorem literal_L_sub_plain_eq_positive_Abel (A : ℝ) (hA : 1 ≤ A) :
    literalOmegaComplementarySector A - plainInventory A =
      -(∫ x in Ioi (0 : ℝ), complementaryCumulative (vaughanCutoff A) x *
        deriv (plainProfile A 1) x) := by
  have hs := intervalIntegral.integral_interval_add_Ioi
    (complementary_derivative_integrable_positive A hA)
    (complementary_derivative_integrable_Ioi hA)
  have hz : (∫ x in 0..1, complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) = 0 := by
    rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1),
      integral_Ioc_eq_integral_Ioo]
    calc
      _ = ∫ _x in Ioo (0 : ℝ) 1, (0 : ℝ) := by
        apply setIntegral_congr_fun measurableSet_Ioo
        intro x hx
        dsimp only
        rw [complementaryCumulative_zero_below_one _ hx.2, zero_mul]
      _ = _ := by simp
  rw [hz, zero_add] at hs
  rw [literal_L_sub_plain_eq_full_Abel hA, hs]

/-- Independent genuine remaining arithmetic density, including the full pole-sector moments. -/
def actualPsiContinuousDensity (A x : ℝ) : ℝ :=
  (Chebyshev.psi x - (⌊x⌋₊ : ℝ) -
    x * (Real.log x - 1) * shortReciprocalMoebius (vaughanCutoff A) +
      x * shortLogReciprocalMoebius (vaughanCutoff A)) * deriv (plainProfile A 1) x

/-- Independent signed positive-axis pairing after analytic factorial cancellation. -/
def actualPsiContinuousPairing (A : ℝ) : ℝ :=
  -(∫ x in Ioi (0 : ℝ), actualPsiContinuousDensity A x)

private theorem actualPsiContinuousDensity_eq_difference {A x : ℝ} (hx : 0 < x) :
    actualPsiContinuousDensity A x =
      shortFactorialDefect (vaughanCutoff A) x *
          ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x) -
        (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2) +
          complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x := by
  rw [complementaryCumulative_eq_factorial_sectors (vaughanCutoff A) hx]
  unfold actualPsiContinuousDensity
  ring

/-- Genuine arithmetic-sector L1 follows from checked source identities and analytic F L1. -/
theorem actualPsiContinuousDensity_integrable (A : ℝ) (hA : 91 ≤ A) :
    IntegrableOn (actualPsiContinuousDensity A) (Ioi (0 : ℝ)) := by
  have hf : IntegrableOn (fun x => (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x *
      x ^ (-(3 : ℝ) / 2)) (Ioi (0 : ℝ)) := by
    change Integrable (fun x => (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x *
      x ^ (-(3 : ℝ) / 2)) (volume.restrict (Ioi (0 : ℝ)))
    simpa only [mul_assoc] using (shortFactorialMellin_integrable (vaughanCutoff A)).const_mul
      (1 / 2 : ℝ)
  apply (((actual_cancelled_factorial_density_integrable A hA).sub hf).add
    (complementary_derivative_integrable_positive A (by linarith))).congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  exact (actualPsiContinuousDensity_eq_difference hx).symm

/-- Complete leading source equals the remaining arithmetic pairing plus small F work. -/
theorem actual_leading_full_complement_eq_psi_continuous_add_factorial (A : ℝ) (hA : 91 ≤ A) :
    fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A +
      (literalOmegaComplementarySector A - plainInventory A) =
        actualPsiContinuousPairing A +
          (∫ x in Ioi (0 : ℝ), shortFactorialDefect (vaughanCutoff A) x *
            ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)) := by
  have hf : IntegrableOn (fun x => (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x *
      x ^ (-(3 : ℝ) / 2)) (Ioi (0 : ℝ)) := by
    change Integrable (fun x => (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x *
      x ^ (-(3 : ℝ) / 2)) (volume.restrict (Ioi (0 : ℝ)))
    simpa only [mul_assoc] using (shortFactorialMellin_integrable (vaughanCutoff A)).const_mul
      (1 / 2 : ℝ)
  have he : (∫ x in Ioi (0 : ℝ), actualPsiContinuousDensity A x) =
      (∫ x in Ioi (0 : ℝ), shortFactorialDefect (vaughanCutoff A) x *
          ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)) -
        (∫ x in Ioi (0 : ℝ), (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x *
          x ^ (-(3 : ℝ) / 2)) +
          (∫ x in Ioi (0 : ℝ), complementaryCumulative (vaughanCutoff A) x *
            deriv (plainProfile A 1) x) := by
    rw [integral_congr_ae (by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
      exact actualPsiContinuousDensity_eq_difference hx)]
    rw [integral_add (f := fun x => shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x) -
          (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2))
      ((actual_cancelled_factorial_density_integrable A hA).sub hf)
        (complementary_derivative_integrable_positive A (by linarith)),
      integral_sub (actual_cancelled_factorial_density_integrable A hA) hf]
  rw [literal_L_sub_plain_eq_positive_Abel A (by linarith)]
  unfold actualPsiContinuousPairing actualWeightedMoebiusHalfSum
  rw [fullKappa_signed_half_inventory_eq_factorial_integral]
  linarith

/-- A proved analytic error separates the complete leading source from this arithmetic pairing. -/
theorem actual_leading_full_complement_sub_psi_continuous_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A +
      (literalOmegaComplementarySector A - plainInventory A) - actualPsiContinuousPairing A| ≤
        (120 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
          1280 * Real.log (vaughanCutoff A : ℝ) + 3840) / A := by
  rw [actual_leading_full_complement_eq_psi_continuous_add_factorial A hA,
    add_sub_cancel_left]
  exact actual_cancelled_factorial_full_abs_le A hA

end
end FormalResearch.RiemannHypothesis.SourceActualPsiContinuousFrontier
