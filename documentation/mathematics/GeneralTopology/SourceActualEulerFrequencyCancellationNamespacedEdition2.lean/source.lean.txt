-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ResidualAbsLeMass.Variant767f909d20f33cdf168282e3d309638ef69d5d87f40bcca2762549f436fdfa1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"767f909d20f33cdf168282e3d309638ef69d5d87f40bcca2762549f436fdfa1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ResidualAbsLeMass.Variant767f909d20f33cdf168282e3d309638ef69d5d87f40bcca2762549f436fdfa1b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"767f909d20f33cdf168282e3d309638ef69d5d87f40bcca2762549f436fdfa1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/source-readbacks/owner-ignored-latest-20261007T154040Z/preserved/scratch/rh16-continuation-20261006-challenge-next/SourceActualEulerFrequencyCancellation-AuthorNative01/SourceActualEulerFrequencyCancellation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEulerCentralFrequency

/-!
The complete actual frequency complement cancels the growing positive central
sector in relative size. The quantitative error retains the whole signed head
and all original closed Mangoldt coefficients. No constant signed cap follows.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.ResidualAbsLeMass.Variant767f909d20f33cdf168282e3d309638ef69d5d87f40bcca2762549f436fdfa1b

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualEulerFrequencyCancellation
open Filter Complex
open scoped Topology
open SourceActualEulerCentralFrequency SourceActualEulerSupportHead
open SourceActualEulerResidualApproximation SourceActualAbsolutePrimeMomentUpper
open SourceActualAbsolutePrimeMomentObstruction SourceActualSignedVariationFraction
open SourceActualBumpMovingHeight SourceActualInitialPrimeLineL1
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

private theorem residual_abs_le_mass {A : ℝ} (hA : 1 ≤ A) :
    |mertensResidual A| ≤ actualClosedAbsolutePrimeMoment A := by
  rw [actualMertensResidual_eq_variation_difference hA,
    actualClosedAbsolutePrimeMoment_eq_variation_sum]
  have hp := actualPositivePrimeVariation_nonneg A
  have hn := actualNegativePrimeVariation_nonneg A
  exact abs_le.mpr ⟨by linarith, by linarith⟩

private theorem whole_head_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |(actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re| ≤
      actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 +
        (actualBumpMovingTailConstant (3 / 2) +
          actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) / A ^ 9 := by
  have hE : 0 ≤ actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4) := by
    unfold actualClosedPrimeHeadErrorConstant
    have hh := actualRightLineMass_nonneg (5 / 4)
    positivity
  have he : Real.exp (-2 * (3 / 2 - 5 / 4) * A) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by nlinarith)
  have herr := actualResidual_sub_closedHead_norm_le A (3 / 2) (5 / 4) hA
    (by norm_num) (by norm_num)
  have herr' : ‖(mertensResidual A : ℂ) -
      actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ ≤
        (actualBumpMovingTailConstant (3 / 2) +
          actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) / A ^ 9 := by
    apply herr.trans
    apply div_le_div_of_nonneg_right _ (by positivity)
    nlinarith [mul_le_mul_of_nonneg_left he hE]
  calc
    _ ≤ ‖actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ :=
      Complex.abs_re_le_norm _
    _ ≤ ‖(mertensResidual A : ℂ)‖ +
        ‖(mertensResidual A : ℂ) -
          actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ := by
      have hh := norm_sub_le (mertensResidual A : ℂ)
        ((mertensResidual A : ℂ) -
          actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2)))
      simpa only [sub_sub_cancel] using hh
    _ ≤ _ := add_le_add (by
      rw [Complex.norm_real, Real.norm_eq_abs]
      exact (residual_abs_le_mass hA).trans (actualClosedAbsolutePrimeMoment_le hA)) herr'

/-- The denominator is eventually positive at all real scales. -/
theorem actualCentralFrequencyMass_eventually_pos :
    ∀ᶠ A : ℝ in atTop, 0 < actualCentralFrequencyMass A := by
  filter_upwards [eventually_ge_atTop (1 : ℝ),
    actualCentralFrequencyMass_eventually_lower] with A hA hbound
  have hp : 0 < actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10 :=
    div_pos (mul_pos actualCentralFrequencyConstant_pos (Real.exp_pos _))
      (pow_pos (by linarith) _)
  exact hp.trans_le hbound

