-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PoleReducedCountIntervalIntegrable.Variantbcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PoleReducedCountIntervalIntegrable.Variantbcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea","mathematical_subject":"Analysis.Integration","original_sha256":"bcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/bcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePoleReducedWeight
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCriticalPrimeErrorAbel

/-!
# Finite pole transfer and exact collapse to the original prime moment

The closed-right prime inventory and the literal prime-two lower endpoint are
retained. This is finite signed algebra, not an arithmetic tail estimate.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PoleReducedCountIntervalIntegrable.Variantbcdf5398ad1e80a0e4a9259028cf5654b2f80a80e3f5885ce3e9104cc356f6ea

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePoleReducedDiscrepancy

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity PrimePowerDescent
open EstimatePoleReducedCorrelation EstimatePoleReducedWeight
open EstimateCriticalPrimeError EstimateCriticalPrimeErrorAbel EstimatePrimeSmoothDefect

noncomputable section

/-- The finite prime-step count times F is genuinely interval-integrable. -/
theorem poleReduced_count_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t)
      volume lowerEndpoint (2 * A) := by
  simpa only [poleReducedPrimitive] using chebyshev_mul_deriv_intervalIntegrable (2 * A)
    (source_interval_order A hA) (deriv (weightedPoleCorrelation A))
    (weightedPoleCorrelation_contDiff A (by linarith)).deriv'

/-- The corresponding signed centered-error product is finite-integrable as well. -/
theorem poleReduced_error_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ chebyshevError (Real.exp t) * poleReducedPrimitive A t)
      volume lowerEndpoint (2 * A) := by
  have he : Continuous (fun t ↦ Real.exp t * poleReducedPrimitive A t) :=
    Real.continuous_exp.mul (poleReducedPrimitive_contDiff A (by linarith)).continuous
  simpa only [chebyshevError, sub_mul] using
    (poleReduced_count_intervalIntegrable A hA).sub (he.intervalIntegrable _ _)

