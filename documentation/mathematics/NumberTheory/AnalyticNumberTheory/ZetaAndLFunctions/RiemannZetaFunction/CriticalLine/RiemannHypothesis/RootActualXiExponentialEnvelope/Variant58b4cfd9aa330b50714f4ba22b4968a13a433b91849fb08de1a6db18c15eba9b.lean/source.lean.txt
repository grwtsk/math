-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualXiExponentialEnvelopeConstant.Variant230c01443149d0f2bc0f50a8286dd52e896a03cd91224f1fa61185855f15fb4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"230c01443149d0f2bc0f50a8286dd52e896a03cd91224f1fa61185855f15fb4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualXiExponentialEnvelopeConstant.Variant230c01443149d0f2bc0f50a8286dd52e896a03cd91224f1fa61185855f15fb4d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"230c01443149d0f2bc0f50a8286dd52e896a03cd91224f1fa61185855f15fb4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T001854Z-1791332334398132000/RootActualXiExponentialEnvelope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualXiTailPrimitive
import Mathlib.MeasureTheory.Integral.ExpDecay

/-!
The literal shifted Chebyshev primitive has an unconditional exponential
envelope, with every closed prime power and gamma head retained. This supplies
its genuine Laplace integrability only to the right of one half. It supplies
no uniform primitive average or original signed arithmetic witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualXiExponentialEnvelopeConstant.Variant230c01443149d0f2bc0f50a8286dd52e896a03cd91224f1fa61185855f15fb4d

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualXiExponentialEnvelope
open MeasureTheory Set Filter
open scoped Interval Topology
open RootActualXiTailPrimitive RH16ActualPsiNegativeBlock
noncomputable section

/-- The explicit coefficient uses the actual original gamma correction. -/
def actualXiExponentialEnvelopeConstant : ℝ :=
  Real.log 4 + 5 + |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)|

private theorem coefficient_nonneg : 0 ≤ actualXiExponentialEnvelopeConstant := by
  unfold actualXiExponentialEnvelopeConstant
  positivity

/-- The true closed arithmetic density has an unconditional exponential envelope. -/
theorem actualXiTailTimeDensity_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |actualXiTailTimeDensity t| ≤ actualXiExponentialEnvelopeConstant * Real.exp (t / 2) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht
  have he1 : 1 ≤ Real.exp t := Real.one_le_exp_iff.mpr ht0
  have hp := Chebyshev.psi_le_const_mul_self (Real.exp_pos t).le
  have ha : |shiftedActualChebyshev (Real.exp t)| ≤
      actualXiExponentialEnvelopeConstant * Real.exp t := by
    have hh := (abs_add_le (Chebyshev.psi (Real.exp t) - Real.exp t) c).trans
      (add_le_add_right (abs_sub (Chebyshev.psi (Real.exp t)) (Real.exp t)) |c|)
    rw [abs_of_nonneg (Chebyshev.psi_nonneg _), abs_of_pos (Real.exp_pos _)] at hh
    unfold shiftedActualChebyshev actualXiExponentialEnvelopeConstant
    change |Chebyshev.psi (Real.exp t) - Real.exp t + c| ≤
      (Real.log 4 + 5 + |c|) * Real.exp t
    nlinarith [abs_nonneg c]
  rw [actualXiTailTimeDensity, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (actualXiExponentialEnvelopeConstant * Real.exp t) * Real.exp (-t / 2) :=
      mul_le_mul_of_nonneg_right ha (Real.exp_pos _).le
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2 <;> ring

/-- Genuine finite L1 precedes integration of the original signed density. -/
theorem actualAnchoredXiTailPrimitive_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |actualAnchoredXiTailPrimitive t| ≤
      2 * actualXiExponentialEnvelopeConstant * (Real.exp (t / 2) - Real.sqrt 7) := by
  let D := actualXiExponentialEnvelopeConstant
  have hi : IntervalIntegrable (fun r : ℝ => D * Real.exp (r / 2)) volume
      (Real.log 7) t := (by fun_prop : Continuous (fun r : ℝ => D * Real.exp (r / 2)))
        .intervalIntegrable _ _
  have hh := intervalIntegral.norm_integral_le_of_norm_le ht
    (Eventually.of_forall (fun r hr => by
      rw [Real.norm_eq_abs]
      exact actualXiTailTimeDensity_abs_le hr.1.le)) hi
  have hd (r : ℝ) : HasDerivAt (fun r : ℝ => 2 * D * Real.exp (r / 2))
      (D * Real.exp (r / 2)) r := by
    convert (((hasDerivAt_id r).div_const 2).exp.const_mul (2 * D)) using 1 <;> ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi
  rw [he, Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)] at hh
  change |∫ r in Real.log 7..t, actualXiTailTimeDensity r| ≤ _
  simpa only [Real.norm_eq_abs, D, mul_sub] using hh

end
end FormalResearch.RiemannHypothesis.RootActualXiExponentialEnvelope
