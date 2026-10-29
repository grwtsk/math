# Confluence — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bedad7a809e283f8186a8ebbc31fb9129b958989` · SHA-256 `185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Certified compatible reduction

Order independence is admitted only for handlers carrying an exact commuting
proof.  Noncommuting handlers require branching or quarantine.
-/

namespace Mathematics.Mutation

structure CompatibleReduction (State Event : Type) where
  apply : Event → State → State
  commute :
    ∀ left right state,
      apply left (apply right state) =
        apply right (apply left state)

theorem compatible_reduction_confluent
    (reduction : CompatibleReduction State Event)
    (left right : Event)
    (state : State) :
    reduction.apply left (reduction.apply right state) =
      reduction.apply right (reduction.apply left state) :=
  reduction.commute left right state

end Mathematics.Mutation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e62ac315fe7d114b0733d9ce455365da9fb4b9dda57c5678a0e15b33fcdd2297 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Confluence/Variant185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
