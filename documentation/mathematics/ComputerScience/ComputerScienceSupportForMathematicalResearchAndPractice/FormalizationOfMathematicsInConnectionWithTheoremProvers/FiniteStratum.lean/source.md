# Finite Stratum — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9e3df7802d96942c16d825bf27ec80b0f7c4f88` · SHA-256 `30c870c56210b7ee5b06f597030720eb3ebff992656e265700ea5b90773f129e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Arithmetic.FiniteCorrespondence

/-!
# Finite-stratum square-root certificate
-/

namespace Mathematics.StratifiedBoundary

structure FiniteStratumSquareRootCertificate where
  stratum : Nat
  unnormalizedDiscrepancy : Nat
  squareRootScale : Nat
  spectralMultiplicityScale : Nat
  bound :
    unnormalizedDiscrepancy ≤
      squareRootScale * spectralMultiplicityScale
  invariantBiasRemoved : Bool := true
  invariantBiasRemoved_exact :
    invariantBiasRemoved = true
  exactArithmeticCorrespondenceRef : String
  spectralBoundRef : String

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bd88194f5032f7db33626d636ca8b246d0f7b9fce227e8ef865db2bb4be1a74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteStratum/Variant30c870c56210b7ee5b06f597030720eb3ebff992656e265700ea5b90773f129e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
