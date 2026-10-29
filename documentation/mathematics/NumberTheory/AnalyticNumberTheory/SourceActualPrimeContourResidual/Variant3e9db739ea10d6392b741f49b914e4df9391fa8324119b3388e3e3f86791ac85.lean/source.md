# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceActualPrimeContourResidual.Variant3e9db739ea10d6392b741f49b914e4df9391fa8324119b3388e3e3f86791ac85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a7ad3573a19246bf28ac2362c364c3af2811809` · SHA-256 `3e9db739ea10d6392b741f49b914e4df9391fa8324119b3388e3e3f86791ac85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualInitialPrimeLineL1
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
Exact source binding of the initial prime contour and its finite signed head to the original
Mertens residual. The closed cutoff atom is genuinely zero; no source normalization, prime
power or compensation is changed. No arithmetic upper witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPrimeContourResidual
open MeasureTheory Set
open SourcePairing SourceActualInitialPrimeContour SourceActualInitialPrimeLineL1
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual EstimatePrimeSmoothDefect
open PrimePowerDescent
noncomputable section

/-- The original strict source prime inventory equals the independently defined closed moment. -/
theorem actual_strictPrime_eq_closedPrimeMoment (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A = closedPrimeMoment A := by
  classical
  unfold primePowerContribution closedPrimeMoment primePowerInventory
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  have hnpos : 0 < (n : ℝ) := by
    exact_mod_cast lt_of_lt_of_le (by norm_num : 0 < (2 : ℕ)) (Finset.mem_Icc.mp hn).1
  have hweight : exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n) =
      sourceCorrelation explicitSecondDerivative A (Real.log n) / Real.sqrt n := by
    unfold exponentialTest
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hnpos]
    ring
  rw [hweight]
  by_cases hcut : (n : ℝ) < Real.exp (2 * A)
  · simp only [hcut, if_true]
    ring
  · have hlog : 2 * A ≤ Real.log n := by
      simpa only [Real.log_exp] using
        Real.log_le_log (Real.exp_pos _) (le_of_not_gt hcut)
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n)
      (by linarith) (hlog.trans (le_abs_self _))]
    simp [hcut]

/-- The independently original arithmetic residual is exactly this full actual prime contour. -/
theorem actualInitialPrimeContour_eq_mertensResidual (A c : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) :
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, actualInitialPrimeDensity A c t) =
      (mertensResidual A : ℂ) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA,
    ← actual_strictPrime_eq_closedPrimeMoment A hA]
  exact actualInitialPrimeContour_eq_strict A c hA hc

/-- The finite signed head retains the exact original residual, with both contour tails. -/
theorem actual_mertensResidual_eq_head_add_twoTail (A c T : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) :
    (mertensResidual A : ℂ) =
      actualInitialPrimeHead A c T + actualInitialPrimeTwoTail A c T := by
  rw [mertensResidual_eq_closedPrimeMoment A hA,
    ← actual_strictPrime_eq_closedPrimeMoment A hA]
  exact actualInitialPrimeContour_eq_head_add_twoTail A c T hA hc

end
end FormalResearch.RiemannHypothesis.SourceActualPrimeContourResidual
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5b0e2d64120b7d12582a3e79d6f641d6b3f4073dbd21b819682f0e0f3c46619 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPrimeContourResidual/Variant3e9db739ea10d6392b741f49b914e4df9391fa8324119b3388e3e3f86791ac85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
