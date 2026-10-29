import FormalResearch.RiemannHypothesis.SourceBoundaryLayer
import FormalResearch.RiemannHypothesis.SourceBoundaryArithmetic
import FormalResearch.RiemannHypothesis.FullQuadraticFrontierAudit
import FormalResearch.RiemannHypothesis.GeneralizedPoleBoundary

/-!
# The exact cancellation rate in the moving cutoff coordinate

The ninth-order boundary normalization tends to zero. Ordinary boundedness
after this normalization is weaker than boundedness of the original scalar.
The actual one-sided arithmetic rate must retain the vanishing factor; it is
not registered as an affine tail adapter with a fixed positive scale.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.SourceBoundaryFrontierAudit

open Filter MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.MathematicalTooling.UniformTailEquivalence
open PoleFrontierInvariance
open SourceBoundaryArithmetic
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimeSquareEstimate
open Realization SourceBoundaryLayer

noncomputable section

/-- The exact positive cancellation scale corresponding to a bounded source discrepancy. -/
def boundaryScale (A : ℝ) : ℝ := A ^ 9 * Real.exp (-A)

theorem boundary_scale_pos (A : ℝ) (hA : 0 < A) : 0 < boundaryScale A := by
  exact mul_pos (pow_pos hA _) (Real.exp_pos _)

theorem boundary_scale_tendsto_zero :
    Tendsto boundaryScale atTop (nhds 0) :=
  Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 9

/-- The growing prefactor and the vanishing boundary normalization are exact reciprocals. -/
theorem boundary_prefactor_mul_scale (A : ℝ) (hA : A ≠ 0) :
    (Real.exp A / A ^ 9) * boundaryScale A = 1 := by
  unfold boundaryScale
  rw [Real.exp_neg]
  field_simp

/-- In the native cutoff X = exp(2A), the exact factor includes the ninth power of two. -/
theorem boundary_frontier_scale_identity (A : ℝ) :
    boundaryScale A = (Real.log (Real.exp (2 * A))) ^ 9 /
      (512 * Real.sqrt (Real.exp (2 * A))) := by
  have he : Real.exp (2 * A) = (Real.exp A) ^ 2 := by
    rw [show 2 * A = A + A by ring, Real.exp_add, pow_two]
  rw [Real.log_exp, he, Real.sqrt_sq_eq_abs, abs_of_pos (Real.exp_pos _)]
  unfold boundaryScale
  rw [Real.exp_neg]
  field_simp
  ring

/-- This scale has no positive lower bound on any real tail. -/
theorem no_positive_tail_lower_bound_on_boundary_scale :
    ¬∃ m : ℝ, 0 < m ∧ ∃ R : ℝ, ∀ A : ℝ, R ≤ A → m ≤ boundaryScale A := by
  rintro ⟨m, hm, R, h⟩
  obtain ⟨S, hS⟩ := eventually_atTop.mp
    (boundary_scale_tendsto_zero.eventually (gt_mem_nhds hm))
  have hl := h (max R S) (le_max_left _ _)
  have hu := hS (max R S) (le_max_right _ _)
  linarith

/-- A counterexample using this very boundary scale, beyond the existing reciprocal-scale guard. -/
theorem boundary_vanishing_normalization_changes_tail :
    UniformTailUpperBound (fun A : ℝ ↦ boundaryScale A * (Real.exp A / A ^ 9)) ∧
      ¬UniformTailUpperBound (fun A : ℝ ↦ Real.exp A / A ^ 9) := by
  constructor
  · refine ⟨1, zero_le_one, 1, le_rfl, ?_⟩
    intro A hA
    change boundaryScale A * (Real.exp A / A ^ 9) ≤ 1
    rw [mul_comm, boundary_prefactor_mul_scale A (by linarith)]
  · rintro ⟨B, _, R, _, h⟩
    obtain ⟨S, hS⟩ := eventually_atTop.mp
      ((Real.tendsto_exp_div_pow_atTop 9).eventually (eventually_gt_atTop B))
    have hl := h (max R S) (le_max_left _ _)
    have hu := hS (max R S) (le_max_right _ _)
    linarith

