# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SourceActualCriticalHalfPntConsumer.Variant86f69ac31e6214a70e79b8f26811a5a8ccfd1a89f7d8322dc30a617c21eb45a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c285002aadde7fa03e66ca64d5c0934aeb1c1600` · SHA-256 `86f69ac31e6214a70e79b8f26811a5a8ccfd1a89f7d8322dc30a617c21eb45a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPntTailConvolution

/-! Apply the literal actual PNT tail to the complete finite damped Xi readout.
The independent closed-seven and half head remain unchanged. Gamma/unit terms
cancel jointly to the prescribed kappa term before any absolute error budget.
Research direction: grwtsk contributors. Source application: OpenAI Codex. -/
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f31f700d22c875533f585d93461f8787113c006bce6b0ce311abe0afc72ca102 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalHalfPntConsumer/Variant86f69ac31e6214a70e79b8f26811a5a8ccfd1a89f7d8322dc30a617c21eb45a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
