# Stable Invariant Trace — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42df27d21966bd34ba9b65f3717db1387faebb85` · SHA-256 `1ca464da275c27c1847c502d36200da43dda854d62b56db3a22a799b406d3af1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Trace.FiniteCrossedProduct

/-!
# Stable finite invariant trace

Positivity, traciality, normalization, and automorphism invariance are
independent proof fields.
-/

namespace Mathematics.StratifiedBoundary

structure StableFiniteInvariantTrace
    (Observable GroupElement : Type u) where
  trace : Observable → Int
  positiveCone : Observable → Prop
  multiply : Observable → Observable → Observable
  unit : Observable
  act : GroupElement → Observable → Observable
  positive :
    ∀ observable,
      positiveCone observable →
        0 ≤ trace observable
  tracial :
    ∀ left right,
      trace (multiply left right) =
        trace (multiply right left)
  normalized :
    trace unit = 1
  automorphismInvariant :
    ∀ groupElement observable,
      trace (act groupElement observable) =
        trace observable
  sampledRealizationIndependent : Bool := true
  sampledRealizationIndependent_exact :
    sampledRealizationIndependent = true

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d48df376e211b6cd915f494cb18595bf3fd72c7fefc65d1eebf4fe4d398b3b88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/StableInvariantTrace/Variant1ca464da275c27c1847c502d36200da43dda854d62b56db3a22a799b406d3af1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