/-- The complete complement has a quantitative relative cancellation error. -/
theorem actualComplementaryFrequencyRatio_eventually_abs_le :
    ∀ᶠ A : ℝ in atTop,
      |actualComplementaryFrequencyMass A / actualCentralFrequencyMass A + 1| ≤
        (actualAbsolutePrimeMomentUpperConstant / actualCentralFrequencyConstant) *
          A * Real.exp (-A) +
        ((actualBumpMovingTailConstant (3 / 2) +
          actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) /
          actualCentralFrequencyConstant) * A * Real.exp (-2 * A) := by
  filter_upwards [eventually_ge_atTop (1 : ℝ),
    actualCentralFrequencyMass_eventually_lower,
    actualCentralFrequencyMass_eventually_pos] with A hA hbound hpos
  have hp : 0 < A := by linarith
  have hc : actualCentralFrequencyConstant ≠ 0 :=
    ne_of_gt actualCentralFrequencyConstant_pos
  have hlow : 0 < actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10 :=
    div_pos (mul_pos actualCentralFrequencyConstant_pos (Real.exp_pos _)) (by positivity)
  have hid := actualClosedPrimeHead_eq_central_add_complement hA
  have hratio : actualComplementaryFrequencyMass A / actualCentralFrequencyMass A + 1 =
      (actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re /
        actualCentralFrequencyMass A := by
    rw [hid]
    field_simp
    ring
  rw [hratio, abs_div, abs_of_pos hpos]
  calc
    _ ≤ |(actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re| /
        (actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10) :=
      div_le_div_of_nonneg_left (abs_nonneg _) hlow hbound
    _ ≤ (actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 +
        (actualBumpMovingTailConstant (3 / 2) +
          actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) / A ^ 9) /
        (actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10) :=
      div_le_div_of_nonneg_right (whole_head_abs_le hA) hlow.le
    _ = _ := by
      have hexp : Real.exp (2 * A) = Real.exp A * Real.exp A := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [show -2 * A = -(2 * A) by ring, Real.exp_neg, Real.exp_neg, hexp]
      field_simp
      ring

/-- The relative cancellation error tends to zero without a signed residual cap. -/
theorem actualComplementaryFrequencyRatio_centered_tendsto_zero :
    Tendsto (fun A : ℝ => actualComplementaryFrequencyMass A /
      actualCentralFrequencyMass A + 1) atTop (𝓝 0) := by
  have hn1 := Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1
  have hn2 := (Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1).comp
    (tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 2))
  have ht : Tendsto (fun A : ℝ =>
      (actualAbsolutePrimeMomentUpperConstant / actualCentralFrequencyConstant) *
        A * Real.exp (-A) +
      ((actualBumpMovingTailConstant (3 / 2) +
        actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) /
        actualCentralFrequencyConstant) * A * Real.exp (-2 * A)) atTop (𝓝 0) := by
    have hh := (hn1.const_mul
      (actualAbsolutePrimeMomentUpperConstant / actualCentralFrequencyConstant)).add
      (hn2.const_mul ((actualBumpMovingTailConstant (3 / 2) +
        actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) /
        actualCentralFrequencyConstant / 2))
    simpa only [pow_one, mul_zero, add_zero] using hh.congr (fun A => by dsimp; ring)
  apply squeeze_zero_norm' _ ht
  filter_upwards [actualComplementaryFrequencyRatio_eventually_abs_le] with A hA
  simpa only [Real.norm_eq_abs] using hA

/-- The complete signed frequency complement divided by the central mass tends to minus one. -/
theorem actualComplementaryFrequencyRatio_tendsto_neg_one :
    Tendsto (fun A : ℝ => actualComplementaryFrequencyMass A /
      actualCentralFrequencyMass A) atTop (𝓝 (-1)) := by
  have hh := actualComplementaryFrequencyRatio_centered_tendsto_zero.sub_const (1 : ℝ)
  simpa only [add_sub_cancel_right, zero_sub] using hh

end
end FormalResearch.RiemannHypothesis.SourceActualEulerFrequencyCancellation
