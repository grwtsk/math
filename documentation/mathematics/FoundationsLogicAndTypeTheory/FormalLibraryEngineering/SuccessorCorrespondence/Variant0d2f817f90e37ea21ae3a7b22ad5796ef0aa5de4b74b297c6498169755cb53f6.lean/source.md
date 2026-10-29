# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorCorrespondence.Variant0d2f817f90e37ea21ae3a7b22ad5796ef0aa5de4b74b297c6498169755cb53f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `082a47aa6eebf31a81bb7f9e345e12e5ef2113bd` · SHA-256 `0d2f817f90e37ea21ae3a7b22ad5796ef0aa5de4b74b297c6498169755cb53f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Arithmetic.FiniteCorrespondence

/-!
# Successor arithmetic correspondence
-/

namespace Mathematics.StratifiedBoundary

structure SuccessorArithmeticCorrespondence
    (TraceValue ArithmeticValue : Type u) where
  predecessor :
    FiniteArithmeticCorrespondence TraceValue ArithmeticValue
  successor :
    FiniteArithmeticCorrespondence TraceValue ArithmeticValue
  traceConnectorRef : String
  arithmeticConnectorRef : String
  compatible : Prop
  compatibilityProof : compatible

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f1a924151fac45886fc1a615880e52bb2cc1f6925f3ea24b0e32de2990c54b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorCorrespondence/Variant0d2f817f90e37ea21ae3a7b22ad5796ef0aa5de4b74b297c6498169755cb53f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
