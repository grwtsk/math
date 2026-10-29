/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CompactProfileExplicitFormula
import GRWTSK.Analysis.Convolution.PolynomialBumpHigherDerivatives

/-!
# Higher regularity of the actual CCC correlation and literal kernel

Exact function equalities transport the closed power-four source. The correlation
is C4 and the finite literal kernel C2 for positive radius. Source seam arguments
remain almost everywhere; no global C2 source or C-infinity bump is asserted.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceHigherRegularity

open MeasureTheory
open scoped ContDiff
open ArithmeticSupplier SourceResidual SourceRegularity
open GRWTSK.RiemannHypothesis
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

theorem normalized_source_eq_native {A : ℝ} (hA : 0 < A) :
    normalizedSource A = SourcePairing.normalizedTest Realization.explicitSecondDerivative A := by
  rw [← SourceClosedNormalization.normalized_test_eq_source hA]
  exact SourceAdmission.normalized_test_eq_explicit hA

theorem correlation_eq_native {A : ℝ} (hA : 0 < A) :
    correlation A = SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A := by
  rw [← SourceClosedNormalization.source_pairing_correlation_eq hA]
  unfold SourcePairing.sourceCorrelation
  rw [SourceAdmission.normalized_test_eq_explicit hA]

theorem correlation_contDiff_four {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 4 (correlation A) := by
  rw [correlation_eq_native hA]
  exact BranchCorrelationHigher.sourceCorrelation_contDiff_four hA

theorem correlation_first_contDiff_three {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 3 (deriv (correlation A)) := (correlation_contDiff_four hA).deriv'

theorem correlation_second_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (deriv (deriv (correlation A))) :=
  (correlation_first_contDiff_three hA).deriv'

theorem correlation_third_contDiff_one {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (deriv (deriv (deriv (correlation A)))) :=
  (correlation_second_contDiff_two hA).deriv'

theorem correlation_third_deriv_eq_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (correlation A))) t =
      -(∫ x : ℝ, BranchSecondDerivativeEnergy.secondRepresentative A x *
        deriv (normalizedSource A) (x - t)) := by
  rw [correlation_eq_native hA, normalized_source_eq_native hA]
  exact BranchCorrelationHigher.sourceCorrelation_third_deriv_eq_integral hA t

theorem correlation_fourth_deriv_eq_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (deriv (correlation A)))) t =
      ∫ x : ℝ, BranchSecondDerivativeEnergy.secondRepresentative A x *
        BranchSecondDerivativeEnergy.secondRepresentative A (x - t) := by
  rw [correlation_eq_native hA]
  exact BranchCorrelationHigher.sourceCorrelation_fourth_deriv_eq_integral hA t

theorem correlation_third_deriv_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (deriv (deriv (deriv (correlation A)))) :=
  (correlation_third_contDiff_one hA).continuous.integrable_of_hasCompactSupport
    (correlation_hasCompactSupport hA).deriv.deriv.deriv

theorem correlation_fourth_deriv_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (deriv (deriv (deriv (deriv (correlation A))))) :=
  (correlation_third_contDiff_one hA).continuous_deriv_one.integrable_of_hasCompactSupport
    (correlation_hasCompactSupport hA).deriv.deriv.deriv.deriv

theorem correlation_third_deriv_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (deriv (deriv (correlation A))) t| ≤ 132 / A ^ 3 := by
  rw [correlation_eq_native (by linarith : 0 < A)]
  exact BranchCorrelationHigher.sourceCorrelation_third_deriv_abs_le hA t

theorem correlation_fourth_deriv_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (deriv (deriv (deriv (correlation A)))) t| ≤ 815 / A ^ 4 := by
  rw [correlation_eq_native (by linarith : 0 < A)]
  exact BranchCorrelationHigher.sourceCorrelation_fourth_deriv_abs_le hA t

theorem normalized_source_first_lipschitz {A : ℝ} (hA : 0 < A) :
    ∃ K : NNReal, LipschitzWith K (deriv (normalizedSource A)) := by
  rw [normalized_source_eq_native hA]
  exact BranchCorrelationHigher.actual_first_derivative_lipschitz hA

theorem normalized_source_first_absolutelyContinuous {A : ℝ} (hA : 0 < A)
    (a b : ℝ) : AbsolutelyContinuousOnInterval (deriv (normalizedSource A)) a b := by
  rw [normalized_source_eq_native hA]
  exact BranchCorrelationHigher.actual_first_derivative_absolutelyContinuous hA a b

theorem polarity_kernel_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (polarityKernel A) := by
  have first : ContDiff ℝ 2 (deriv (correlation A)) :=
    (correlation_first_contDiff_three hA).of_le (by norm_num)
  have second := correlation_second_contDiff_two hA
  unfold polarityKernel
  fun_prop

theorem polarity_kernel_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (polarityKernel A) := by
  have term (k : ℕ) : HasCompactSupport (fun t : ℝ ↦
      Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        (deriv (deriv (correlation A)) (t + Real.log k) -
          (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log k))) := by
    have first : HasCompactSupport (fun t : ℝ ↦ deriv (correlation A) (t + Real.log k)) :=
      (correlation_hasCompactSupport hA).deriv.comp_homeomorph (Homeomorph.addRight _)
    have second : HasCompactSupport
        (fun t : ℝ ↦ deriv (deriv (correlation A)) (t + Real.log k)) :=
      (correlation_hasCompactSupport hA).deriv.deriv.comp_homeomorph (Homeomorph.addRight _)
    have half : HasCompactSupport
        (fun t : ℝ ↦ (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log k)) := first.mul_left
    exact (second.sub half).mul_left
  have finite := HasCompactSupport.finset_sum
    (s := Finset.Icc 2 (integerCutoff A)) (fun k _hk ↦ term k)
  have same : polarityKernel A = ∑ k ∈ Finset.Icc 2 (integerCutoff A),
      fun t : ℝ ↦ Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        (deriv (deriv (correlation A)) (t + Real.log k) -
          (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log k)) := by
    funext t
    simp only [polarityKernel, Finset.sum_apply]
  rw [same]
  exact finite

theorem polarity_kernel_deriv_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (deriv (polarityKernel A)) := by
  have first : ContDiff ℝ 1 (deriv (polarityKernel A)) :=
    (polarity_kernel_contDiff_two hA).deriv'
  exact first.continuous.integrable_of_hasCompactSupport
    (polarity_kernel_hasCompactSupport hA).deriv

theorem polarity_kernel_second_deriv_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (deriv (deriv (polarityKernel A))) := by
  have first : ContDiff ℝ 1 (deriv (polarityKernel A)) :=
    (polarity_kernel_contDiff_two hA).deriv'
  exact first.continuous_deriv_one.integrable_of_hasCompactSupport
    (polarity_kernel_hasCompactSupport hA).deriv.deriv

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceHigherRegularity
