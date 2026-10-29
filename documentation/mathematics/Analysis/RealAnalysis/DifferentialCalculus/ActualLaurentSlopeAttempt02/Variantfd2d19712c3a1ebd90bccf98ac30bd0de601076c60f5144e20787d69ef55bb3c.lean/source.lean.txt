-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RegularNegativeLogDerivative.Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.RegularNegativeLogDerivative.Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d","mathematical_subject":"Analysis.Calculus","original_sha256":"ad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass20/laurent_coefficient/ActualLaurentSlope-attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.Analysis.Calculus.Deriv.Slope


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RegularNegativeLogDerivative.Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d

open Filter Topology

noncomputable section

namespace ContinuousResearch.ActualLaurentSlope

/-- Actual regular negative logarithmic derivative; no supplied coefficient. -/
def regularNegativeLogDerivative (z : ℂ) : ℂ :=
  - deriv riemannZeta₁ z / riemannZeta₁ z

theorem actual_regular_zeta_derivative (z : ℂ) :
    deriv riemannZeta₁ z = riemannZeta₀ z + (z - 1) * deriv riemannZeta₀ z := by
  unfold riemannZeta₁
  rw [deriv_const_add, deriv_fun_mul (by fun_prop) (by fun_prop)]
  simp

theorem actual_regular_zeta_second_derivative_at_one :
    HasDerivAt (deriv riemannZeta₁) (2 * deriv riemannZeta₀ 1) 1 := by
  have hr := (differentiable_riemannZeta₀ 1).hasDerivAt
  have hrr := (differentiable_riemannZeta₀.deriv 1).hasDerivAt
  have hid := (hasDerivAt_id (1 : ℂ)).sub_const 1
  have h := hr.add (hid.mul hrr)
  have hfun : deriv riemannZeta₁ =
      fun z => riemannZeta₀ z + (z - 1) * deriv riemannZeta₀ z := by
    funext z
    exact actual_regular_zeta_derivative z
  rw [hfun]
  simpa [two_mul] using h

theorem actual_regular_negative_value :
    regularNegativeLogDerivative 1 = -(Real.eulerMascheroniConstant : ℂ) := by
  simp [regularNegativeLogDerivative]

theorem actual_regular_negative_derivative :
    HasDerivAt regularNegativeLogDerivative
      ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1) 1 := by
  have h1 := (differentiable_riemannZeta₁ 1).hasDerivAt
  have h := actual_regular_zeta_second_derivative_at_one.neg.div h1 (by simp)
  convert! h using 1
  · rfl
  · simp
    ring

theorem actual_regular_negative_slope :
    Tendsto (fun u : ℂ =>
      (regularNegativeLogDerivative (1 + u) + (Real.eulerMascheroniConstant : ℂ)) / u)
      (𝓝[≠] 0)
      (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1)) := by
  simpa [actual_regular_negative_value, add_comm, div_eq_mul_inv, mul_comm] using
    actual_regular_negative_derivative.tendsto_slope_zero

theorem actual_negative_log_regularization :
    ∀ᶠ z : ℂ in 𝓝[≠] 1,
      - deriv riemannZeta z / riemannZeta z - (z - 1)⁻¹ =
        regularNegativeLogDerivative z := by
  filter_upwards [log_deriv_riemannZeta_eq_neg_inv_sub_add] with z hz
  unfold regularNegativeLogDerivative
  rw [neg_div, hz]
  ring

end ContinuousResearch.ActualLaurentSlope
