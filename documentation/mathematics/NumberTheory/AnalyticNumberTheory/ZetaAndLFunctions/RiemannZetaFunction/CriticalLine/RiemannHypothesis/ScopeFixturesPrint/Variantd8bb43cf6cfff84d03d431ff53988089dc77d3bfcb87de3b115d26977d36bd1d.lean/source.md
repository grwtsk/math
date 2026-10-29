# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixturesPrint.Variantd8bb43cf6cfff84d03d431ff53988089dc77d3bfcb87de3b115d26977d36bd1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97151a0a76c0043682ca5558faa1c131e3d27aa6` · SHA-256 `d8bb43cf6cfff84d03d431ff53988089dc77d3bfcb87de3b115d26977d36bd1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork

/-! Actual private scope guards; these are excluded from the ten candidate declarations.
AI attribution: developed with OpenAI Codex. -/
set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures
open SourceCriticalRemovedPrimeWork SourceCriticalDecayWork SourcePairedPrimeAverages
open SourcePairedTailQuadrature SourcePairedTailTest SourceDiagonalMainTerm
open WeightedPrimeAbel

/-- The actual endpoint compensation cannot be silently dropped. -/
theorem endpoint_one_required {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A ≠ pairedErrorContrast A-diagonalMainCoefficient A*A-
      criticalDecayNegativeMean A := by
  rw [criticalRemovedPairedWork_eq hA]
  linarith

/-- The complete source drift precedes the new independent scalar compensation. -/
theorem complete_drift_required {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A ≠ primeLogSum (2*A) (pairedTailTest A)-
      diagonalMainCoefficient A*A+1-criticalDecayNegativeMean A := by
  rw [criticalRemovedPairedWork_eq_prime_quadrature hA]
  have hd := pairedTailTest_drift_pos hA
  linarith

/-- The actual error minus decay still has a negative oriented difference before the first prime. -/
theorem actual_removed_error_negative_difference :
    (primeLogError (Real.log 2/2)-criticalDecay (Real.log 2/2))-
      (primeLogError 0-criticalDecay 0) < 0 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have he := Real.add_one_le_exp (-(Real.log 2/2)/2)
  rw [show (primeLogError (Real.log 2/2)-criticalDecay (Real.log 2/2))-
      (primeLogError 0-criticalDecay 0) =
      (primeLogError (Real.log 2/2)-primeLogError 0)+
        (criticalDecay 0-criticalDecay (Real.log 2/2)) by ring,
    primeError_difference_before_first (by linarith) (by linarith)]
  simp only [criticalDecay, neg_zero, zero_div, Real.exp_zero]
  linarith

end FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures

open FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures
#print endpoint_one_required
#print complete_drift_required
#print actual_removed_error_negative_difference
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f15776e851daa5d30f1035cea7620723418757778bad7f4fdf02038947d01540 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrint/Variantd8bb43cf6cfff84d03d431ff53988089dc77d3bfcb87de3b115d26977d36bd1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