/-- The independently defined finite arithmetic bracket is exactly the vanishing-scaled
native discrepancy; this is not an ordinary bounded-error affine normalization. -/
theorem lower_boundary_pairing_eq_scaled_discrepancy (A : ℝ) (hA : 1 ≤ A) :
    lowerBoundaryPairing A = boundaryScale A * sourceDiscrepancyValue A := by
  have h := congrArg (fun x : ℝ ↦ boundaryScale A * x)
    (discrepancy_boundary_coordinate_exact A hA)
  have hs : boundaryScale A * (Real.exp A / A ^ 9) = 1 := by
    rw [mul_comm]
    exact boundary_prefactor_mul_scale A (by linarith)
  simpa only [← mul_assoc, hs, one_mul] using h.symm

/-- OPEN: the required one-sided normalized error retains its vanishing square-root scale. -/
def BoundaryCancellationRate : Prop :=
  ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → lowerBoundaryPairing A ≤ B * boundaryScale A

/-- Keeping the actual rate, rather than just bounding the normalized bracket, preserves
every uniform real-radius quantifier in the arithmetic frontier. -/
theorem boundary_rate_iff_discrepancy_tail :
    BoundaryCancellationRate ↔ UniformTailUpperBound sourceDiscrepancyValue := by
  constructor
  · rintro ⟨B, hB, R, hR, h⟩
    refine ⟨B, hB, R, hR, ?_⟩
    intro A hA
    have hAone := hR.trans hA
    have hb := h A hA
    rw [lower_boundary_pairing_eq_scaled_discrepancy A hAone, mul_comm B] at hb
    exact (mul_le_mul_iff_right₀ (boundary_scale_pos A (by linarith))).mp
      (by simpa [mul_comm] using hb)
  · rintro ⟨B, hB, R, hR, h⟩
    refine ⟨B, hB, R, hR, ?_⟩
    intro A hA
    have hAone := hR.trans hA
    rw [lower_boundary_pairing_eq_scaled_discrepancy A hAone, mul_comm B]
    exact mul_le_mul_of_nonneg_left (h A hA)
      (boundary_scale_pos A (by linarith)).le

/-- The exact boundary rate is the same prime-and-square truth obligation. -/
theorem boundary_rate_iff_prime_square_compensation :
    BoundaryCancellationRate ↔ PrimeSquareCompensationTail :=
  boundary_rate_iff_discrepancy_tail.trans discrepancy_tail_iff_prime_square_compensation

/-- The full estimate is reached through the existing exact converse, without a weaker rate. -/
theorem boundary_rate_iff_estimate :
    BoundaryCancellationRate ↔ CorrelationAssembly.EstimateObligation :=
  boundary_rate_iff_prime_square_compensation.trans
    FullQuadraticFrontierAudit.full_estimate_iff_prime_square_compensation.symm

/-- A two-sided rate is a separate sufficient requirement; the native target is one-sided. -/
def BoundaryAbsoluteCancellationRate : Prop :=
  ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → |lowerBoundaryPairing A| ≤ B * boundaryScale A

theorem boundary_rate_of_absolute_rate (h : BoundaryAbsoluteCancellationRate) :
    BoundaryCancellationRate := by
  obtain ⟨B, hB, R, hR, h⟩ := h
  exact ⟨B, hB, R, hR, fun A hA ↦ (le_abs_self _).trans (h A hA)⟩

/-- Taking first or second Abel primitives after the coordinate substitution preserves the
same scalar, rather than supplying an additional arithmetic cancellation theorem. -/
theorem lower_boundary_pairing_eq_scaled_second_abel (A : ℝ) (hA : 1 ≤ A) :
    lowerBoundaryPairing A = boundaryScale A * sourceAbelValue A := by
  rw [source_abel_value_eq_discrepancy A hA]
  exact lower_boundary_pairing_eq_scaled_discrepancy A hA

