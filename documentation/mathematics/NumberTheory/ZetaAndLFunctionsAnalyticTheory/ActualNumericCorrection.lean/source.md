# Actual Numeric Correction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aeb48172379e9cd4e8ae6dff3da387a0740206fd` · SHA-256 `a8a275387177d772badb054aaba69c75715e90425b667d936efd7bcfe9fc006e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import HigherPowerNumeric
import ActualPrimeError
import ActualNumericMeanTransfer

/-! Unconditional numeric bound for the independently defined actual F_square.
Direction grwtsk contributors; scratch source assembly OpenAI Codex.
The complete ordinary-square zero budget is still explicit wherever consumed. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualNumericCorrection
open FormalResearch.RiemannHypothesis
open SourcePrimeSquareTailWork SourcePairedPrimeAverages SourcePrimePowerPartition
open ActualCommonMeanNormalization ActualCommonMeanZeroSide ActualCommonMeanCalibration ActualNumericMeanTransfer

theorem actual_negative_mean_gt {A : ℝ} (hA : 1≤A) :
    -(133/40:ℝ)<negativeErrorMean A := by
  have hh := ActualPrimeError.actual_negativeErrorMean_lower hA
  linarith [Real.log_two_lt_d9]

theorem actual_square_remainder_gt {A : ℝ} (hA : 1≤A) :
    -(621/40:ℝ)<squareRemovedRemainder A := by
  have hH := (abs_le.mp (SourceFirstPrimeAbel.criticalContinuousMoment_abs_le_two A hA)).1
  have hP := (abs_le.mp (HigherPowerNumeric.actual_higherPrimePowerMoment_abs_le hA)).1
  have hB := squareTailNegativeMean_le_baseline hA
  have hE := actual_negative_mean_gt hA
  unfold squareRemovedRemainder
  linarith

theorem actual_square_remainder_paper_budget {A : ℝ} (hA : 1≤A) :
    -(1889/100:ℝ)≤squareRemovedRemainder A := by
  linarith [actual_square_remainder_gt hA]

theorem actual_mean_offset_gt {A : ℝ} (hA : 1≤A) :
    -(59/5:ℝ)-206/A^2<sourceMeanOffset A := by
  have hF := actual_square_remainder_gt hA
  have hE := normalizationError_lt hA
  unfold normalizationError at hE
  linarith [commonMeanCenter_gt]

theorem actual_mean_gt {A : ℝ} (hA : 1≤A) :
    -(59/5:ℝ)-206/A^2+(normalizedZeroSquare A).re/2<sourceMean A := by
  rw [sourceMean_eq_offset_zero hA]
  linarith [actual_mean_offset_gt hA]

theorem actual_mean_gt_of_zero_budget {A N : ℝ} (hA : 1≤A)
    (hS : -N≤(normalizedZeroSquare A).re) :
    -(59/5:ℝ)-206/A^2-N/2<sourceMean A := by
  linarith [actual_mean_gt hA]

/-- Only the ordinary-square sign remains; it is not supplied by this packet. -/
theorem actual_mean_gt_neg_eighteen {A : ℝ} (hA : 10≤A)
    (hS : 0≤(normalizedZeroSquare A).re) : -18<sourceMean A :=
  sourceMean_gt_neg_eighteen hA
    (actual_square_remainder_paper_budget (by linarith)) hS

#print axioms actual_negative_mean_gt
#print axioms actual_square_remainder_gt
#print axioms actual_square_remainder_paper_budget
#print axioms actual_mean_offset_gt
#print axioms actual_mean_gt
#print axioms actual_mean_gt_of_zero_budget
#print axioms actual_mean_gt_neg_eighteen
end ContinuousResearch.ActualNumericCorrection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e87be3966c94c6d0ba82d5c0a91f2a712a7f63f8f33712f7bc7b7805adb1413d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericCorrection/Varianta8a275387177d772badb054aaba69c75715e90425b667d936efd7bcfe9fc006e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
