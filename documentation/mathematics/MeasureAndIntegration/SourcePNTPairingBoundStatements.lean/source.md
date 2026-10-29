# Source PNTPairing Bound Statements — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30c0593e0e1a0f1affc5d4319d773eff032f0152` · SHA-256 `0c89f4d64c9de1465a75efc7e1c3fbc0edcee29e22b6f52fba697b541aeb0824`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTPairingBound

noncomputable section

open FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTPairingBound
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDifferenceMoments
open MeasureTheory Set Filter

example : correlationBudget = Real.sqrt (65 / 3) + 1 / 2 := rfl
example : 0 ≤ correlationBudget := correlationBudget_nonneg
example (A t : ℝ) (hA : 1 ≤ A) :
    |correlationDifference A t| ≤ correlationBudget := correlationDifference_uniform A t hA
example (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight explicitSecondDerivative A t)
      volume lowerEndpoint (2 * A) := sourcePairing_intervalIntegrable A hA
example (a b : ℝ) :
    (∫ t in a..b, Real.exp (t / 2)) = 2 * Real.exp (b / 2) - 2 * Real.exp (a / 2) :=
  exp_half_intervalIntegral a b
example (A t D : ℝ) (hA : 1 ≤ A) (hD : 0 ≤ D)
    (he : |errorProfile t| ≤ D * Real.exp t) :
    |errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      D * correlationBudget * Real.exp (t / 2) := source_integrand_bound A t D hA hD he
example (A a b D : ℝ) (hA : 1 ≤ A) (hab : a ≤ b)
    (hD : 0 ≤ D) (he : ∀ t ∈ Icc a b, |errorProfile t| ≤ D * Real.exp t) :
    |∫ t in a..b, errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      2 * D * correlationBudget * Real.exp (b / 2) := source_interval_bound A a b D hA hab hD he
example (A C c : ℝ) (hA : 1 ≤ A) (hstart : lowerEndpoint ≤ A)
    (hC : 0 ≤ C)
    (hglobal : ∀ t ∈ Icc lowerEndpoint A, |errorProfile t| ≤ C * Real.exp t)
    (hpnt : ∀ t ∈ Icc A (2 * A),
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :
    |signedPairing explicitSecondDerivative A| ≤
      2 * C * correlationBudget * (Real.exp (A / 2) +
        Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :=
  signedPairing_bound A C c hA hstart hC hglobal hpnt
example : ∃ C ≥ 0, ∃ c > 0, ∀ᶠ A : ℝ in atTop,
      |signedPairing explicitSecondDerivative A| ≤
        C * (Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :=
  signedPairing_eventual_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de003b621d446f914d78987d51be1bc1eab41807b7f0210e0ea5de0d30eb2fae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBoundStatements/Variant0c89f4d64c9de1465a75efc7e1c3fbc0edcee29e22b6f52fba697b541aeb0824.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