/-- The sharp boundary rate implies ordinary boundedness of the normalized bracket;
the converse is not supplied by a normalization that tends to zero. -/
theorem normalized_boundary_bound_of_rate (h : BoundaryCancellationRate) :
    UniformTailUpperBound lowerBoundaryPairing := by
  obtain ⟨B, hB, R, hR, h⟩ := h
  obtain ⟨S, hS⟩ := eventually_atTop.mp
    (boundary_scale_tendsto_zero.eventually (gt_mem_nhds (by norm_num : (0 : ℝ) < 1)))
  refine ⟨B, hB, max R S, hR.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hRA := (le_max_left R S).trans hA
  have hSA := (le_max_right R S).trans hA
  exact (h A hRA).trans (by nlinarith [hS A hSA])

/-- Finite-radius moments retain the moving domain and need not equal limiting profile moments. -/
def finiteBoundaryMoment (A : ℝ) (k : ℕ) : ℝ :=
  ∫ y in (0 : ℝ)..2 * A, y ^ k * Real.exp (-y / 2) * boundaryKernel A y

theorem finite_boundary_moment_integrable (A : ℝ) (hA : 1 ≤ A) (k : ℕ) :
    IntervalIntegrable (fun y ↦ y ^ k * Real.exp (-y / 2) * boundaryKernel A y)
      volume 0 (2 * A) := by
  have hc := (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).continuous
  apply Continuous.intervalIntegrable
  unfold boundaryKernel
  exact (by fun_prop : Continuous (fun y : ℝ ↦ y ^ k * Real.exp (-y / 2))).mul
    (continuous_const.mul (hc.comp (by fun_prop)))

/-- The finite constant boundary moment is the exact scaled native half-line continuum. -/
theorem finite_boundary_zero_moment_exact (A : ℝ) (hA : 1 ≤ A) :
    finiteBoundaryMoment A 0 = boundaryScale A *
      (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) := by
  have h := congrArg (fun x : ℝ ↦ boundaryScale A * x)
    (continuum_boundary_coordinate_exact A hA)
  have hs : boundaryScale A * (Real.exp A / A ^ 9) = 1 := by
    rw [mul_comm]
    exact boundary_prefactor_mul_scale A (by linarith)
  simpa only [← mul_assoc, hs, one_mul, finiteBoundaryMoment, pow_zero, one_mul] using h.symm

/-- Full-line pole cancellation bounds the finite constant moment; it does not set it to zero. -/
theorem finite_boundary_zero_moment_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |finiteBoundaryMoment A 0| ≤ 2 * boundaryScale A := by
  rw [finite_boundary_zero_moment_exact A hA, abs_mul,
    abs_of_pos (boundary_scale_pos A (by linarith))]
  simpa [mul_comm] using mul_le_mul_of_nonneg_left
    (PhaseKernelBoundary.source_continuum_abs_le_two A hA)
    (boundary_scale_pos A (by linarith)).le

/-- The affine boundary moment carries both the constant and the nonzero generalized half moment. -/
theorem finite_boundary_first_moment_exact (A : ℝ) (hA : 1 ≤ A) :
    finiteBoundaryMoment A 1 = boundaryScale A *
      (2 * A * (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) -
        GeneralizedPoleBoundary.positiveHalfMoment A) := by
  let f : ℝ → ℝ := fun y ↦ y * Real.exp (-y / 2) * boundaryKernel A y
  have hc := (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).continuous
  have hi := source_continuum_integrable A hA
  have hj : IntervalIntegrable (fun t ↦ t * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) volume 0 (2 * A) :=
    ((by fun_prop : Continuous (fun t : ℝ ↦ t * Real.exp (t / 2))).mul hc).intervalIntegrable _ _
  calc
    _ = ∫ t in (0 : ℝ)..2 * A, f (2 * A - t) := by
      simpa only [finiteBoundaryMoment, pow_one, sub_self, sub_zero] using
        (intervalIntegral.integral_comp_sub_left f (2 * A) (a := 0) (b := 2 * A)).symm
    _ = ∫ t in (0 : ℝ)..2 * A, boundaryScale A *
        (2 * A * (Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) -
          t * Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) := by
      apply intervalIntegral.integral_congr
      intro t _
      dsimp [f, boundaryKernel, boundaryScale]
      rw [show 2 * A - (2 * A - t) = t by ring,
        show -(2 * A - t) / 2 = -A + t / 2 by ring, Real.exp_add]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_const_mul,
        intervalIntegral.integral_sub (hi.const_mul (2 * A)) hj,
        intervalIntegral.integral_const_mul]
      rfl

/-- The finite affine moment is exponentially small with an explicit polynomial factor. -/
theorem finite_boundary_first_moment_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |finiteBoundaryMoment A 1| ≤ (4 * A + 4) * boundaryScale A := by
  rw [finite_boundary_first_moment_exact A hA, abs_mul,
    abs_of_pos (boundary_scale_pos A (by linarith))]
  have hI := PhaseKernelBoundary.source_continuum_abs_le_two A hA
  have hJ := GeneralizedPoleMoments.positive_generalized_half_moment_abs_le_four A hA
  change |GeneralizedPoleBoundary.positiveHalfMoment A| ≤ 4 at hJ
  have hb : |2 * A * (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) -
      GeneralizedPoleBoundary.positiveHalfMoment A| ≤ 4 * A + 4 := by
    calc
      _ ≤ |2 * A * (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t)| +
          |GeneralizedPoleBoundary.positiveHalfMoment A| := abs_sub _ _
      _ = 2 * A * |∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
          sourceCorrelation explicitSecondDerivative A t| +
          |GeneralizedPoleBoundary.positiveHalfMoment A| := by
            rw [abs_mul, abs_of_pos (by linarith : 0 < 2 * A)]
      _ ≤ 2 * A * 2 + 4 := add_le_add
        (mul_le_mul_of_nonneg_left hI (by linarith)) hJ
      _ = _ := by ring
  simpa [mul_comm] using mul_le_mul_of_nonneg_left hb
    (boundary_scale_pos A (by linarith)).le

theorem finite_boundary_zero_moment_tendsto_zero :
    Tendsto (fun A : ℝ ↦ finiteBoundaryMoment A 0) atTop (nhds 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  have hb : ∀ᶠ A : ℝ in atTop, |finiteBoundaryMoment A 0| ≤ 2 * boundaryScale A := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact finite_boundary_zero_moment_abs_le A hA
  have ht : Tendsto (fun A : ℝ ↦ 2 * boundaryScale A) atTop (nhds 0) := by
    simpa only [mul_zero] using boundary_scale_tendsto_zero.const_mul 2
  simpa only [Real.norm_eq_abs] using squeeze_zero'
    (Eventually.of_forall (fun A : ℝ ↦ abs_nonneg (finiteBoundaryMoment A 0))) hb
    ht

theorem finite_boundary_first_moment_tendsto_zero :
    Tendsto (fun A : ℝ ↦ finiteBoundaryMoment A 1) atTop (nhds 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  have ht : Tendsto (fun A : ℝ ↦ (4 * A + 4) * boundaryScale A) atTop (nhds 0) := by
    have h := ((Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 10).const_mul 4).add
      ((Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 9).const_mul 4)
    convert h using 1
    · funext A
      unfold boundaryScale
      ring
    · norm_num
  have hb : ∀ᶠ A : ℝ in atTop,
      |finiteBoundaryMoment A 1| ≤ (4 * A + 4) * boundaryScale A := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact finite_boundary_first_moment_abs_le A hA
  simpa only [Real.norm_eq_abs] using squeeze_zero'
    (Eventually.of_forall (fun A : ℝ ↦ abs_nonneg (finiteBoundaryMoment A 1))) hb ht

end
end FormalResearch.RiemannHypothesis.SourceBoundaryFrontierAudit
