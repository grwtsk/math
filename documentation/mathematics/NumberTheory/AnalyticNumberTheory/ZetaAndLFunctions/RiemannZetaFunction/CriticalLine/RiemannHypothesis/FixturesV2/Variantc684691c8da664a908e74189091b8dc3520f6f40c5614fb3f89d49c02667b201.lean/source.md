# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FixturesV2.Variantc684691c8da664a908e74189091b8dc3520f6f40c5614fb3f89d49c02667b201

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4df10bb1fc64e7f19e3f59e565747e21e9090f59` · SHA-256 `c684691c8da664a908e74189091b8dc3520f6f40c5614fb3f89d49c02667b201`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePrimitivePrimeInteraction

noncomputable section
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction
open FormalResearch.RiemannHypothesis.SourceCausalEnergy

example (A : ℝ) : primitiveCorrelationOne A 0 =
    ∫ x : ℝ, (deriv (normalizedPrimitiveBump A) x) ^ 2 := by
  simp only [primitiveCorrelationOne, sub_zero, pow_two]

example (A : ℝ) : 0 ≤ primitiveCorrelationOne A 0 := by
  unfold primitiveCorrelationOne
  apply integral_nonneg
  intro x
  change (0 : ℝ) ≤ deriv (normalizedPrimitiveBump A) x *
    deriv (normalizedPrimitiveBump A) (x - 0)
  simpa only [sub_zero] using mul_self_nonneg (deriv (normalizedPrimitiveBump A) x)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d75724baa51ee086b6c151eb812025b2e318683cf72d2a560ac0d094849cd1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixturesV2/Variantc684691c8da664a908e74189091b8dc3520f6f40c5614fb3f89d49c02667b201.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
