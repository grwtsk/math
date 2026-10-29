-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InverseSixNorm.Variante4fbeff4ceb3ccc01df571cc009706b3981e2d52700f9536871dd52c848acb16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4fbeff4ceb3ccc01df571cc009706b3981e2d52700f9536871dd52c848acb16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.InverseSixNorm.Variante4fbeff4ceb3ccc01df571cc009706b3981e2d52700f9536871dd52c848acb16","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e4fbeff4ceb3ccc01df571cc009706b3981e2d52700f9536871dd52c848acb16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-formal/source-actual-mixed-inward-positive/attempt10/SourceActualMixedInwardPositive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEndpointRecovery

/-! Actual invariant mixed plus inward endpoint positivity.
Direction grwtsk contributors; native construction Codex root.
Exact source recovery is imported; no ordinate or RH witness is assumed. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InverseSixNorm.Variante4fbeff4ceb3ccc01df571cc009706b3981e2d52700f9536871dd52c848acb16

set_option autoImplicit false
noncomputable section
namespace RH16ActualMixedInwardPositive
open RH16ActualEndpointRecovery

private theorem inverse_six_norm (z : ℂ) :
    ‖-(z⁻¹ ^ 6)‖ = 1 / (Complex.normSq z) ^ 3 := by
  rw [norm_neg, norm_pow, norm_inv]
  have hp : ‖z‖ ^ 6 = (Complex.normSq z) ^ 3 := by
    rw [show (6 : ℕ) = 2 * 3 by norm_num, pow_mul, Complex.sq_norm]
  rw [inv_pow, hp]
  simp only [one_div]

/-- The actual source inverse-sixth direction stays in a uniform negative real sector. -/
private theorem inverse_six_real_sector (z : ℂ) (hr : |z.re| ≤ 1 / 2)
    (hi : 12 ≤ |z.im|) : (31 / 32 : ℝ) * ‖-(z⁻¹ ^ 6)‖ ≤ (-(z⁻¹ ^ 6)).re := by
  have hr2 : z.re ^ 2 ≤ 1 / 4 := by nlinarith [sq_abs z.re, abs_nonneg z.re]
  have hi2 : 144 ≤ z.im ^ 2 := by nlinarith [sq_abs z.im]
  have hit : 0 < z.im ^ 2 := by linarith
  have hiz : z.im ≠ 0 := by intro h; norm_num [h] at hi
  have hn : 0 < Complex.normSq z := by
    rw [Complex.normSq_apply]
    nlinarith [sq_nonneg z.re]
  let x : ℝ := z.re ^ 2 / z.im ^ 2
  have hx0 : 0 ≤ x := by positivity
  have hx : x ≤ 1 / 576 := by
    dsimp [x]
    apply (div_le_iff₀ hit).mpr
    nlinarith
  have hx3 : x ^ 3 ≤ (1 / 576 : ℝ) ^ 3 := pow_le_pow_left₀ hx0 hx 3
  have hp : (31 / 32 : ℝ) * (1 + x) ^ 3 ≤
      1 - 15 * x + 15 * x ^ 2 - x ^ 3 := by
    nlinarith only [hx, hx3, sq_nonneg x]
  have hnn : Complex.normSq z = z.im ^ 2 * (1 + x) := by
    dsimp [x]
    rw [Complex.normSq_apply]
    field_simp
    ring
  have hre : (-(z⁻¹ ^ 6)).re =
      (z.im ^ 6 - 15 * z.re ^ 2 * z.im ^ 4 + 15 * z.re ^ 4 * z.im ^ 2 - z.re ^ 6) /
        (Complex.normSq z) ^ 6 := by
    simp only [Complex.neg_re, pow_succ, pow_zero, Complex.mul_re, Complex.mul_im,
      Complex.one_re, Complex.one_im, Complex.inv_re, Complex.inv_im]
    field_simp
    ring
  have hnum : (31 / 32 : ℝ) * (Complex.normSq z) ^ 3 ≤
      z.im ^ 6 - 15 * z.re ^ 2 * z.im ^ 4 + 15 * z.re ^ 4 * z.im ^ 2 - z.re ^ 6 := by
    have him6 : 0 ≤ z.im ^ 6 := by positivity
    have h := mul_le_mul_of_nonneg_left hp him6
    rw [hnn]
    dsimp [x] at h ⊢
    field_simp [hiz] at h ⊢
    have cancel (v : ℝ) : z.im * v / z.im = v := mul_div_cancel_left₀ v hiz
    simp only [mul_assoc, cancel] at h
    nlinarith only [h]
  rw [inverse_six_norm, hre]
  calc
    (31 / 32 : ℝ) * (1 / (Complex.normSq z) ^ 3) =
        ((31 / 32 : ℝ) * (Complex.normSq z) ^ 3) / (Complex.normSq z) ^ 6 := by
      field_simp
    _ ≤ _ := div_le_div_of_nonneg_right hnum (pow_nonneg hn.le 6)

private theorem inverse_source_radius {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (hi : 12 ≤ |z.im|) : ‖((A : ℂ) * z)⁻¹‖ ≤ 1 / 1092 := by
  have hn : 12 ≤ ‖z‖ := hi.trans (Complex.abs_im_le_norm z)
  rw [norm_inv, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by linarith : 0 ≤ A)]
  simpa only [one_div] using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1092)
    (show (1092 : ℝ) ≤ A * ‖z‖ by nlinarith)

private theorem endpoint_minus_small (w : ℂ) (hw : ‖w⁻¹‖ ≤ 1 / 1092) :
    ‖endpointMinus w‖ ≤ 101 / 100 := by
  have h1 := norm_add_le (1 + 10 / w + 45 / w ^ 2 + 105 / w ^ 3) (105 / w ^ 4 : ℂ)
  have h2 := norm_add_le (1 + 10 / w + 45 / w ^ 2) (105 / w ^ 3 : ℂ)
  have h3 := norm_add_le (1 + 10 / w) (45 / w ^ 2 : ℂ)
  have h4 := norm_add_le (1 : ℂ) (10 / w)
  simp only [div_eq_mul_inv, ← inv_pow, norm_mul, norm_pow] at h1 h2 h3 h4
  norm_num only [norm_one, Complex.norm_ofNat] at h1 h2 h3 h4
  have hpow2 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 2
  have hpow3 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 3
  have hpow4 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 4
  unfold endpointMinus
  simp only [div_eq_mul_inv, ← inv_pow]
  nlinarith only [h1, h2, h3, h4, hw, hpow2, hpow3, hpow4]

private theorem endpoint_product_small (w : ℂ) (hw : ‖w⁻¹‖ ≤ 1 / 1092) :
    ‖endpointPlus w * endpointMinus w - 1‖ ≤ 1 / 100000 := by
  rw [endpoint_product]
  have hid : (1 - 10 / w ^ 2 + 135 / w ^ 4 - 1575 / w ^ 6 + 11025 / w ^ 8 : ℂ) - 1 =
      -10 / w ^ 2 + 135 / w ^ 4 - 1575 / w ^ 6 + 11025 / w ^ 8 := by ring
  rw [hid]
  have h1 := norm_add_le (-10 / w ^ 2 + 135 / w ^ 4 - 1575 / w ^ 6) (11025 / w ^ 8 : ℂ)
  have h2 := norm_sub_le (-10 / w ^ 2 + 135 / w ^ 4) (1575 / w ^ 6 : ℂ)
  have h3 := norm_add_le (-10 / w ^ 2 : ℂ) (135 / w ^ 4)
  simp only [div_eq_mul_inv, ← inv_pow, norm_mul, norm_pow] at h1 h2 h3
  norm_num only [norm_neg, Complex.norm_ofNat, norm_mul] at h1 h2 h3
  have hpow2 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 2
  have hpow4 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 4
  have hpow6 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 6
  have hpow8 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 8
  simp only [div_eq_mul_inv, ← inv_pow]
  nlinarith only [h1, h2, h3, hpow2, hpow4, hpow6, hpow8]

private theorem lower_factor_small (z : ℂ) (hi : 12 ≤ |z.im|) :
    ‖(1 - 1 / (4 * z ^ 2) : ℂ) - 1‖ ≤ 1 / 500 := by
  have hn : 12 ≤ ‖z‖ := hi.trans (Complex.abs_im_le_norm z)
  have hnpos : 0 < ‖z‖ := by linarith
  have heq : (1 - 1 / (4 * z ^ 2) : ℂ) - 1 = -(1 / (4 * z ^ 2)) := by ring
  rw [heq, norm_neg, norm_div, norm_mul, norm_pow]
  norm_num only [norm_one, Complex.norm_ofNat]
  apply (div_le_iff₀ (by positivity : 0 < 4 * ‖z‖ ^ 2)).mpr
  nlinarith

