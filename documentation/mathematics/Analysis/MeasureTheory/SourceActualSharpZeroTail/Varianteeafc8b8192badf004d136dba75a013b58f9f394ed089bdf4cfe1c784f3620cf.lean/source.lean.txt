-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.PoleNormJointStripLe.Variant2dfc7b79ad98656246deda25895e77fc68467175caecca4b51a9b0b0c25d8068","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2dfc7b79ad98656246deda25895e77fc68467175caecca4b51a9b0b0c25d8068","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.PoleNormJointStripLe.Variant2dfc7b79ad98656246deda25895e77fc68467175caecca4b51a9b0b0c25d8068","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"2dfc7b79ad98656246deda25895e77fc68467175caecca4b51a9b0b0c25d8068","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-formal/source-mellin-sharp/attempt01/SourceActualSharpZeroTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroTailBudget

/-! Sharpen the omitted actual zero-tail source coefficient. The finite head
retains its ordinary complex square and independent signed lower-cap obligation.
Direction and conceptual origin: grwtsk contributors.
Source comparison and native construction: OpenAI Codex mathematical coordinator. -/

namespace GRWTSK.Analysis.MeasureTheory.PoleNormJointStripLe.Variant2dfc7b79ad98656246deda25895e77fc68467175caecca4b51a9b0b0c25d8068

set_option autoImplicit false
noncomputable section
namespace RH16ActualSharpZeroTail
open MeasureTheory Set Zeta23
open FormalResearch.RiemannHypothesis
open SourcePairing SourceBumpLaplace SourceActualBumpVerticalBudget
open SourceActualBumpMellinLineBudget SourceActualBumpMovingHeight
open SourceActualInitialPrimeContour SourceActualPrimeBumpDictionary
open SourceActualFullZeroContour SourceActualZeroTailCount SourceActualZeroTailBudget

/-- The two source pole factors are compared jointly, retaining their strip interaction. -/
theorem pole_norm_joint_strip_le (s : ℂ) (hs : 0 ≤ s.re ∧ s.re ≤ 1)
    (ht : 1 ≤ |s.im|) : ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 ≤ s.im ^ 4 + s.im ^ 2 := by
  have h1 : ‖s‖ ^ 2 = s.re ^ 2 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply]
    ring
  have h2 : ‖s - 1‖ ^ 2 = (s.re - 1) ^ 2 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
      Complex.sub_im, Complex.one_re, Complex.one_im, sub_zero]
    ring
  let u : ℝ := s.re * (1 - s.re)
  have hu : 0 ≤ u := mul_nonneg hs.1 (by linarith)
  have hu1 : u ≤ 1 / 4 := by
    dsimp [u]
    nlinarith [sq_nonneg (s.re - 1 / 2)]
  have ht2 : 1 ≤ s.im ^ 2 := by nlinarith [sq_abs s.im]
  have hp : 0 ≤ u * (2 * s.im ^ 2 - u) := mul_nonneg hu (by linarith)
  rw [h1, h2]
  have he : (s.re ^ 2 + s.im ^ 2) * ((s.re - 1) ^ 2 + s.im ^ 2) =
      s.im ^ 4 + s.im ^ 2 - u * (2 * s.im ^ 2 - u) := by dsimp [u]; ring
  rw [he]
  linarith

private theorem endpoint_minus_norm_le (z : ℂ) :
    ‖z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105‖ ≤
      ‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105 := by
  have h1 := norm_add_le (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z) (105 : ℂ)
  have h2 := norm_sub_le (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2) (105 * z)
  have h3 := norm_add_le (z ^ 4 - 10 * z ^ 3) (45 * z ^ 2)
  have h4 := norm_sub_le (z ^ 4) (10 * z ^ 3)
  simp only [norm_mul, norm_pow] at h1 h2 h3 h4
  norm_num at h1 h2 h3 h4
  linarith

private theorem endpoint_plus_norm_le (z : ℂ) :
    ‖z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105‖ ≤
      ‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105 := by
  have h1 := norm_add_le (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z) (105 : ℂ)
  have h2 := norm_add_le (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2) (105 * z)
  have h3 := norm_add_le (z ^ 4 + 10 * z ^ 3) (45 * z ^ 2)
  have h4 := norm_add_le (z ^ 4) (10 * z ^ 3)
  simp only [norm_mul, norm_pow] at h1 h2 h3 h4
  norm_num at h1 h2 h3 h4
  linarith

/-- Both reflected exponential endpoints and every polynomial jet stay in the estimate. -/
theorem actual_bump_complete_endpoint_norm_le (z : ℂ) (hz : z ≠ 0) :
    ‖bumpLaplace z‖ ≤
      384 * (Real.exp z.re + Real.exp (-z.re)) *
        (‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105) / ‖z‖ ^ 9 := by
  rw [bump_laplace_endpoint_formula z hz, norm_mul, norm_div, norm_pow]
  norm_num
  have h := norm_sub_le
    (Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105))
    (Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105))
  simp only [norm_mul, Complex.norm_exp, Complex.neg_re] at h
  have hm := mul_le_mul_of_nonneg_left (endpoint_minus_norm_le z) (Real.exp_pos _).le
  have hp := mul_le_mul_of_nonneg_left (endpoint_plus_norm_le z) (Real.exp_pos _).le
  have hi :
      ‖Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
        Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)‖ ≤
      (Real.exp z.re + Real.exp (-z.re)) *
        (‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105) := by
    nlinarith only [h, hm, hp]
  have hd : 0 < ‖z‖ ^ 9 := pow_pos (norm_pos_iff.mpr hz) _
  apply (div_le_iff₀ hd).mpr
  field_simp
  exact mul_le_mul_of_nonneg_left hi (by norm_num : (0 : ℝ) ≤ 384)

end RH16ActualSharpZeroTail
