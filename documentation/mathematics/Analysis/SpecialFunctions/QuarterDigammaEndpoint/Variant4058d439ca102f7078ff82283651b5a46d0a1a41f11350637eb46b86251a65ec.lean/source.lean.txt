-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.GammaOfPositiveNonzero.Variant4e35e263e2a6cf26bb58e5faf86c48b2ee0d8f6e3ae40ca256c5f94f9a179f33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e35e263e2a6cf26bb58e5faf86c48b2ee0d8f6e3ae40ca256c5f94f9a179f33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.GammaOfPositiveNonzero.Variant4e35e263e2a6cf26bb58e5faf86c48b2ee0d8f6e3ae40ca256c5f94f9a179f33","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"4e35e263e2a6cf26bb58e5faf86c48b2ee0d8f6e3ae40ca256c5f94f9a179f33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass9/gamma_fourier/QuarterDigammaEndpoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Tactic

/-! Scratch exact quarter endpoint for the independently defined complex psi.
Actual Gamma reflection and duplication, differentiated logarithmically; no
choice of logarithm of Gamma or quoted psi value is an assumption.
Direction: grwtsk contributors. Scratch derivation: OpenAI Codex. -/

namespace GRWTSK.Analysis.SpecialFunctions.GammaOfPositiveNonzero.Variant4e35e263e2a6cf26bb58e5faf86c48b2ee0d8f6e3ae40ca256c5f94f9a179f33

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.QuarterDigammaEndpoint

theorem gamma_of_positive_nonzero {x : ℝ} (hx : 0 < x) :
    Complex.Gamma (x : ℂ) ≠ 0 := by
  rw [Complex.Gamma_ofReal, Complex.ofReal_ne_zero]
  exact (Real.Gamma_pos_of_pos hx).ne'

theorem gamma_of_positive_differentiable {x : ℝ} (hx : 0 < x) :
    DifferentiableAt ℂ Complex.Gamma (x : ℂ) := by
  apply Complex.differentiableAt_Gamma
  intro n hn
  have he := congrArg Complex.re hn
  simp only [Complex.ofReal_re, Complex.neg_re, Complex.natCast_re] at he
  linarith [Nat.cast_nonneg (α := ℝ) n]

