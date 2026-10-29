-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualTestIntegrable.Variant0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualTestIntegrable.Variant0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/resume-baseline/source/JointMangoldtBaselineScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtBaseline

/-!
PRIVATE36 hostile scope controls, UNCOMPILED. Numerical and polynomial controls
are synthetic and are not identified with the arithmetic joint profile. Actual
source assertions use the unchanged public profile and its precise hypotheses.
AI attribution: prepared with OpenAI Codex; no native verification is claimed.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualTestIntegrable.Variant0adf7a0f15f0135924a57b019dcf24cfb6580f9ec97b325bd8869b5292501e70

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures

open MeasureTheory Set
open scoped BigOperators Interval
open SourceJointMangoldtBaseline SourceJointMangoldtWork SourceStrictColumnInterior
open SourceVaughanHankel SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateSourceMobiusKernel EstimateVaughanSource

/-- Actual whole-line integrability licenses the integral split. -/
theorem actual_test_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (jointMangoldtTestProfile A) :=
  (jointMangoldtTestProfile_integrable_and_integral_zero A hA).1

/-- Actual zero moment is whole-line. -/
theorem actual_whole_line_moment_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, jointMangoldtTestProfile A t) = 0 :=
  (jointMangoldtTestProfile_integrable_and_integral_zero A hA).2

/-- Actual upper endpoint is included in the support statement. -/
theorem actual_upper_endpoint_zero (A : ℝ) (hA : 1 ≤ A) :
    jointMangoldtTestProfile A (Real.log (sourceKernelCutoff A : ℝ)) = 0 :=
  jointMangoldtTestProfile_zero_of_log_cutoff_le A hA le_rfl

/-- Actual entire upper tail vanishes, not merely its endpoint. -/
theorem actual_entire_upper_tail_zero (A : ℝ) (hA : 1 ≤ A) (t : ℝ)
    (ht : Real.log (sourceKernelCutoff A : ℝ) < t) :
    jointMangoldtTestProfile A t = 0 :=
  jointMangoldtTestProfile_zero_of_log_cutoff_le A hA ht.le

/-- Actual finite baseline retains the negative lower tail. -/
theorem actual_finite_baseline_retains_lower_tail (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
      jointMangoldtTestProfile A t) =
        -(∫ t in Iic (Real.log (vaughanCutoff A : ℝ)), jointMangoldtTestProfile A t) :=
  jointMangoldtTestProfile_window_eq_neg_lower_tail A hA

/-- Actual compensation retains both independent original counterterms. -/
theorem actual_compensations_retained_once (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A =
      -(∫ t in Iic (Real.log (vaughanCutoff A : ℝ)), jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A :=
  strictColumnInterior_eq_neg_lower_tail_and_joint_work A hA

/-- Empty strict inventory gives a zero profile without deleting a nonempty boundary. -/
theorem empty_strict_inventory_test_zero (A : ℝ)
    (h : sourceKernelCutoff A / (vaughanCutoff A + 1) ≤ vaughanCutoff A + 1) (t : ℝ) :
    jointMangoldtTestProfile A t = 0 := by
  simp [jointMangoldtTestProfile, Finset.Ico_eq_empty_of_le h]

/-- The lower half uses a closed endpoint. -/
theorem lower_Iic_endpoint_included : (1 : ℝ) ∈ Iic (1 : ℝ) := by simp

/-- The complementary upper half excludes that endpoint. -/
theorem upper_Ioi_endpoint_excluded : (1 : ℝ) ∉ Ioi (1 : ℝ) := by simp

/-- Synthetic zero total does not force either summand to vanish. -/
theorem zero_total_does_not_force_zero_half :
    (1 : ℝ) + (-1) = 0 ∧ (1 : ℝ) ≠ 0 := by norm_num

/-- Synthetic endpoint zero alone gives no tail-zero implication. -/
theorem endpoint_zero_alone_not_tail_zero :
    (fun t : ℝ => t) 0 = 0 ∧ (fun t : ℝ => t) 1 ≠ 0 := by norm_num

/-- Synthetic multiplication support requires the k>=2 condition. -/
theorem unit_k_not_strict_product_growth : ¬ (3 : ℕ) < 3 * 1 := by norm_num

/-- Synthetic compensated scalar identity must retain both lower terms. -/
theorem lower_tail_and_error_boundary_have_distinct_copies (l b w d m : ℝ) :
    (-l - b - w - d - m) + l + b + w + d + m = 0 := by ring

/-- A one-sided upper target still does not imply an absolute target. -/
theorem upper_bound_does_not_bound_absolute :
    (-2 : ℝ) ≤ 1 ∧ ¬ |(-2 : ℝ)| ≤ 1 := by norm_num

end FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures
