-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFactorizationKeepsIndependentRows.Variant1128aa0e4f11c2bedc528d7de42a62333d102b53a6375d770b5f5d2717212dbc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1128aa0e4f11c2bedc528d7de42a62333d102b53a6375d770b5f5d2717212dbc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualFactorizationKeepsIndependentRows.Variant1128aa0e4f11c2bedc528d7de42a62333d102b53a6375d770b5f5d2717212dbc","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1128aa0e4f11c2bedc528d7de42a62333d102b53a6375d770b5f5d2717212dbc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle26/principal-actual-mixed-work-fubini-v1/prepared-v2/ActualMixedWorkFubiniFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualMixedWorkFubini

/-!
Fourteen UNCOMPILED hostile and scope controls. Scalar opposite-row/sign fixtures
are synthetic controls, not claims about actual arithmetic coefficients. The
actual work formula leaves its original compensation terms to PRIVATE34.
AI attribution: OpenAI Codex source preparation; native verification is held.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFactorizationKeepsIndependentRows.Variant1128aa0e4f11c2bedc528d7de42a62333d102b53a6375d770b5f5d2717212dbc

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubiniFixtures

open MeasureTheory Set
open scoped BigOperators Interval
open SourceActualMixedWorkFubini SourceJointMangoldtWork SourcePairing
open SourceMangoldtAbel SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering

noncomputable section

theorem actual_factorization_keeps_independent_rows (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
    let q : ℝ → ℝ := normalizedTest explicitSecondDerivative A
    let X0 : ℝ → ℝ := fun v => ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
      mangoldtLogError t * Real.exp (t / 2) * q (v - t)
    let X1 : ℝ → ℝ := fun v => ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
      mangoldtLogError t * Real.exp (t / 2) * deriv q (v - t)
    let Y0 : ℝ → ℝ := fun v => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), q (v + Real.log u) / (u * Real.sqrt u))
    let Y1 : ℝ → ℝ := fun v => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), deriv q (v + Real.log u) /
        (u * Real.sqrt u))
    SourceJointMangoldtWork.jointMangoldtErrorWork A =
      (∫ v : ℝ, X1 v * Y1 v) + (1 / 4 : ℝ) * (∫ v : ℝ, X0 v * Y0 v) := by
  exact jointMangoldtErrorWork_eq_actual_bilinear_profiles A hA

theorem actual_compensation_is_still_complete (A : ℝ) (hA : 1 ≤ A) :
    SourceStrictColumnInterior.strictColumnInterior A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - SourceVaughanHankel.centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A :=
  strictColumnInterior_eq_joint_mangoldt_error_work A hA

theorem empty_time_window_has_zero_profile (r : ℝ → ℝ) (l v : ℝ) :
    (∫ t in l..l, mangoldtLogError t * Real.exp (t / 2) * r (v - t)) = 0 := by
  simp

theorem empty_strict_inventory_keeps_zero_test (A t : ℝ)
    (hK : sourceKernelCutoff A / (vaughanCutoff A + 1) ≤ vaughanCutoff A + 1) :
    jointMangoldtTestProfile A t = 0 := by
  simp only [jointMangoldtTestProfile]
  rw [Finset.Ico_eq_empty_of_le hK, Finset.sum_empty]

theorem actual_cell_denominator_is_positive {k u : ℝ} (hk : 0 < k)
    (hu : u ∈ Icc k (k + 1)) : 0 < u * Real.sqrt u := by
  exact mul_pos (hk.trans_le hu.1) (Real.sqrt_pos.mpr (hk.trans_le hu.1))

theorem continuous_left_overlap_is_not_discrete_left {U A : ℝ} (hU : 1 ≤ U) :
    Real.log U - A < Real.log (U + 1) - A := by
  have hp : 0 < U := by linarith
  exact sub_lt_sub_right (Real.log_lt_log hp (by linarith)) A

theorem reflected_lag_is_a_sum (t u : ℝ) :
    Real.log u - (-t) = t + Real.log u := by
  ring

theorem actual_source_only_needs_global_C1 {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (normalizedTest explicitSecondDerivative A) :=
  normalizedTest_contDiff A hA

theorem actual_correlation_has_global_C2 {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (sourceCorrelation explicitSecondDerivative A) :=
  sourceCorrelation_contDiff_two hA

theorem reflected_first_derivative_carries_minus {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (fun y => normalizedTest explicitSecondDerivative A (-y))
      (-deriv (normalizedTest explicitSecondDerivative A) (-x)) x :=
  reflectedTest_hasDerivAt hA x

theorem actual_curvature_at_zero_keeps_negative_square {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 =
      -(∫ v : ℝ, (deriv (normalizedTest explicitSecondDerivative A) v) ^ 2) := by
  rw [sourceCorrelation_second_deriv_eq_integral hA]
  simp only [sub_zero, pow_two]

theorem two_negative_sectors_give_plus (p q : ℝ) :
    -(-p - (1 / 4 : ℝ) * q) = p + (1 / 4 : ℝ) * q := by
  ring

theorem synthetic_unequal_rows_do_not_inherit_gram_sign :
    -(1 * (-1 : ℝ)) - (1 / 4 : ℝ) * (1 * (-1)) > 0 := by
  norm_num

theorem synthetic_one_sided_bound_does_not_bound_absolute_value :
    (-20 : ℝ) ≤ 0 ∧ ¬ |(-20 : ℝ)| ≤ 0 := by
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubiniFixtures
