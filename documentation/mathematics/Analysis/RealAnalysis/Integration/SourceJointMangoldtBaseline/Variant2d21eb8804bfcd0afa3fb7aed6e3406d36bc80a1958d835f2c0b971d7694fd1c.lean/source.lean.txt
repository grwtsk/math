-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ShiftedColumnTest.Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ShiftedColumnTest.Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95","mathematical_subject":"Analysis.Integration","original_sha256":"bf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/resume-baseline/repaired-v1/source/SourceJointMangoldtBaseline.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtWork
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment

/-!
# The actual joint Mangoldt baseline and its retained lower tail

Private proof-text preparation only: UNCOMPILED. The private34 adapter has an
actual author packet; its independent replay is pending. Whole-line cancellation
is transported from the unchanged source correlation moment. Neither half-line
integral is asserted to vanish. Actual source support removes the entire upper
tail; the lower tail, error boundary, signed work, full centered diagonal and
independently defined main term are retained. No estimate or witness is supplied.

AI attribution: prepared with OpenAI Codex; native36 verification remains held.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ShiftedColumnTest.Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline

open MeasureTheory Set
open scoped BigOperators Interval
open SourcePairing SourceVaughanHankel SourceStrictColumnInterior
open SourceJointMangoldtWork SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateSourceMobiusKernel
open EstimateVaughanSource EstimateBetaCentering EstimateMertensAbel

noncomputable section

private def shiftedColumnTest (A : ℝ) (k : ℕ) (t : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt (k : ℝ) *
    sourceCorrelation explicitSecondDerivative A (t + Real.log (k : ℝ))

private def originalPrefix (A : ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n

private theorem shiftedColumnTest_integrable (A : ℝ) (hA : 0 < A) (k : ℕ) :
    Integrable (shiftedColumnTest A k) := by
  have hc : Continuous (shiftedColumnTest A k) := by
    unfold shiftedColumnTest
    exact (((continuous_id.div_const 2).rexp).div_const _).mul
      ((sourceCorrelation_contDiff A hA).continuous.comp
        (continuous_id.add continuous_const))
  have hs := (sourceCorrelation_hasCompactSupport A hA).comp_homeomorph
    (Homeomorph.addRight (Real.log (k : ℝ)))
  exact hc.integrable_of_hasCompactSupport hs.mul_left

private theorem shiftedColumnTest_integral_zero (A : ℝ) (hA : 1 ≤ A) (k : ℕ) :
    (∫ t : ℝ, shiftedColumnTest A k t) = 0 := by
  have hscale (t : ℝ) : Real.exp (-Real.log (k : ℝ) / 2) *
      Real.exp ((t + Real.log (k : ℝ)) / 2) = Real.exp (t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have he : shiftedColumnTest A k = fun t : ℝ =>
      (Real.exp (-Real.log (k : ℝ) / 2) / Real.sqrt (k : ℝ)) *
        (Real.exp ((t + Real.log (k : ℝ)) / 2) *
          sourceCorrelation explicitSecondDerivative A (t + Real.log (k : ℝ))) := by
    funext t
    unfold shiftedColumnTest
    calc
      _ = (Real.exp (-Real.log (k : ℝ) / 2) *
          Real.exp ((t + Real.log (k : ℝ)) / 2)) / Real.sqrt (k : ℝ) *
            sourceCorrelation explicitSecondDerivative A (t + Real.log (k : ℝ)) := by
        rw [hscale]
      _ = _ := by ring
  have hz : (∫ t : ℝ, Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) = 0 := by
    simpa only [show ∀ t : ℝ, (1 / 2 : ℝ) * t = t / 2 by intro t; ring] using
      CorrelationMoment.full_correlation_moment_zero A hA
  rw [he, integral_const_mul,
    integral_add_right_eq_self (fun t : ℝ => Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) (Real.log (k : ℝ)), hz, mul_zero]

private theorem shiftedColumnTest_zero_above (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : 2 ≤ k) {t : ℝ}
    (ht : Real.log (sourceKernelCutoff A : ℝ) ≤ t) :
    shiftedColumnTest A k t = 0 := by
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 1 ≤ sourceKernelCutoff A := hU.trans hUN
  have hNr : (1 : ℝ) ≤ sourceKernelCutoff A := by exact_mod_cast hN
  have hkr : (2 : ℝ) ≤ k := by exact_mod_cast hk
  have hN0 : 0 < (sourceKernelCutoff A : ℝ) := by positivity
  have hk0 : 0 < (k : ℝ) := by positivity
  have hfloor : Real.exp (2 * A) < (sourceKernelCutoff A : ℝ) + 1 := by
    simpa only [sourceKernelCutoff, sourceUpper] using Nat.lt_floor_add_one (Real.exp (2 * A))
  have hproduct : Real.exp (2 * A) < (sourceKernelCutoff A : ℝ) * (k : ℝ) := by
    nlinarith
  have hl := Real.log_le_log (Real.exp_pos (2 * A)) hproduct.le
  rw [Real.log_exp, Real.log_mul hN0.ne' hk0.ne'] at hl
  have hs : 2 * A ≤ |t + Real.log (k : ℝ)| :=
    (by linarith : 2 * A ≤ t + Real.log (k : ℝ)).trans (le_abs_self _)
  unfold shiftedColumnTest
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith) hs, mul_zero]

/-- The literal finite test is integrable and has the whole-line signed source moment zero. -/
theorem jointMangoldtTestProfile_integrable_and_integral_zero (A : ℝ) (hA : 1 ≤ A) :
    Integrable (jointMangoldtTestProfile A) ∧
      (∫ t : ℝ, jointMangoldtTestProfile A t) = 0 := by
  classical
  change Integrable (fun t => ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      originalPrefix A k * (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) ∧
    (∫ t : ℝ, ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      originalPrefix A k * (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) = 0
  have hi (k : ℕ) : Integrable (fun t => originalPrefix A k *
      (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) :=
    ((shiftedColumnTest_integrable A (by linarith) k).sub
      (shiftedColumnTest_integrable A (by linarith) (k + 1))).const_mul _
  refine ⟨integrable_finsetSum _ (fun k _ => hi k), ?_⟩
  rw [integral_finsetSum _ (fun k _ => hi k)]
  apply Finset.sum_eq_zero
  intro k _
  rw [integral_const_mul,
    integral_sub (shiftedColumnTest_integrable A (by linarith) k)
      (shiftedColumnTest_integrable A (by linarith) (k + 1)),
    shiftedColumnTest_integral_zero A hA k,
    shiftedColumnTest_integral_zero A hA (k + 1), sub_self, mul_zero]

/-- Support annihilates every point of the upper tail, including its closed endpoint. -/
theorem jointMangoldtTestProfile_zero_of_log_cutoff_le (A : ℝ) (hA : 1 ≤ A)
    {t : ℝ} (ht : Real.log (sourceKernelCutoff A : ℝ) ≤ t) :
    jointMangoldtTestProfile A t = 0 := by
  classical
  change (∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      originalPrefix A k * (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) = 0
  apply Finset.sum_eq_zero
  intro k hk
  have hkm := (Finset.mem_Ico.mp hk).1
  have hU := vaughanCutoff_pos A hA
  rw [shiftedColumnTest_zero_above A hA k (by omega) ht,
    shiftedColumnTest_zero_above A hA (k + 1) (by omega) ht, sub_self, mul_zero]

/-- The finite baseline is the negative retained lower tail, not zero in general. -/
theorem jointMangoldtTestProfile_window_eq_neg_lower_tail (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
      jointMangoldtTestProfile A t) =
        -(∫ t in Iic (Real.log (vaughanCutoff A : ℝ)), jointMangoldtTestProfile A t) := by
  have h := jointMangoldtTestProfile_integrable_and_integral_zero A hA
  have hu : (∫ t in Ioi (Real.log (sourceKernelCutoff A : ℝ)),
      jointMangoldtTestProfile A t) = 0 := by
    apply setIntegral_eq_zero_of_forall_eq_zero
    intro t ht
    exact jointMangoldtTestProfile_zero_of_log_cutoff_le A hA ht.le
  have hs := intervalIntegral.integral_Iic_add_Ioi
    (b := Real.log (sourceKernelCutoff A : ℝ)) h.1.integrableOn h.1.integrableOn
  rw [hu, h.2, add_zero] at hs
  have hw := intervalIntegral.integral_Iic_sub_Iic
    (a := Real.log (vaughanCutoff A : ℝ))
    (b := Real.log (sourceKernelCutoff A : ℝ)) h.1.integrableOn h.1.integrableOn
  rw [hs, zero_sub] at hw
  exact hw.symm

/-- Exact strict interior: the lower tail and lower error boundary both survive. -/
theorem strictColumnInterior_eq_neg_lower_tail_and_joint_work (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A =
      -(∫ t in Iic (Real.log (vaughanCutoff A : ℝ)), jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A := by
  rw [strictColumnInterior_eq_joint_mangoldt_error_work A hA,
    jointMangoldtTestProfile_window_eq_neg_lower_tail A hA]

end
end FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline
