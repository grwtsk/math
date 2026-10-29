-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SignedProfile.Variantfc060c4ea591cf048529e4ecd52842d9b1ff391129bbe9e82fd4ca8e5e8af3b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc060c4ea591cf048529e4ecd52842d9b1ff391129bbe9e82fd4ca8e5e8af3b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SignedProfile.Variantfc060c4ea591cf048529e4ecd52842d9b1ff391129bbe9e82fd4ca8e5e8af3b5","mathematical_subject":"Analysis.Integration","original_sha256":"fc060c4ea591cf048529e4ecd52842d9b1ff391129bbe9e82fd4ca8e5e8af3b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceSchedulingSignedProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceHybridQuadrature
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
# The actual signed arithmetic Peano profile

CSE-RH16-20261007. grwtsk contributors supplied the source direction,
selection, corrections and evaluation. OpenAI Codex supplied this finite
source-specific reconstruction. The signed integral cap remains open.
The source profile is distinct from the existing native bump Peano profile.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SignedProfile.Variantfc060c4ea591cf048529e4ecd52842d9b1ff391129bbe9e82fd4ca8e5e8af3b5

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceSchedulingSignedProfile

open MeasureTheory Set SourcePairing SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent CorrelationRegularity
open scoped Interval

/-- The derivative moment is zero at each native atom; all Λ(n)-1 coefficients remain. -/
def signedProfile (A t : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
      (if Real.log n ≤ t then t - Real.log n else 0)

/-- The profile before the real cutoff has a source formula independent of A. -/
theorem signedProfile_eq_closed_prefix (A t : ℝ) (ht : t ≤ 2 * A) :
    signedProfile A t = ∑ n ∈ primePowerInventory t,
      (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n * (t - Real.log n) := by
  unfold signedProfile
  simp only [mul_ite, mul_zero]
  rw [← Finset.sum_filter, primePowerInventory_filter_log (2 * A) t ht]

/-- Exact endpoint reconstruction; no absolute curvature envelope is inserted. -/
theorem second_endpoint_integral (f : ℝ → ℝ) (hf : ContDiff ℝ 2 f)
    (c T : ℝ) (hT : f T = 0) (hT' : deriv f T = 0) :
    (∫ t in c..T, (t - c) * deriv (deriv f) t) = f c := by
  have hf1 : ContDiff ℝ 1 f := hf.of_le (by norm_num)
  have hfd : ContDiff ℝ 1 (deriv f) := hf.deriv'
  rw [intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u := fun t : ℝ => t - c) (v := deriv f)
    (u' := fun _ => (1 : ℝ)) (v' := deriv (deriv f))
    (by fun_prop) hfd.continuous.continuousOn
    (fun t _ => (hasDerivAt_id t).sub_const c)
    (fun t _ => (hfd.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable c T)
    (hfd.continuous_deriv_one.intervalIntegrable c T)]
  simp only [sub_self, zero_mul, one_mul, hT', mul_zero, zero_sub]
  rw [intervalIntegral.integral_deriv_eq_sub
    (fun t _ => hf1.differentiable (by norm_num) t)
    (hf1.continuous_deriv_one.intervalIntegrable c T), hT]
  ring

/-- Finite exact integration of the actual signed profile, including cutoff events. -/
theorem signedProfile_integral_eq_compensated (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * signedProfile A t) =
        SourceKapitzaCompensatedReadout.compensatedSourceSum A := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  have hc : ContDiff ℝ 2 C := SourceCorrelationCurvature.sourceCorrelation_contDiff_two hp
  have hd : Continuous (deriv (deriv C)) := hc.deriv'.continuous_deriv_one
  have hi (n : ℕ) : IntervalIntegrable
      (fun t => if Real.log n ≤ t then (t - Real.log n) * deriv (deriv C) t else 0)
      volume 0 (2 * A) :=
    intervalIntegrable_closed_step 0 (2 * A) (Real.log n) _
      (((by fun_prop : Continuous (fun t : ℝ => t - Real.log n)).mul hd).intervalIntegrable
        0 (2 * A))
  have he : (fun t => deriv (deriv C) t * signedProfile A t) =
      fun t => ∑ n ∈ primePowerInventory (2 * A),
        (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
          (if Real.log n ≤ t then (t - Real.log n) * deriv (deriv C) t else 0) := by
    funext t
    unfold signedProfile
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    by_cases hn : Real.log n ≤ t <;> simp only [hn, if_true, if_false, mul_zero]
    ring
  change (∫ t in 0..2 * A, deriv (deriv C) t * signedProfile A t) = _
  rw [he, intervalIntegral.integral_finsetSum]
  · unfold SourceKapitzaCompensatedReadout.compensatedSourceSum
    apply Finset.sum_congr rfl
    intro n hn
    have hnlog := mangoldtInventory_log_bounds (2 * A) n hn
    rw [intervalIntegral.integral_const_mul,
      integral_closed_step 0 (2 * A) (Real.log n) hnlog.1 hnlog.2]
    rw [second_endpoint_integral C hc (Real.log n) (2 * A)
      (sourceCorrelation_upper_endpoint A hp)
      (EstimateSourceMobiusDerivative.sourceCorrelation_deriv_zero_of_two_mul_le
        A (2 * A) hp (le_refl _))]
    have hn0 : 0 < n := by
      have := (Finset.mem_Icc.mp hn).1
      omega
    rw [exponentialTest_log _ n hn0]
    dsimp only [C]
    ring
  · intro n _
    exact (hi n).const_mul _

/-- A one-sided integral bound is sufficient; no absolute profile or transport cost is required. -/
theorem estimate_of_signed_profile_cap (R B : ℝ) (hR : 200 ≤ R)
    (hcap : ∀ A : ℝ, R ≤ A →
      (∫ t in 0..2 * A,
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          signedProfile A t) ≤ B) : CorrelationAssembly.EstimateObligation := by
  apply SourceHybridQuadrature.estimate_of_compensated_cap R B hR
  intro A hRA
  rw [← signedProfile_integral_eq_compensated A (by linarith)]
  exact hcap A hRA

end FormalResearch.RiemannHypothesis.SourceSchedulingSignedProfile
