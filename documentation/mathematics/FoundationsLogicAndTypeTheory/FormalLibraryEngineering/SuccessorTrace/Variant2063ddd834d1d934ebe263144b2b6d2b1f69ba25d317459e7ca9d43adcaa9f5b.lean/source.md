# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorTrace.Variant2063ddd834d1d934ebe263144b2b6d2b1f69ba25d317459e7ca9d43adcaa9f5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea485ac9613776bf688b2b5174c551b74b9805c3` · SHA-256 `2063ddd834d1d934ebe263144b2b6d2b1f69ba25d317459e7ca9d43adcaa9f5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Trace.ReducedTrace

/-!
# Successor trace pullback

Invariant-law projectivity alone is insufficient; this object also carries
the compatible observable-sector evidence.
-/

namespace Mathematics.StratifiedBoundary

structure SuccessorTraceCompatibility
    (PredecessorObservable SuccessorObservable Value : Type u) where
  pullback : PredecessorObservable → SuccessorObservable
  predecessorTrace : PredecessorObservable → Value
  successorTrace : SuccessorObservable → Value
  matrixCompatibilityRef : String
  groupCompatibilityRef : String
  identityCoefficientCompatibilityRef : String
  normalizationCompatibilityRef : String
  compatible :
    ∀ observable,
      successorTrace (pullback observable) =
        predecessorTrace observable

theorem successor_trace_compatible
    {PredecessorObservable SuccessorObservable Value : Type u}
    (certificate :
      SuccessorTraceCompatibility
        PredecessorObservable SuccessorObservable Value)
    (observable : PredecessorObservable) :
    certificate.successorTrace
        (certificate.pullback observable) =
      certificate.predecessorTrace observable :=
  certificate.compatible observable

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87b67c8bee2a74d733798100470f6215917cfca8d4b7e8e1a0d333f1d189aa2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorTrace/Variant2063ddd834d1d934ebe263144b2b6d2b1f69ba25d317459e7ca9d43adcaa9f5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
