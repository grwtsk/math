-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ActualRelativePsiTimeErrorTotalEqNegGammaSubOne.Variant9cc9e9b79743e68f1b1beb56e8ac0f6600038a4d574260f152a701b341ebe815","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9cc9e9b79743e68f1b1beb56e8ac0f6600038a4d574260f152a701b341ebe815","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ActualRelativePsiTimeErrorTotalEqNegGammaSubOne.Variant9cc9e9b79743e68f1b1beb56e8ac0f6600038a4d574260f152a701b341ebe815","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"9cc9e9b79743e68f1b1beb56e8ac0f6600038a4d574260f152a701b341ebe815","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/pnt-tail-convolution/attempt01/SourceActualPntTailConvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualMertensPntRate

/-! The literal parameter-one convolution is the genuine actual signed PNT tail
with its fixed zero/unit gamma correction. The established centered-error tail
identity is reused. No critical signed witness is supplied.
Research direction: grwtsk contributors. Exact source adapter: OpenAI Codex. -/

namespace GRWTSK.Analysis.AsymptoticAnalysis.ActualRelativePsiTimeErrorTotalEqNegGammaSubOne.Variant9cc9e9b79743e68f1b1beb56e8ac0f6600038a4d574260f152a701b341ebe815

set_option autoImplicit false
noncomputable section
namespace RH16ActualPntTailConvolution
open MeasureTheory Set Filter Asymptotics
open FormalResearch.RiemannHypothesis
open SourceActualPsiPntTimeDecay SourceActualMertensPntRate
open SourceActualMertensOrdinaryLimit SourceActualMertensGammaCalibration
open SourceActualXiErrorConvolution

/-- The full positive-time tail includes the actual plus-one and gamma traces. -/
theorem actualRelativePsiTimeError_total_eq_neg_gamma_sub_one :
    (∫ u in Ioi (0 : ℝ), actualRelativePsiTimeError u) =
      -Real.eulerMascheroniConstant - 1 := by
  have hc := actualPntMertensLimit_eq_neg_gamma
  unfold actualPntMertensLimit at hc
  linarith

/-- Actual closed Mangoldt convolution, with every prime power and the unit trace. -/
theorem actualMangoldtErrorConvolution_one_eq_neg_tail {s : ℝ} (hs : 0 ≤ s) :
    actualMangoldtErrorConvolution 1 s =
      -(∫ u in Ioi s, actualRelativePsiTimeError u) -
        (Real.eulerMascheroniConstant + 1) * Real.exp (-s) := by
  have he := actualCenteredMangoldtLogError_eq_delta_sub_tail hs
  have hc := actualRelativePsiTimeError_eq_one_convolution hs
  linarith

/-- The existing actual PNT majorant controls this exact convolution remainder. -/
theorem actualMangoldtErrorConvolution_one_abs_le {c C s : ℝ}
    (hc : 0 < c) (hC : 0 ≤ C) (hs : 0 ≤ s)
    (hdelta : ∀ u ≥ s, |actualRelativePsiTimeError u| ≤
      C * Real.exp (-c * u ^ ((1 : ℝ) / 10))) :
    |actualMangoldtErrorConvolution 1 s| ≤
      C * Real.exp (-(c / 2) * s ^ ((1 : ℝ) / 10)) *
        (∫ u in Ioi (0 : ℝ), Real.exp (-(c / 2) * u ^ ((1 : ℝ) / 10))) +
          |Real.eulerMascheroniConstant + 1| * Real.exp (-s) := by
  rw [actualMangoldtErrorConvolution_one_eq_neg_tail hs]
  have ht := actualRelativePsiTimeError_tail_abs_le hc hC hs hdelta
  calc
    _ ≤ |-(∫ u in Ioi s, actualRelativePsiTimeError u)| +
        |(Real.eulerMascheroniConstant + 1) * Real.exp (-s)| := abs_sub _ _
    _ = |∫ u in Ioi s, actualRelativePsiTimeError u| +
        |Real.eulerMascheroniConstant + 1| * Real.exp (-s) := by
      rw [abs_neg, abs_mul, Real.abs_exp]
    _ ≤ _ := add_le_add ht le_rfl

/-- The genuine actual PNT supplies constants and an all-real tail radius. -/
theorem actualMangoldtErrorConvolution_one_pnt_majorant :
    ∃ c > 0, ∃ C > 0, ∃ T : ℝ, 0 ≤ T ∧ ∀ s ≥ T,
      |actualMangoldtErrorConvolution 1 s| ≤
        C * Real.exp (-(c / 2) * s ^ ((1 : ℝ) / 10)) *
          (∫ u in Ioi (0 : ℝ), Real.exp (-(c / 2) * u ^ ((1 : ℝ) / 10))) +
            |Real.eulerMascheroniConstant + 1| * Real.exp (-s) := by
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  obtain ⟨C, hC, hbound⟩ := hp.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hbound.bound
  refine ⟨c, hc, C, hC, max 0 T, le_max_left _ _, ?_⟩
  intro s hs
  apply actualMangoldtErrorConvolution_one_abs_le hc hC.le ((le_max_left _ _).trans hs)
  intro u hu
  simpa only [Real.norm_eq_abs, Real.abs_exp] using
    hT u ((le_max_right 0 T).trans (hs.trans hu))

end RH16ActualPntTailConvolution
