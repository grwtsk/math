-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.OneAddNormLeTwice.Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.OneAddNormLeTwice.Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6","mathematical_subject":"Analysis.Integration","original_sha256":"00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/CandidateLineBoundsModule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ReducedFilterInverse
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedQuotientBudget
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-! Genuine vertical-line bounds for the unchanged analytic controller candidate. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.OneAddNormLeTwice.Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6

set_option autoImplicit false
namespace CandidateLineBoundsScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic MobiusPoleNumerator
open ReducedFilterInverseScratch CorrectedQuotientBudgetScratch
noncomputable section

/-- A simple coercive norm bound on the closed right half-plane. -/
theorem one_add_norm_le_twice (w : ℂ) (hw : 0 ≤ w.re) :
    1 + ‖w‖ ≤ 2 * ‖1 + w‖ := by
  have h1 : 1 ≤ ‖1 + w‖ := by
    have h := Complex.re_le_norm (1 + w)
    simp only [Complex.add_re, Complex.one_re] at h
    linarith
  have hsq : ‖w‖^2 ≤ ‖1+w‖^2 := by
    simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply,
      Complex.add_re, Complex.one_re, Complex.add_im, Complex.one_im, zero_add]
    nlinarith
  nlinarith [norm_nonneg w, norm_nonneg (1+w)]

private theorem candidate_parameter_decay (ε : ℝ) (hε : 0 < ε) (C : ℝ) (hC : 0 < C)
    (hbound : ∀ w : ℂ, ε ≤ w.re → ‖(reducedW w)⁻¹‖ ≤ C*(1+‖w‖)^4)
    (X : ℕ) (hX : 1 ≤ X) (h : ℝ) (hh : 0 < h) (hh1 : h ≤ 1)
    (z : ℂ) (hz : 0 ≤ z.re) :
    ‖candidate X ε h z‖ ≤
      256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))*h⁻¹^3 /
        (1+h*|z.im|)^3 := by
  let w : ℂ := z + (ε : ℂ)
  have hw : ε ≤ w.re := by change ε ≤ z.re + ε; linarith
  have hw0 : 0 ≤ w.re := hε.le.trans hw
  have hD := correctedQuotient_norm_le X hX w hw0
  have hR := hbound w hw
  have hden := one_add_norm_le_twice w hw0
  have hsden := one_add_norm_le_twice ((h : ℂ)*w) (by
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    exact mul_nonneg hh.le hw0)
  have hhr : ‖(h : ℂ)*w‖ = h*‖w‖ := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hh]
  rw [hhr] at hsden
  have hp : 0 < 1+‖w‖ := by positivity
  have hhp : 0 < 1+h*‖w‖ := by positivity
  have hdn : 0 < ‖1+w‖ := by linarith
  have hsn : 0 < ‖1+(h : ℂ)*w‖ := by linarith
  have hs : ‖(1+(h : ℂ)*w)⁻¹‖ ≤ 2/(1+h*‖w‖) := by
    rw [norm_inv, inv_eq_one_div]
    apply (div_le_div_iff₀ hsn hhp).mpr
    simpa only [one_mul] using hsden
  have ho : ‖(1+w)⁻¹‖ ≤ 2/(1+‖w‖) := by
    rw [norm_inv, inv_eq_one_div]
    apply (div_le_div_iff₀ hdn hp).mpr
    simpa only [one_mul] using hden
  have hlog : 0 ≤ 1+Real.log (X : ℝ) := by
    have hx : (1 : ℝ) ≤ X := by exact_mod_cast hX
    linarith [Real.log_nonneg hx]
  have hexact : ‖candidate X ε h z‖ =
      ‖correctedQuotient X w‖ * ‖(reducedW w)⁻¹‖ *
        ‖(1+(h : ℂ)*w)⁻¹‖^6 * ‖(1+w)⁻¹‖ := by
    unfold candidate quotient
    simp only [div_eq_mul_inv, norm_mul, norm_pow, w, add_assoc]
  have hraw : ‖candidate X ε h z‖ ≤
      (2*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) * (C*(1+‖w‖)^4) *
        (2/(1+h*‖w‖))^6 * (2/(1+‖w‖)) := by
    rw [hexact]
    gcongr
  have hratio : (1+‖w‖)^3 ≤ h⁻¹^3 * (1+h*‖w‖)^3 := by
    have h1 : 1+‖w‖ ≤ h⁻¹*(1+h*‖w‖) := by
      apply (le_inv_mul_iff₀ hh).mpr
      nlinarith [hh1]
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity : 0 ≤ 1+‖w‖) h1 3
  have him : h*|z.im| ≤ h*‖w‖ := by
    apply mul_le_mul_of_nonneg_left _ hh.le
    have hi := Complex.abs_im_le_norm w
    simpa only [w, Complex.add_im, Complex.ofReal_im, add_zero] using hi
  calc
    _ ≤ (2*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) * (C*(1+‖w‖)^4) *
        (2/(1+h*‖w‖))^6 * (2/(1+‖w‖)) := hraw
    _ = (256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) *
        (1+‖w‖)^3 / (1+h*‖w‖)^6 := by field_simp; ring
    _ ≤ (256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) *
        (h⁻¹^3*(1+h*‖w‖)^3) / (1+h*‖w‖)^6 := by gcongr
    _ = (256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) *
        h⁻¹^3 / (1+h*‖w‖)^3 := by field_simp
    _ ≤ _ := by
      apply div_le_div_of_nonneg_left (by positivity) (by positivity)
      gcongr

