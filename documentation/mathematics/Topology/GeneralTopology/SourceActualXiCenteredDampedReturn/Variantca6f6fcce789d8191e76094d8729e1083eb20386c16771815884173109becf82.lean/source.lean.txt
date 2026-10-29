-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualCenteredDampedXiReturn.Variant322018e2eadb91b1b32f2e8e8d64873d8c974de2c15e0e7e8c092011cc771b68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"322018e2eadb91b1b32f2e8e8d64873d8c974de2c15e0e7e8c092011cc771b68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualCenteredDampedXiReturn.Variant322018e2eadb91b1b32f2e8e8d64873d8c974de2c15e0e7e8c092011cc771b68","mathematical_subject":"Topology.GeneralTopology","original_sha256":"322018e2eadb91b1b32f2e8e8d64873d8c974de2c15e0e7e8c092011cc771b68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/SourceActualXiCenteredDampedReturn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiDampedTailReturn
import SourceFiveCancelledFactorialBudget

/-!
The actual fixed-damping primitive has a genuine constant-sector cancellation
under the full returned source kernel. Both true endpoints are retained. The
fixed constant q is arbitrary; no ordinary limit or mean of the arithmetic
primitive is assumed. Only its real lower trace receives a decaying budget.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualCenteredDampedXiReturn.Variant322018e2eadb91b1b32f2e8e8d64873d8c974de2c15e0e7e8c092011cc771b68

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiCenteredDampedReturn
open MeasureTheory Set Filter
open scoped Interval Topology
open SourceActualXiDampedTailReturn SourceActualXiDampedFiniteBound
open SourceFiveCancelledFactorialBudget SourcePairing
open RH16CompleteXiTail RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- Literal centered return of the unchanged actual signed damped primitive. -/
def actualCenteredDampedXiReturn (A q : ℝ) : ℝ :=
  ∫ t in Real.log 7..2 * A,
    (actualDampedXiFinitePrimitive t - q) * actualDampedXiReturnDensity A t

/-- The genuine fixed constant-sector lower-trace budget, independent of the scale. -/
def actualConstantSectorLowerBudget (q : ℝ) : ℝ :=
  |q| * Real.sqrt 7 * (5 + (5 / 2 : ℝ) * Real.log 7)

private theorem first_jet_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (deriv (sourceCorrelation explicitSecondDerivative A)) := by
  simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
    (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 1 (by norm_num)

private theorem returnDensity_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (actualDampedXiReturnDensity A) := by
  unfold actualDampedXiReturnDensity
  exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
    (((actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 3
      (by norm_num)).sub ((first_jet_continuous hA).div_const 4))

/-- FTC retains the genuine lower trace after the true closed upper support trace vanishes. -/
theorem actualDampedXiReturnDensity_integral_eq_neg_lower {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in Real.log 7..2 * A, actualDampedXiReturnDensity A t) =
      -actualDampedXiReturnTest A (Real.log 7) := by
  have hp : 0 < A := by linarith
  have hi : IntervalIntegrable (actualDampedXiReturnDensity A) volume
      (Real.log 7) (2 * A) := (returnDensity_continuous hp).intervalIntegrable _ _
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => actualDampedXiReturnTest_hasDerivAt A t hp) hi
  simpa only [actualDampedXiReturnTest_at_upper hA, zero_sub] using h

/-- The literal centered source integrand has genuine finite L1 before linearity. -/
theorem actualCenteredDampedXiReturn_intervalIntegrable {A : ℝ} (hA : 91 ≤ A) (q : ℝ) :
    IntervalIntegrable (fun t => (actualDampedXiFinitePrimitive t - q) *
      actualDampedXiReturnDensity A t) volume (Real.log 7) (2 * A) := by
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hj : IntervalIntegrable actualDampedXiFinitePrimitive volume
      (Real.log 7) (2 * A) :=
    (actualDampedXiFinitePrimitive_absolutelyContinuous hlb).continuousOn.intervalIntegrable
  exact (hj.sub (intervalIntegrable_const)).mul_continuousOn
    (returnDensity_continuous (by linarith : 0 < A)).continuousOn

/-- Actual constant-sector cancellation leaves its real lower endpoint, not a deleted trace. -/
theorem completeXiTail_eq_centered_damped_return {A : ℝ} (hA : 91 ≤ A) (q : ℝ) :
    completeXiTail A = actualCenteredDampedXiReturn A q -
      q * actualDampedXiReturnTest A (Real.log 7) := by
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hd : IntervalIntegrable (actualDampedXiReturnDensity A) volume
      (Real.log 7) (2 * A) :=
    (returnDensity_continuous (by linarith : 0 < A)).intervalIntegrable _ _
  have hj : IntervalIntegrable (fun t => actualDampedXiFinitePrimitive t *
      actualDampedXiReturnDensity A t) volume (Real.log 7) (2 * A) :=
    by
      have hi : IntervalIntegrable actualDampedXiFinitePrimitive volume
          (Real.log 7) (2 * A) :=
        (actualDampedXiFinitePrimitive_absolutelyContinuous hlb).continuousOn.intervalIntegrable
      exact hi.mul_continuousOn
        (returnDensity_continuous (by linarith : 0 < A)).continuousOn
  have he : (fun t => (actualDampedXiFinitePrimitive t - q) *
      actualDampedXiReturnDensity A t) =
      (fun t => actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t) -
      (fun t => q * actualDampedXiReturnDensity A t) := by
    funext t; dsimp only [Pi.sub_apply]; ring
  unfold actualCenteredDampedXiReturn
  rw [he]
  change completeXiTail A = (∫ t in Real.log 7..2 * A,
    actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t -
      q * actualDampedXiReturnDensity A t) - q * actualDampedXiReturnTest A (Real.log 7)
  rw [intervalIntegral.integral_sub hj (hd.const_mul q),
    intervalIntegral.integral_const_mul, actualDampedXiReturnDensity_integral_eq_neg_lower hA,
    completeXiTail_eq_damped_primitive_return hA]
  ring

private theorem sqrt_exp_half (t : ℝ) : Real.sqrt (Real.exp t) = Real.exp (t / 2) := by
  have hs := Real.sq_sqrt (Real.exp_pos t).le
  have he : (Real.exp (t / 2)) ^ 2 = Real.exp t := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hp := Real.exp_pos (t / 2)
  have hn := Real.sqrt_nonneg (Real.exp t)
  nlinarith

/-- The actual odd first jet and curvature five give the sharp fixed lower-trace rate. -/
theorem actualDampedXiReturnTest_lower_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualDampedXiReturnTest A (Real.log 7)| ≤
      Real.sqrt 7 * (5 + (5 / 2 : ℝ) * Real.log 7) / A ^ 2 := by
  have h2 := RH16FiveCesaro.actualCorrelation_second_abs_le_five hA (Real.log 7)
  have h1 := actualCorrelation_first_abs_le_five hA (Real.log 7)
  rw [abs_of_nonneg (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7))] at h1
  have hx : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    have h := sqrt_exp_half (Real.log 7)
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using h.symm
  unfold actualDampedXiReturnTest
  rw [abs_mul, abs_of_pos (Real.exp_pos _), hx]
  have hs := abs_sub
    (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (Real.log 7))
    (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7) / 2)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hs
  have hb : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (Real.log 7) -
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7) / 2| ≤
      (5 + (5 / 2 : ℝ) * Real.log 7) / A ^ 2 := by
    calc
      _ ≤ |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (Real.log 7)| +
          |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7)| / 2 := hs
      _ ≤ 5 / A ^ 2 + (5 / A ^ 2 * Real.log 7) / 2 := by
        simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
          add_le_add h2 (div_le_div_of_nonneg_right h1 (by norm_num : (0 : ℝ) ≤ 2))
      _ = _ := by ring
  calc
    _ ≤ Real.sqrt 7 * ((5 + (5 / 2 : ℝ) * Real.log 7) / A ^ 2) :=
      mul_le_mul_of_nonneg_left hb (Real.sqrt_nonneg _)
    _ = _ := by ring

/-- The unchanged actual tail and centered return differ only by a decaying true trace. -/
theorem completeXiTail_sub_centered_abs_le {A : ℝ} (hA : 91 ≤ A) (q : ℝ) :
    |completeXiTail A - actualCenteredDampedXiReturn A q| ≤
      actualConstantSectorLowerBudget q / A ^ 2 := by
  rw [completeXiTail_eq_centered_damped_return hA q]
  have he : actualCenteredDampedXiReturn A q - q * actualDampedXiReturnTest A (Real.log 7) -
      actualCenteredDampedXiReturn A q = -q * actualDampedXiReturnTest A (Real.log 7) := by ring
  rw [he, abs_mul, abs_neg]
  calc
    _ ≤ |q| * (Real.sqrt 7 * (5 + (5 / 2 : ℝ) * Real.log 7) / A ^ 2) :=
      mul_le_mul_of_nonneg_left (actualDampedXiReturnTest_lower_abs_le hA) (abs_nonneg q)
    _ = _ := by unfold actualConstantSectorLowerBudget; ring

/-- Only the genuine constant-sector payment vanishes at all real scales. -/
theorem actualConstantSectorLowerBudget_div_square_tendsto_zero (q : ℝ) :
    Tendsto (fun A : ℝ => actualConstantSectorLowerBudget q / A ^ 2) atTop (𝓝 (0 : ℝ)) := by
  have h := ((tendsto_inv_atTop_zero :
    Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0 : ℝ))).pow 2).const_mul
      (actualConstantSectorLowerBudget q)
  simpa only [inv_pow, div_eq_mul_inv, zero_pow (by norm_num : 2 ≠ 0), mul_zero] using h

/-- The exact centered actual return is asymptotically equal to the original actual tail. -/
theorem completeXiTail_sub_centered_tendsto_zero (q : ℝ) :
    Tendsto (fun A : ℝ => completeXiTail A - actualCenteredDampedXiReturn A q)
      atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    (actualConstantSectorLowerBudget_div_square_tendsto_zero q)
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact completeXiTail_sub_centered_abs_le hA q

end
end FormalResearch.RiemannHypothesis.SourceActualXiCenteredDampedReturn
