import UpperBoundaryHyperbola
import scratch.mertens.EndpointMonotonicity

set_option autoImplicit false
namespace UpperBoundaryHyperbolaGainScratch
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open UpperBoundaryHyperbolaScratch
noncomputable section

/-- The short square is absent below the actual quarter-support threshold. -/
theorem upperSmallIndices_empty_below_quarter (A x : ℝ)
    (hx : x < Real.exp (2 * A) / 4) : upperSmallIndices ⌊Real.exp A⌋₊ x = ∅ := by
  apply eq_empty_iff_forall_notMem.mpr
  intro i hi
  obtain ⟨hilo, _, hi2⟩ := (mem_upperSmallIndices_iff _ _ _).mp hi
  have ht := UpperRowInversion.upper_square_product_threshold A i i hilo hilo
  simp only [Nat.cast_mul] at ht
  nlinarith

/-- The actual square Möbius sum vanishes below that support threshold. -/
theorem upperSmallSum_zero_below_quarter (A x : ℝ)
    (hx : x < Real.exp (2 * A) / 4) : upperSmallSum ⌊Real.exp A⌋₊ x = 0 := by
  rw [upperSmallSum, upperSmallIndices_empty_below_quarter A x hx, sum_empty]

/-- The source square pairing has its proved favorable sign wherever it can be nonzero. -/
theorem source_square_derivative_nonpos (A x : ℝ) (hA : 3 ≤ A) :
    upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
      deriv (SourceSampling.sourceSamplingKernel A) x ≤ 0 := by
  by_cases hx : Real.exp (2 * A) / 4 ≤ x
  · exact mul_nonpos_of_nonneg_of_nonpos (sq_nonneg _)
      (EndpointMonotonicityScratch.sourceSamplingKernel_derivative_upper_nonpos A x hA hx)
  · rw [upperSmallSum_zero_below_quarter A x (lt_of_not_ge hx), zero_pow (by norm_num), zero_mul]

/-- Genuine integrability from the hyperbola module accompanies this signed source integral. -/
theorem source_square_derivative_integral_nonpos (A : ℝ) (hA : 3 ≤ A) :
    (∫ x in 1..Real.exp (2 * A), upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
      deriv (SourceSampling.sourceSamplingKernel A) x) ≤ 0 := by
  have h := intervalIntegral.integral_nonneg_of_forall
    (μ := volume) (Real.one_le_exp_iff.mpr (by linarith : 0 ≤ 2 * A))
    (fun x ↦ neg_nonneg.mpr (source_square_derivative_nonpos A x hA))
  simpa only [intervalIntegral.integral_neg, neg_nonneg] using h

/-- Dropping only the proved favorable square gives an actual signed source lower comparison. -/
theorem sourceQuadraticValue_ge_core_hyperbola (A : ℝ) (hA : 3 ≤ A) :
    UpperBoundaryChannels.coreValue A +
      4 * (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x) ≤
      sourceQuadraticValue explicitSecondDerivative A := by
  rw [sourceQuadraticValue_eq_hyperbola_integrals A (by linarith)]
  have hs := source_square_derivative_integral_nonpos A hA
  linarith

/-- The original negative part is bounded by the unchanged core and full signed triangular pairing. -/
theorem sourceQuadraticValue_negativePart_le (A : ℝ) (hA : 3 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 ≤
      max (-UpperBoundaryChannels.coreValue A -
        4 * ∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
          deriv (SourceSampling.sourceSamplingKernel A) x) 0 := by
  apply max_le_max _ le_rfl
  have h := sourceQuadraticValue_ge_core_hyperbola A hA
  linarith

end
end UpperBoundaryHyperbolaGainScratch