theorem reflection_quarter :
    Complex.digamma (1/4) - Complex.digamma (3/4) = -(Real.pi : ℂ) := by
  have h1 := gamma_of_positive_nonzero (by norm_num : (0:ℝ) < 1/4)
  have h3 := gamma_of_positive_nonzero (by norm_num : (0:ℝ) < 3/4)
  have d1 := gamma_of_positive_differentiable (by norm_num : (0:ℝ) < 1/4)
  have d3 := gamma_of_positive_differentiable (by norm_num : (0:ℝ) < 3/4)
  norm_num only [Complex.ofReal_div, Complex.ofReal_one, Complex.ofReal_ofNat] at h1 h3 d1 d3
  have dg : DifferentiableAt ℂ (fun z : ℂ => Complex.Gamma (1-z)) (1/4) := by
    have dt : DifferentiableAt ℂ Complex.Gamma (1-(1/4:ℂ)) := by norm_num; exact d3
    exact dt.comp (1/4) ((differentiableAt_const (1:ℂ)).sub differentiableAt_id)
  have hg : logDeriv (fun z : ℂ => Complex.Gamma (1-z)) (1/4) =
      -Complex.digamma (3/4) := by
    change logDeriv (Complex.Gamma ∘ fun z : ℂ => 1-z) (1/4) = _
    rw [logDeriv_comp (by norm_num; exact d3) (by fun_prop)]
    norm_num [Complex.digamma_def, deriv_const_sub]
  have he : (fun z : ℂ => Complex.Gamma z*Complex.Gamma (1-z)) =
      (fun z : ℂ => (Real.pi:ℂ)/Complex.sin ((Real.pi:ℂ)*z)) :=
    funext Complex.Gamma_mul_Gamma_one_sub
  have h := congrArg (fun f : ℂ → ℂ => logDeriv f (1/4)) he
  rw [logDeriv_mul (1/4) h1 (by norm_num; exact h3) d1 dg, hg] at h
  have hs : Complex.sin ((Real.pi:ℂ)*(1/4)) ≠ 0 := by
    have hval : Complex.sin ((Real.pi:ℂ)*(1/4)) = (Real.sqrt 2 / 2 : ℝ) := by
      rw [show (Real.pi:ℂ)*(1/4) = ((Real.pi/4:ℝ):ℂ) by push_cast; ring,
        ← Complex.ofReal_sin, Real.sin_pi_div_four]
    rw [hval, Complex.ofReal_ne_zero]
    positivity
  have hcs : Complex.cos ((Real.pi:ℂ)*(1/4)) = Complex.sin ((Real.pi:ℂ)*(1/4)) := by
    rw [show (Real.pi:ℂ)*(1/4) = ((Real.pi/4:ℝ):ℂ) by push_cast; ring,
      ← Complex.ofReal_cos, ← Complex.ofReal_sin, Real.cos_pi_div_four, Real.sin_pi_div_four]
  have hd := (((Complex.hasDerivAt_sin ((Real.pi:ℂ)*(1/4))).comp (1/4)
    ((hasDerivAt_id (1/4:ℂ)).const_mul (Real.pi:ℂ))).inv hs).const_mul (Real.pi:ℂ)
  have hdd : deriv (fun z : ℂ => (Real.pi:ℂ)/Complex.sin ((Real.pi:ℂ)*z)) (1/4) =
      (Real.pi:ℂ)*(-(Complex.cos ((Real.pi:ℂ)*(1/4))*((Real.pi:ℂ)*1)) /
        Complex.sin ((Real.pi:ℂ)*(1/4))^2) := by
    simpa only [div_eq_mul_inv, Function.comp_def, Pi.inv_apply] using hd.deriv
  rw [logDeriv_apply (fun z : ℂ => (Real.pi:ℂ)/Complex.sin ((Real.pi:ℂ)*z)), hdd, hcs] at h
  have hp : (Real.pi:ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_ne_zero
  have hr : ((Real.pi:ℂ)*(-(Complex.sin ((Real.pi:ℂ)*(1/4))*((Real.pi:ℂ)*1)) /
      Complex.sin ((Real.pi:ℂ)*(1/4))^2)) /
      ((Real.pi:ℂ)/Complex.sin ((Real.pi:ℂ)*(1/4))) = -(Real.pi:ℂ) := by
    have hs' : Complex.sin ((Real.pi:ℂ)/4) ≠ 0 := by simpa only [mul_one_div] using hs
    field_simp [hs', hp]
  rw [hr] at h
  simpa only [Complex.digamma_def, sub_eq_add_neg] using h

theorem duplication_quarter :
    Complex.digamma (1/4) + Complex.digamma (3/4) =
      2*Complex.digamma (1/2) - 2*Complex.log 2 := by
  have h1 := gamma_of_positive_nonzero (by norm_num : (0:ℝ) < 1/4)
  have h3 := gamma_of_positive_nonzero (by norm_num : (0:ℝ) < 3/4)
  have hh := gamma_of_positive_nonzero (by norm_num : (0:ℝ) < 1/2)
  have d1 := gamma_of_positive_differentiable (by norm_num : (0:ℝ) < 1/4)
  have d3 := gamma_of_positive_differentiable (by norm_num : (0:ℝ) < 3/4)
  have dh := gamma_of_positive_differentiable (by norm_num : (0:ℝ) < 1/2)
  norm_num only [Complex.ofReal_div, Complex.ofReal_one, Complex.ofReal_ofNat] at h1 h3 hh d1 d3 dh
  have dplus : DifferentiableAt ℂ (fun z : ℂ => Complex.Gamma (z+1/2)) (1/4) := by
    have dt : DifferentiableAt ℂ Complex.Gamma ((1/4:ℂ)+1/2) := by norm_num; exact d3
    exact dt.comp (1/4) (differentiableAt_id.add_const _)
  have dtwo : DifferentiableAt ℂ (fun z : ℂ => Complex.Gamma (2*z)) (1/4) := by
    have dt : DifferentiableAt ℂ Complex.Gamma (2*(1/4:ℂ)) := by norm_num; exact dh
    exact dt.comp (1/4) (differentiableAt_id.const_mul _)
  have hp : (2:ℂ)^(1-2*(1/4:ℂ)) ≠ 0 := Complex.cpow_ne_zero_iff.mpr (Or.inl (by norm_num))
  have hdp : HasDerivAt (fun z : ℂ => (2:ℂ)^(1-2*z))
      ((2:ℂ)^(1-2*(1/4:ℂ))*Complex.log 2 * (-2)) (1/4) := by
    simpa using (((hasDerivAt_id (1/4:ℂ)).const_mul (2:ℂ)).const_sub 1).const_cpow
      (c := (2:ℂ)) (Or.inl (by norm_num))
  have ht : logDeriv (fun z : ℂ => (2:ℂ)^(1-2*z)) (1/4) = -2*Complex.log 2 := by
    rw [logDeriv_apply, hdp.deriv]
    field_simp
  have hgplus : logDeriv (fun z : ℂ => Complex.Gamma (z+1/2)) (1/4) =
      Complex.digamma (3/4) := by
    change logDeriv (Complex.Gamma ∘ fun z : ℂ => z+1/2) (1/4) = _
    rw [logDeriv_comp (by norm_num; exact d3) (by fun_prop)]
    norm_num [Complex.digamma_def]
  have hgtwo : logDeriv (fun z : ℂ => Complex.Gamma (2*z)) (1/4) =
      2*Complex.digamma (1/2) := by
    change logDeriv (Complex.Gamma ∘ fun z : ℂ => 2*z) (1/4) = _
    rw [logDeriv_comp (by norm_num; exact dh) (by fun_prop)]
    norm_num [Complex.digamma_def]
    ring
  have he : (fun z : ℂ => Complex.Gamma z*Complex.Gamma (z+1/2)) =
      (fun z : ℂ => Complex.Gamma (2*z)*(2:ℂ)^(1-2*z)*(Real.sqrt Real.pi:ℂ)) :=
    funext Complex.Gamma_mul_Gamma_add_half
  have h := congrArg (fun f : ℂ → ℂ => logDeriv f (1/4)) he
  rw [logDeriv_mul (1/4) h1 (by norm_num; exact h3) d1 dplus, hgplus,
    logDeriv_mul_const (1/4) (Real.sqrt Real.pi:ℂ) (by
      exact Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr Real.pi_pos).ne'),
    logDeriv_mul (1/4) (by norm_num; exact hh) hp dtwo hdp.differentiableAt,
    ht, hgtwo] at h
  simpa only [Complex.digamma_def, sub_eq_add_neg, neg_mul] using h

theorem actual_quarter_value :
    Complex.digamma (1/4) = -(Real.eulerMascheroniConstant:ℂ) -
      3*Complex.log 2 - (Real.pi:ℂ)/2 := by
  have hplus := duplication_quarter
  rw [Complex.digamma_one_half] at hplus
  linear_combination (hplus + reflection_quarter)/2

theorem actual_quarter_real_value :
    (Complex.digamma (1/4)).re = -Real.eulerMascheroniConstant -
      3*Real.log 2 - Real.pi/2 := by
  rw [actual_quarter_value]
  norm_num [Complex.sub_re, Complex.div_re, Complex.mul_re, Complex.log_re]

#print axioms gamma_of_positive_nonzero
#print axioms gamma_of_positive_differentiable
#print axioms reflection_quarter
#print axioms duplication_quarter
#print axioms actual_quarter_value
#print axioms actual_quarter_real_value
end ContinuousResearch.QuarterDigammaEndpoint
