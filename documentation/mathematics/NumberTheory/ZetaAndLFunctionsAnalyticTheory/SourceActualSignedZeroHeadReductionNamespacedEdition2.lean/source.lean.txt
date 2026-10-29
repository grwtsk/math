-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualResidualSubSignedHeadEq.Variante87100e708a6eaa341df0cb813e4a9157a157cb5234590a4d27086bc63662eb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e87100e708a6eaa341df0cb813e4a9157a157cb5234590a4d27086bc63662eb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualResidualSubSignedHeadEq.Variante87100e708a6eaa341df0cb813e4a9157a157cb5234590a4d27086bc63662eb1","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e87100e708a6eaa341df0cb813e4a9157a157cb5234590a4d27086bc63662eb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T051147Z-1791349907284938000/SourceActualSignedZeroHeadReduction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroMovingTail
import SourceActualArchimedeanUpper

/-!
The original Mertens residual has a source-exact finite all-zero signed head,
with explicit archimedean and full zero-tail errors. The head contains every
actual zero and multiplicity below the prescribed height; its ordinary complex
weights are not replaced by norms. No head lower witness or Estimate is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualResidualSubSignedHeadEq.Variante87100e708a6eaa341df0cb813e4a9157a157cb5234590a4d27086bc63662eb1

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualSignedZeroHeadReduction
open MeasureTheory Filter
open scoped Topology
open SourcePairing SourceActualFullZeroContour SourceActualZeroArithmeticDictionary
open SourceActualZeroTailBudget SourceActualZeroMovingTail SourceActualArchimedeanUpper
open SourceActualBumpMovingHeight
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

/-- The exact original residual retains the real part of every finite ordinary complex weight. -/
theorem actualResidual_sub_signedHead_eq {A : ℝ} (hA : 1 ≤ A) (R : ℝ) :
    mertensResidual A - (archimedeanMultiplier 0 - (actualZeroHeightHead A R).re) / 2 =
      (archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0) / 2 -
        (actualZeroHeightTail A R).re / 2 := by
  have hr := actual_mertensResidual_eq_arch_re_sub_half_zero_re A (5 / 4) hA
    (by norm_num) (by norm_num)
  rw [actualArchimedeanLine_eq_half_original A (5 / 4) hA (by norm_num) (by norm_num)] at hr
  simp only [Complex.div_ofNat_re, Complex.ofReal_re] at hr
  have hh := congrArg Complex.re (actualFullZeroContribution_eq_head_add_tail A R hA)
  rw [Complex.add_re] at hh
  linarith

/-- Both one-sided residual costs retain the true finite head, all real scales and tail radius. -/
theorem actualResidual_movingHead_two_sided :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      (archimedeanMultiplier 0 -
          (actualZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2 -
        actualZeroMovingEnvelope A0 c A / 2 ≤ mertensResidual A ∧
      mertensResidual A ≤
        (archimedeanMultiplier 0 -
          (actualZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2 +
        (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
        actualZeroMovingEnvelope A0 c A / 2 := by
  obtain ⟨A0,hA0,hbound⟩ := actualZeroMovingTail_norm_bound
  refine ⟨A0,hA0,fun c A hc hA => ?_⟩
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have heq := actualResidual_sub_signedHead_eq hA1 (actualBumpMovingHeight A c)
  have ha := actual_archimedean_two_sided hA1
  have ht := (Complex.abs_re_le_norm
    (actualZeroHeightTail A (actualBumpMovingHeight A c))).trans (hbound c A hc hA)
  have hb := abs_le.mp ht
  constructor
  · linarith [ha.1, hb.2]
  · have he : (18 * (162826 / 7623 : ℝ)) / (2 * A^2) =
        ((18 * (162826 / 7623 : ℝ)) / A^2) / 2 := by ring
    rw [he]
    linarith [ha.2, hb.1]

/-- The signed source reduction has a genuine quantitative absolute correction bound. -/
theorem actualResidual_movingHead_signed_error_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      |mertensResidual A - (archimedeanMultiplier 0 -
          (actualZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2| ≤
        (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
        actualZeroMovingEnvelope A0 c A / 2 := by
  obtain ⟨A0,hA0,hbound⟩ := actualResidual_movingHead_two_sided
  refine ⟨A0,hA0,fun c A hc hA => ?_⟩
  have hh := hbound c A hc hA
  apply abs_le.mpr
  constructor
  · have hcoeff : 0 ≤ (18 * (162826 / 7623 : ℝ)) / (2 * A^2) := by positivity
    linarith [hh.1]
  · linarith [hh.2]

/-- On the whole real scale axis the original signed residual differs from that head by o(1). -/
theorem actualResidual_movingHead_signed_error_tendsto (c : ℝ) (hc : 1 < c) :
    Tendsto (fun A : ℝ => mertensResidual A - (archimedeanMultiplier 0 -
      (actualZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2) atTop (𝓝 0) := by
  have ha := actual_archimedean_tendsto_zero_frequency
  have ht := (Complex.continuous_re.tendsto 0).comp (actualZeroMovingTail_tendsto_zero c hc)
  have hlim := ((ha.sub_const (archimedeanMultiplier 0)).div_const 2).sub (ht.div_const 2)
  have hzero : Tendsto (fun A : ℝ =>
      (archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0) / 2 -
      (actualZeroHeightTail A (actualBumpMovingHeight A c)).re / 2) atTop (𝓝 0) := by
    simpa only [sub_self, zero_div, Complex.zero_re] using hlim
  apply hzero.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (actualResidual_sub_signedHead_eq hA (actualBumpMovingHeight A c)).symm

end
end FormalResearch.RiemannHypothesis.SourceActualSignedZeroHeadReduction