private theorem lower_factor_norm (z : ℂ) (hi : 12 ≤ |z.im|) :
    ‖(1 - 1 / (4 * z ^ 2) : ℂ)‖ ≤ 501 / 500 := by
  have h := norm_add_le ((1 - 1 / (4 * z ^ 2) : ℂ) - 1) (1 : ℂ)
  have hs := lower_factor_small z hi
  rw [sub_add_cancel] at h
  norm_num only [norm_one] at h
  linarith

private theorem combined_factor_small {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (hi : 12 ≤ |z.im|) :
    ‖(1 - 1 / (4 * z ^ 2)) ^ 2 * endpointPlus ((A : ℂ) * z) *
      endpointMinus ((A : ℂ) * z) - 1‖ ≤ 1 / 200 := by
  let L : ℂ := 1 - 1 / (4 * z ^ 2)
  let P : ℂ := endpointPlus ((A : ℂ) * z) * endpointMinus ((A : ℂ) * z)
  have hl := lower_factor_small z hi
  have hln := lower_factor_norm z hi
  have hp := endpoint_product_small ((A : ℂ) * z) (inverse_source_radius hA z hi)
  have hid : L ^ 2 * P - 1 = (L - 1) * (L - 1) + 2 * (L - 1) + L ^ 2 * (P - 1) := by ring
  have h1 := norm_add_le ((L - 1) * (L - 1) + 2 * (L - 1)) (L ^ 2 * (P - 1))
  have h2 := norm_add_le ((L - 1) * (L - 1)) (2 * (L - 1))
  simp only [norm_mul, norm_pow] at h1 h2
  norm_num at h1 h2
  change ‖L - 1‖ ≤ 1 / 500 at hl
  change ‖L‖ ≤ 501 / 500 at hln
  change ‖P - 1‖ ≤ 1 / 100000 at hp
  have hs : ‖L - 1‖ * ‖L - 1‖ ≤ (1 / 500 : ℝ) ^ 2 := by nlinarith [norm_nonneg (L - 1)]
  have hls : ‖L‖ ^ 2 ≤ (501 / 500 : ℝ) ^ 2 := pow_le_pow_left₀ (norm_nonneg L) hln 2
  have hps : ‖L‖ ^ 2 * ‖P - 1‖ ≤ (501 / 500 : ℝ) ^ 2 / 100000 := by
    calc
      _ ≤ (501 / 500 : ℝ) ^ 2 * ‖P - 1‖ := mul_le_mul_of_nonneg_right hls (norm_nonneg _)
      _ ≤ _ := by nlinarith only [hp]
  change ‖L ^ 2 * endpointPlus ((A : ℂ) * z) * endpointMinus ((A : ℂ) * z) - 1‖ ≤ 1 / 200
  rw [mul_assoc]
  change ‖L ^ 2 * P - 1‖ ≤ 1 / 200
  rw [hid]
  nlinarith only [h1, h2, hs, hl, hps]

private theorem real_product_near_one (W F : ℂ) (hF : ‖F - 1‖ ≤ 1 / 200) :
    W.re - ‖W‖ / 200 ≤ (W * F).re := by
  have h := Complex.abs_re_le_norm (W * (F - 1))
  have hm : ‖W * (F - 1)‖ ≤ ‖W‖ / 200 := by
    rw [norm_mul]
    nlinarith only [hF, norm_nonneg W]
  have heq : (W * (F - 1)).re = (W * F).re - W.re := by
    rw [mul_sub, mul_one, Complex.sub_re]
  rw [heq] at h
  have hneg := (abs_le.mp (h.trans hm)).1
  linarith

private theorem common_factor (A : ℝ) (z : ℂ) (hz : z ≠ 0) :
    endpointCommon A z =
      ((384 ^ 2 /
        (FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A * A ^ 9) : ℝ) : ℂ) *
        (z⁻¹ ^ 6) * (1 - 1 / (4 * z ^ 2)) ^ 2 := by
  unfold endpointCommon
  field_simp [hz]

/-- The actual invariant sector absorbs the complete inward endpoint on the right strip. -/
theorem actual_mixed_inward_right {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (ha0 : 0 ≤ z.re) (ha : z.re ≤ 1 / 2) (hi : 12 ≤ |z.im|) :
    (9 / 10 : ℝ) * (384 ^ 2 /
      (FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A * A ^ 9)) *
      ‖-(z⁻¹ ^ 6)‖ < (invariantMixed A z + negativeEndpoint A z).re := by
  let k : ℝ := 384 ^ 2 /
    (FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A * A ^ 9)
  let W : ℂ := -(z⁻¹ ^ 6)
  let L : ℂ := 1 - 1 / (4 * z ^ 2)
  let F : ℂ := L ^ 2 * endpointPlus ((A : ℂ) * z) * endpointMinus ((A : ℂ) * z)
  have hA1 : 1 ≤ A := by linarith
  have hk : 0 < k := by
    dsimp [k]
    exact div_pos (by norm_num) (mul_pos
      (FormalResearch.RiemannHypothesis.SourcePairing.source_normalization_pos A hA1)
      (pow_pos (by linarith) 9))
  have hz : z ≠ 0 := by intro h; norm_num [h] at hi
  have hw : 0 < ‖W‖ := by
    dsimp [W]
    rw [norm_neg, norm_pow, norm_inv]
    exact pow_pos (inv_pos.mpr (norm_pos_iff.mpr hz)) 6
  have hsector := inverse_six_real_sector z (by rw [abs_of_nonneg ha0]; exact ha) hi
  have hf : ‖F - 1‖ ≤ 1 / 200 := combined_factor_small hA z hi
  have hreal := real_product_near_one W F hf
  have hmixed : invariantMixed A z = (2 * k : ℝ) * (W * F) := by
    unfold invariantMixed
    rw [common_factor A z hz]
    dsimp [k, W, F, L]
    push_cast
    ring
  have hmr : (2 * k * ‖W‖) * (31 / 32 - 1 / 200) ≤ (invariantMixed A z).re := by
    rw [hmixed]
    simp only [Complex.re_ofReal_mul]
    change (31 / 32 : ℝ) * ‖W‖ ≤ W.re at hsector
    nlinarith only [hsector, hreal, hk.le]
  have hln : ‖L‖ ≤ 501 / 500 := lower_factor_norm z hi
  have hpn : ‖endpointMinus ((A : ℂ) * z)‖ ≤ 101 / 100 :=
    endpoint_minus_small _ (inverse_source_radius hA z hi)
  have hen : ‖Complex.exp (-2 * (A : ℂ) * z)‖ ≤ 1 := by
    rw [Complex.norm_exp, ← Real.exp_zero]
    apply Real.exp_le_exp.mpr
    norm_num only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
      Complex.neg_re,
      Complex.neg_im, Complex.re_ofNat, Complex.im_ofNat]
    nlinarith only [ha0, hA]
  have hneg : negativeEndpoint A z = -(k : ℂ) * W * L ^ 2 *
      Complex.exp (-2 * (A : ℂ) * z) * endpointMinus ((A : ℂ) * z) ^ 2 := by
    unfold negativeEndpoint
    rw [common_factor A z hz]
    dsimp [k, W, L]
    ring
  have hnn : ‖negativeEndpoint A z‖ ≤ k * ‖W‖ * (501 / 500) ^ 2 * (101 / 100) ^ 2 := by
    rw [hneg]
    simp only [norm_mul, norm_neg, norm_pow, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos hk]
    calc
      k * ‖W‖ * ‖L‖ ^ 2 * ‖Complex.exp (-2 * (A : ℂ) * z)‖ *
          ‖endpointMinus ((A : ℂ) * z)‖ ^ 2 ≤
        k * ‖W‖ * (501 / 500) ^ 2 * 1 * (101 / 100) ^ 2 := by gcongr
      _ = _ := by ring
  have hnr : -(k * ‖W‖ * (501 / 500) ^ 2 * (101 / 100) ^ 2) ≤
      (negativeEndpoint A z).re := by
    have h := (abs_le.mp (Complex.abs_re_le_norm (negativeEndpoint A z))).1
    linarith
  rw [Complex.add_re]
  change (9 / 10 : ℝ) * k * ‖W‖ < _
  have hkw : 0 < k * ‖W‖ := mul_pos hk hw
  nlinarith only [hmr, hnr, hkw]

private theorem endpoint_plus_neg (w : ℂ) : endpointPlus (-w) = endpointMinus w := by
  unfold endpointPlus endpointMinus
  simp only [show (-w) ^ 2 = w ^ 2 by ring,
    show (-w) ^ 3 = -(w ^ 3) by ring, show (-w) ^ 4 = w ^ 4 by ring,
    div_neg, sub_neg_eq_add]
  ring

private theorem endpoint_minus_neg (w : ℂ) : endpointMinus (-w) = endpointPlus w := by
  have h := endpoint_plus_neg (-w)
  simpa only [neg_neg] using h.symm

private theorem common_reflection (A : ℝ) (z : ℂ) :
    endpointCommon A (-z) = endpointCommon A z := by
  unfold endpointCommon
  simp only [show (-z) ^ 2 = z ^ 2 by ring,
    show (-z) ^ 5 = -(z ^ 5) by ring, div_neg, neg_sq]

private theorem negative_endpoint_reflection (A : ℝ) (z : ℂ) :
    negativeEndpoint A (-z) = positiveEndpoint A z := by
  unfold negativeEndpoint positiveEndpoint
  rw [common_reflection]
  have hw : (A : ℂ) * -z = -((A : ℂ) * z) := mul_neg _ _
  rw [hw, endpoint_minus_neg]
  have he : -2 * (A : ℂ) * -z = 2 * (A : ℂ) * z := by ring
  rw [he]

private theorem mixed_reflection (A : ℝ) (z : ℂ) :
    invariantMixed A (-z) = invariantMixed A z := by
  unfold invariantMixed
  rw [common_reflection, mul_neg, endpoint_plus_neg, endpoint_minus_neg]
  ring

/-- The reflected actual sector bound retains the same normalized margin. -/
theorem actual_mixed_inward_left {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (ha : -(1 / 2) ≤ z.re) (ha0 : z.re ≤ 0) (hi : 12 ≤ |z.im|) :
    (9 / 10 : ℝ) * (384 ^ 2 /
      (FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A * A ^ 9)) *
      ‖-(z⁻¹ ^ 6)‖ < (invariantMixed A z + positiveEndpoint A z).re := by
  have h := actual_mixed_inward_right hA (-z)
    (by simpa only [Complex.neg_re] using neg_nonneg.mpr ha0)
    (by simp only [Complex.neg_re]; linarith)
    (by simpa only [Complex.neg_im, abs_neg] using hi)
  rw [mixed_reflection, negative_endpoint_reflection] at h
  simpa only [inv_neg, show (-(z⁻¹)) ^ 6 = z⁻¹ ^ 6 by ring] using h

/-- On the right strip the literal complete source exceeds its outward endpoint. -/
theorem actual_source_ge_outward_right {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (ha0 : 0 ≤ z.re) (ha : z.re ≤ 1 / 2) (hi : 12 ≤ |z.im|) :
    (positiveEndpoint A z).re <
      (FormalResearch.RiemannHypothesis.ActualCorrelationOppositeHalf.
        actualBilateralCorrelationTransform A z).re := by
  have h := actual_mixed_inward_right hA z ha0 ha hi
  have hz : z ≠ 0 := by intro hz; norm_num [hz] at hi
  rw [actual_source_endpoint_recovery (by linarith : 1 ≤ A) z hz]
  rw [Complex.add_re, Complex.add_re]
  rw [Complex.add_re] at h
  have hk : 0 < 384 ^ 2 /
      (FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A * A ^ 9) :=
    div_pos (by norm_num) (mul_pos
      (FormalResearch.RiemannHypothesis.SourcePairing.source_normalization_pos A (by linarith))
      (pow_pos (by linarith) 9))
  have hn : 0 ≤ ‖-(z⁻¹ ^ 6)‖ := norm_nonneg _
  nlinarith only [h, hk, hn]

/-- The same full-source outward comparison holds on the reflected left strip. -/
theorem actual_source_ge_outward_left {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (ha : -(1 / 2) ≤ z.re) (ha0 : z.re ≤ 0) (hi : 12 ≤ |z.im|) :
    (negativeEndpoint A z).re <
      (FormalResearch.RiemannHypothesis.ActualCorrelationOppositeHalf.
        actualBilateralCorrelationTransform A z).re := by
  have h := actual_mixed_inward_left hA z ha ha0 hi
  have hz : z ≠ 0 := by intro hz; norm_num [hz] at hi
  rw [actual_source_endpoint_recovery (by linarith : 1 ≤ A) z hz]
  rw [Complex.add_re, Complex.add_re]
  rw [Complex.add_re] at h
  have hk : 0 < 384 ^ 2 /
      (FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A * A ^ 9) :=
    div_pos (by norm_num) (mul_pos
      (FormalResearch.RiemannHypothesis.SourcePairing.source_normalization_pos A (by linarith))
      (pow_pos (by linarith) 9))
  have hn : 0 ≤ ‖-(z⁻¹ ^ 6)‖ := norm_nonneg _
  nlinarith only [h, hk, hn]

end RH16ActualMixedInwardPositive
end
