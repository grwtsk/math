-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFirstLogMixedValue.Variantcc6720a08ea8cd6263fc127065b5609094bbce49752387de025b4303dfa6b78f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc6720a08ea8cd6263fc127065b5609094bbce49752387de025b4303dfa6b78f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualFirstLogMixedValue.Variantcc6720a08ea8cd6263fc127065b5609094bbce49752387de025b4303dfa6b78f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"cc6720a08ea8cd6263fc127065b5609094bbce49752387de025b4303dfa6b78f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T205348Z-1791320028010099000/RootActualDoubleMixedPowerObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualDoubleMixedStrictWindowChallenge

/-!
The actual first strict source cell prevents a uniform pure fourth-power bound
for the ordinary second mixed logarithmic kernel. This is a kernel obstruction
only: neither the signed arithmetic work nor its compensation has a sign here.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFirstLogMixedValue.Variantcc6720a08ea8cd6263fc127065b5609094bbce49752387de025b4303dfa6b78f

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualDoubleMixedPowerObstruction
open SourceActualDoubleMixedKernel SourceActualStrictWindow
open RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

/-- The literal mixed derivative at the lower-time first strict column point. -/
def actualFirstLogMixedValue (A : ℝ) : ℝ :=
  deriv (fun y => deriv (fun x => actualLogMixedDensity A x y)
    (Real.log (vaughanCutoff A : ℝ)))
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))

/-- Its uniform lower bound is inside the actual closed-floor source support. -/
theorem actualFirstLogMixedValue_lower {A : ℝ} (hA : 25600 ≤ A) :
    (1 / 64 : ℝ) ≤ actualFirstLogMixedValue A ∧
      (vaughanCutoff A : ℝ) * ((vaughanCutoff A + 1 : ℕ) : ℝ) <
        (sourceKernelCutoff A : ℝ) := by
  have h := actualDoubleMixed_rectangle_strict_support hA le_rfl (by linarith)
    le_rfl (by push_cast; linarith)
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith : 1 ≤ A)
  rw [Real.exp_log hU] at h
  exact ⟨h.2, h.1⟩

/-- Every proposed fixed fourth-power coefficient fails on an actual arbitrarily late cell. -/
theorem actualFirstLogMixedValue_fourth_power_failure (M R : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 25600 ≤ A ∧ M / A ^ 4 < actualFirstLogMixedValue A := by
  let A := max (25600 : ℝ) (max R (128 * (|M| + 1)))
  have hA : 25600 ≤ A := le_max_left _ _
  have hRA : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hMA : 128 * (|M| + 1) ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hA1 : 1 ≤ A := by linarith
  have hA0 : 0 < A := by linarith
  have hA4 : A ≤ A ^ 4 := by
    nlinarith [sq_nonneg (A ^ 2 - 1),
      mul_nonneg (sub_nonneg.mpr hA1) hA0.le]
  have hsmall : M / A ^ 4 < (1 / 128 : ℝ) := by
    apply (div_lt_iff₀ (by positivity : 0 < A ^ 4)).mpr
    nlinarith [le_abs_self M]
  refine ⟨A, hRA, hA, ?_⟩
  exact hsmall.trans_le ((by norm_num : (1 / 128 : ℝ) ≤ 1 / 64).trans
    (actualFirstLogMixedValue_lower hA).1)

/-- Ordinary double Abel differentiation cannot have any fixed pure A^-4 tail majorant. -/
theorem actualFirstLogMixedValue_not_uniform_fourth_power :
    ¬ ∃ M R : ℝ, ∀ A : ℝ, R ≤ A → 25600 ≤ A →
      |actualFirstLogMixedValue A| ≤ M / A ^ 4 := by
  rintro ⟨M, R, h⟩
  obtain ⟨A, hRA, hA, hfail⟩ := actualFirstLogMixedValue_fourth_power_failure M R
  exact (not_lt_of_ge ((le_abs_self _).trans (h A hRA hA))) hfail

end
end FormalResearch.RiemannHypothesis.RootActualDoubleMixedPowerObstruction