/-- One source-only constant controls every candidate vertical line and every finite cutoff. -/
theorem candidate_vertical_decay (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ (X : ℕ), 1 ≤ X → ∀ h : ℝ, 0 < h → h ≤ 1 →
      ∀ σ : ℝ, 0 ≤ σ → ∀ t : ℝ,
        ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖ ≤
          C * Real.sqrt (X : ℝ) * (1+Real.log (X : ℝ)) * h⁻¹^3 /
            (1+h*|t|)^3 := by
  obtain ⟨C, hC, hb⟩ := reducedW_inverse_uniform_bound ε hε
  refine ⟨256*C, by positivity, ?_⟩
  intro X hX h hh hh1 σ hσ t
  simpa using candidate_parameter_decay ε hε C hC hb X hX h hh hh1
    ((σ : ℂ)+(t : ℂ)*Complex.I) (by simpa using hσ)

/-- The scaled Cauchy majorant is genuinely integrable, with its exact whole-line mass. -/
theorem scaled_cauchy_integrable_integral (h : ℝ) (hh : 0 < h) :
    Integrable (fun t : ℝ => (1+(h*t)^2)⁻¹) ∧
      (∫ t : ℝ, (1+(h*t)^2)⁻¹) = Real.pi / h := by
  constructor
  · exact integrable_inv_one_add_sq.comp_mul_left' hh.ne'
  · have hi := Measure.integral_comp_mul_left (fun t : ℝ => (1+t^2)⁻¹) h
    simpa only [integral_univ_inv_one_add_sq, abs_of_pos (inv_pos.mpr hh),
      smul_eq_mul, div_eq_mul_inv, mul_comm] using hi

private theorem candidate_square_majorant (X : ℕ) (ε h σ K : ℝ)
    (hh : 0 < h)
    (hdec : ∀ t : ℝ, ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖ ≤
      K/(1+h*|t|)^3) (t : ℝ) :
    ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2 ≤
      K^2 * (1+(h*t)^2)⁻¹ := by
  have hp : 0 < 1+h*|t| := by positivity
  have hpow : 1+(h*t)^2 ≤ (1+h*|t|)^6 := by
    have hbase : 1 ≤ 1+h*|t| := by linarith [mul_nonneg hh.le (abs_nonneg t)]
    have h26 := pow_le_pow_right₀ hbase (by omega : 2 ≤ 6)
    have h2 : 1+(h*t)^2 ≤ (1+h*|t|)^2 := by
      have hs : (h*|t|)^2 = (h*t)^2 := by rw [mul_pow, mul_pow, sq_abs]
      nlinarith [hs, mul_nonneg hh.le (abs_nonneg t)]
    exact h2.trans h26
  calc
    _ ≤ (K/(1+h*|t|)^3)^2 := by
      exact pow_le_pow_left₀ (norm_nonneg _) (hdec t) 2
    _ = K^2/(1+h*|t|)^6 := by simp only [div_pow, ← pow_mul]
    _ ≤ K^2/(1+(h*t)^2) :=
      div_le_div_of_nonneg_left (sq_nonneg K) (by positivity) hpow
    _ = _ := by rw [div_eq_mul_inv]

/-- Every candidate line has a genuine square integral with one uniform source-only budget. -/
theorem candidate_line_square_integrable_bound (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ (X : ℕ), 1 ≤ X → ∀ h : ℝ, 0 < h → h ≤ 1 →
      ∀ σ : ℝ, 0 ≤ σ →
        Integrable (fun t : ℝ =>
          ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) ∧
        (∫ t : ℝ, ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) ≤
          C * (X : ℝ) * (1+Real.log (X : ℝ))^2 * h⁻¹^7 := by
  obtain ⟨D, hD, hd⟩ := candidate_vertical_decay ε hε
  refine ⟨Real.pi*D^2, by positivity, ?_⟩
  intro X hX h hh hh1 σ hσ
  let K : ℝ := D * Real.sqrt (X : ℝ) * (1+Real.log (X : ℝ)) * h⁻¹^3
  have hdec : ∀ t : ℝ, ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖ ≤
      K/(1+h*|t|)^3 := hd X hX h hh hh1 σ hσ
  have hmajor := candidate_square_majorant X ε h σ K hh hdec
  have hc : Continuous (fun t : ℝ => candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simpa using hσ)).continuousAt.comp
      (by fun_prop)
  have hi := (scaled_cauchy_integrable_integral h hh).1.const_mul (K^2)
  have hfi : Integrable (fun t : ℝ =>
      ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) := by
    apply hi.mono' (hc.norm.pow 2).aestronglyMeasurable
    filter_upwards with t
    change |‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _)]
    exact hmajor t
  refine ⟨hfi, ?_⟩
  calc
    _ ≤ ∫ t : ℝ, K^2 * (1+(h*t)^2)⁻¹ :=
      integral_mono hfi hi hmajor
    _ = K^2 * (Real.pi/h) := by
      rw [integral_const_mul, (scaled_cauchy_integrable_integral h hh).2]
    _ = _ := by
      dsimp [K]
      have hs : (Real.sqrt (X : ℝ))^2 = (X : ℝ) := Real.sq_sqrt (Nat.cast_nonneg _)
      simp only [mul_pow, hs, div_eq_mul_inv]
      ring

end
end CandidateLineBoundsScratch
