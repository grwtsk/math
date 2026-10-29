# Shared Coefficient Definition — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ae2cab2129ca2f7afbe95c92b4164f42f9aee90` · SHA-256 `5d1d8430d4ec1401de8fc4ee7ce3570a7eb0f4b1af50c5c66deca06c158de6bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient
open Finset
noncomputable section
/-- The original finite Möbius divisor sum with its exact exponential damping. -/
def dampedDivisorCoefficient (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))

end
end FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2922b6c8074123edd6ef3210e4534959d1dddf9a816c90a437feb264376ecfed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SharedCoefficientDefinition/Variant5d1d8430d4ec1401de8fc4ee7ce3570a7eb0f4b1af50c5c66deca06c158de6bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
