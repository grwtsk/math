-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ActualDampedXiFinitePrimitiveEqHalfConvolutionPntTail.Variant6a016d39d4d601305356acaccaca2c2009daa1e91be9e78ca874d1e91acb2fd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a016d39d4d601305356acaccaca2c2009daa1e91be9e78ca874d1e91acb2fd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ActualDampedXiFinitePrimitiveEqHalfConvolutionPntTail.Variant6a016d39d4d601305356acaccaca2c2009daa1e91be9e78ca874d1e91acb2fd0","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"6a016d39d4d601305356acaccaca2c2009daa1e91be9e78ca874d1e91acb2fd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-critical-half-pnt-consumer-review/fresh-replay/SourceActualCriticalHalfPntConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPntTailConvolution

/-! Apply the literal actual PNT tail to the complete finite damped Xi readout.
The independent closed-seven and half head remain unchanged. Gamma/unit terms
cancel jointly to the prescribed kappa term before any absolute error budget.
Research direction: grwtsk contributors. Source application: OpenAI Codex. -/

namespace GRWTSK.Analysis.AsymptoticAnalysis.ActualDampedXiFinitePrimitiveEqHalfConvolutionPntTail.Variant6a016d39d4d601305356acaccaca2c2009daa1e91be9e78ca874d1e91acb2fd0

set_option autoImplicit false
noncomputable section
namespace RH16ActualCriticalHalfPntConsumer
open MeasureTheory Set Filter Asymptotics
open FormalResearch.RiemannHypothesis
open SourceActualPsiPntTimeDecay SourceActualMertensPntRate
open SourceActualXiErrorConvolution SourceActualXiDampedFiniteBound
open RH16ActualPntTailConvolution

/-- Exact source recovery retains all closed-seven prime powers and fixed main terms. -/
theorem actualDampedXiFinitePrimitive_eq_half_convolution_pnt_tail {t : ℝ}
    (ht : Real.log 7 ≤ t) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive t - actualXiErrorConvolutionSevenValue =
      actualMangoldtErrorConvolution (1 / 2) t +
        (∫ u in Ioi t, actualRelativePsiTimeError u) +
          actualXiErrorConvolutionHalfHead * Real.exp (-t / 2) +
            2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) * Real.exp (-t) := by
  have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht
  have he := actualDampedXiFinitePrimitive_eq_error_convolutions ht
  rw [actualMangoldtErrorConvolution_one_eq_neg_tail ht0] at he
  unfold actualXiErrorConvolutionOneHead at he
  nlinarith only [he]

/-- Actual PNT bounds only the noncritical tail after exact joint source recovery. -/
theorem actualDampedXiFinitePrimitive_half_pnt_majorant :
    ∃ c > 0, ∃ C > 0, ∃ T : ℝ, Real.log 7 ≤ T ∧ ∀ t ≥ T,
      |(1 / 2 : ℝ) * actualDampedXiFinitePrimitive t - actualXiErrorConvolutionSevenValue -
        actualMangoldtErrorConvolution (1 / 2) t -
          actualXiErrorConvolutionHalfHead * Real.exp (-t / 2)| ≤
        C * Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) *
          (∫ u in Ioi (0 : ℝ), Real.exp (-(c / 2) * u ^ ((1 : ℝ) / 10))) +
            |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)| * Real.exp (-t) := by
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  obtain ⟨C, hC, hbound⟩ := hp.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hbound.bound
  refine ⟨c, hc, C, hC, max (Real.log 7) T, le_max_left _ _, ?_⟩
  intro t ht
  have ht7 : Real.log 7 ≤ t := (le_max_left _ _).trans ht
  have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht7
  have hdelta : ∀ u ≥ t, |actualRelativePsiTimeError u| ≤
      C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) := by
    intro u hu
    simpa only [Real.norm_eq_abs, Real.abs_exp] using
      hT u ((le_max_right (Real.log 7) T).trans (ht.trans hu))
  have htail := actualRelativePsiTimeError_tail_abs_le hc hC.le ht0 hdelta
  have he := actualDampedXiFinitePrimitive_eq_half_convolution_pnt_tail ht7
  have hrecover :
      (1 / 2 : ℝ) * actualDampedXiFinitePrimitive t - actualXiErrorConvolutionSevenValue -
        actualMangoldtErrorConvolution (1 / 2) t -
          actualXiErrorConvolutionHalfHead * Real.exp (-t / 2) =
      (∫ u in Ioi t, actualRelativePsiTimeError u) +
        2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) * Real.exp (-t) := by
    linarith only [he]
  rw [hrecover]
  calc
    _ ≤ |∫ u in Ioi t, actualRelativePsiTimeError u| +
        |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) * Real.exp (-t)| :=
      abs_add_le _ _
    _ = |∫ u in Ioi t, actualRelativePsiTimeError u| +
        |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)| * Real.exp (-t) := by
      rw [abs_mul, Real.abs_exp]
    _ ≤ _ := add_le_add htail le_rfl

end RH16ActualCriticalHalfPntConsumer