/-- Finite signed pole transfer, with the original +2F(log 2) atom retained. -/
theorem criticalSignedChebyshevIntegral_eq_poleReducedDiscrepancy (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedChebyshevIntegral A =
      2 * poleReducedPrimitive A lowerEndpoint -
        ∑ n ∈ primePowerInventory (2 * A),
          ArithmeticFunction.vonMangoldt n * poleReducedPrimitive A (Real.log n) +
      ∫ t in lowerEndpoint..2 * A,
        chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t := by
  have hA0 : 0 < A := by linarith
  have hF := poleReducedPrimitive_contDiff A hA0
  have he : Continuous (fun t ↦ Real.exp t * poleReducedPrimitive A t) :=
    Real.continuous_exp.mul hF.continuous
  have he' : Continuous (fun t ↦ Real.exp t * deriv (poleReducedPrimitive A) t) :=
    Real.continuous_exp.mul hF.continuous_deriv_one
  have hi' : IntervalIntegrable
      (fun t ↦ chebyshevError (Real.exp t) * deriv (poleReducedPrimitive A) t)
      volume lowerEndpoint (2 * A) := by
    simpa only [chebyshevError, sub_mul] using
      (chebyshev_mul_deriv_intervalIntegrable (2 * A) (source_interval_order A hA)
        (poleReducedPrimitive A) hF).sub (he'.intervalIntegrable _ _)
  have hi : (∫ t in lowerEndpoint..2 * A,
      chebyshevError (Real.exp t) * poleReducedPrimitive A t) =
      (∫ t in lowerEndpoint..2 * A,
        chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t) -
      ∫ t in lowerEndpoint..2 * A, Real.exp t * poleReducedPrimitive A t := by
    simp_rw [chebyshevError, sub_mul]
    rw [intervalIntegral.integral_sub (poleReduced_count_intervalIntegrable A hA)
      (he.intervalIntegrable _ _)]
  calc
    _ = ∫ t in lowerEndpoint..2 * A, chebyshevError (Real.exp t) *
        (deriv (poleReducedPrimitive A) t + poleReducedPrimitive A t) := by
      unfold criticalSignedChebyshevIntegral
      rw [← chebyshev_log_integral_eq_weight_integral A hA]
      apply intervalIntegral.integral_congr
      intro t _
      dsimp only
      rw [← sourceWeight_eq_criticalLogDerivative A t hA0,
        sourceWeight_eq_poleReducedPrimitive A t hA0]
    _ = _ := by
      simp_rw [mul_add]
      rw [intervalIntegral.integral_add hi' (poleReduced_error_intervalIntegrable A hA),
        chebyshev_prime_power_ibp (2 * A) (source_interval_order A hA)
          (poleReducedPrimitive A) hF,
        (poleReduced_upper_endpoints A hA0).2.2, mul_zero, hi]
      ring

/-- The finite step integral retains the upper G' boundary before it is removed. -/
theorem poleReduced_step_integral_boundary (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in lowerEndpoint..2 * A,
      chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t) =
      chebyshevPrimePower (Real.exp (2 * A)) * deriv (weightedPoleCorrelation A) (2 * A) -
        ∑ n ∈ primePowerInventory (2 * A),
          ArithmeticFunction.vonMangoldt n * deriv (weightedPoleCorrelation A) (Real.log n) := by
  simpa only [poleReducedPrimitive] using chebyshev_prime_power_step_integral (2 * A)
    (source_interval_order A hA) (deriv (weightedPoleCorrelation A))
    (weightedPoleCorrelation_contDiff A (by linarith)).deriv'

/-- Only the proved touching endpoint removes the upper step boundary. -/
theorem poleReduced_step_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in lowerEndpoint..2 * A,
      chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t) =
      -∑ n ∈ primePowerInventory (2 * A),
        ArithmeticFunction.vonMangoldt n * deriv (weightedPoleCorrelation A) (Real.log n) := by
  rw [poleReduced_step_integral_boundary A hA,
    (poleReduced_upper_endpoints A (by linarith)).2.1, mul_zero, zero_sub]

/-- The two arithmetic terms reconstruct the original weighted prime moment exactly. -/
theorem poleReduced_arithmetic_recombination (A : ℝ) (hA : 0 < A) :
    (∑ n ∈ primePowerInventory (2 * A), ArithmeticFunction.vonMangoldt n *
      (poleReducedPrimitive A (Real.log n) +
        deriv (weightedPoleCorrelation A) (Real.log n))) = closedPrimeMoment A := by
  unfold closedPrimeMoment
  apply Finset.sum_congr rfl
  intro n _
  rw [poleReducedPrimitive_add_deriv A (Real.log n) hA]
  rfl

/-- A classical primitive for the literal positive exponential correlation density. -/
theorem poleReduced_smooth_hasDerivAt (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (fun s ↦ Real.exp s * deriv (weightedPoleCorrelation A) s)
      (Real.exp (t/2) * sourceCorrelation explicitSecondDerivative A t) t := by
  have hd := (Real.hasDerivAt_exp t).mul (weightedPoleCorrelation_deriv_hasDerivAt A t hA)
  apply hd.congr_deriv
  calc
    _ = Real.exp t * (poleReducedPrimitive A t + deriv (weightedPoleCorrelation A) t) :=
      by ring
    _ = _ := by
      rw [poleReducedPrimitive_add_deriv A t hA, ← mul_assoc, ← Real.exp_add]
      congr 2
      ring

/-- Exact smooth moment boundary; the lower exponential is exp(log 2)=2. -/
theorem smoothMoment_eq_poleReduced_boundary (A : ℝ) (hA : 1 ≤ A) :
    smoothMoment A = -2 * deriv (weightedPoleCorrelation A) lowerEndpoint := by
  have hA0 : 0 < A := by linarith
  have hc : Continuous (fun t ↦ Real.exp (t/2) *
      sourceCorrelation explicitSecondDerivative A t) := by
    exact ((Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      (sourceCorrelation_contDiff A hA0).continuous)
  unfold smoothMoment
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ ↦ poleReduced_smooth_hasDerivAt A t hA0) (hc.intervalIntegrable _ _),
    (poleReduced_upper_endpoints A hA0).2.1, mul_zero,
    lowerEndpoint, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  ring

/-- The literal lower endpoint has the source-correct sign and constant. -/
theorem poleReduced_lower_endpoint (A : ℝ) (hA : 1 ≤ A) :
    2 * poleReducedPrimitive A lowerEndpoint =
      2 * Real.exp (-lowerEndpoint/2) *
        sourceCorrelation explicitSecondDerivative A lowerEndpoint + smoothMoment A := by
  rw [smoothMoment_eq_poleReduced_boundary A hA]
  linarith [poleReducedPrimitive_add_deriv A lowerEndpoint (by linarith)]

/-- The finite pole-reduced discrepancy collapses to the existing signed prime moment. -/
theorem poleReduced_discrepancy_eq_primeMoment (A : ℝ) (hA : 1 ≤ A) :
    (2 * poleReducedPrimitive A lowerEndpoint -
      ∑ n ∈ primePowerInventory (2 * A),
        ArithmeticFunction.vonMangoldt n * poleReducedPrimitive A (Real.log n) +
      ∫ t in lowerEndpoint..2 * A,
        chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t) =
      2 * Real.exp (-lowerEndpoint/2) *
        sourceCorrelation explicitSecondDerivative A lowerEndpoint +
      smoothMoment A - closedPrimeMoment A := by
  rw [poleReduced_step_integral A hA, poleReduced_lower_endpoint A hA]
  have ha := poleReduced_arithmetic_recombination A (by linarith : 0 < A)
  simp_rw [mul_add] at ha
  rw [Finset.sum_add_distrib] at ha
  linarith

end
end EstimatePoleReducedDiscrepancy
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
