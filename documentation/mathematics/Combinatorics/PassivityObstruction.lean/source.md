# Passivity Obstruction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f4b94e4aaa58f5d6587c6482549ff4953b6231e` · SHA-256 `c44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Access.PrimeCutAccess

/-!
# Primitive finite passivity obstructions

A failed search or exhausted budget is not a negative witness.
-/

namespace Mathematics.SemiLocalDefect.Access

structure PassivityObstruction where
  primeUniverse : FinitePrimeUniverse
  sourceCut : Finset primeUniverse.Prime
  insertedPrime : primeUniverse.Prime
  insertedPrime_not_mem :
    insertedPrime ∉ sourceCut
  compressionRank : Nat
  compressionRank_positive :
    0 < compressionRank
  witness : Fin compressionRank → ℚ
  quadraticAt :
    Finset primeUniverse.Prime →
      Nat → ℚ
  quadraticValue : ℚ
  quadraticValue_eq :
    quadraticValue =
      quadraticAt sourceCut compressionRank
  quadraticValue_neg :
    quadraticValue < 0
  properSubcutsNonnegative :
    ∀ subcut,
      subcut ⊂ sourceCut →
      0 ≤ quadraticAt subcut compressionRank
  lowerRanksNonnegative :
    ∀ rank,
      rank < compressionRank →
      0 ≤ quadraticAt sourceCut rank
  exactEvaluation : Prop
  exactEvaluationProof : exactEvaluation
  canonical : Prop
  canonicalProof : canonical
  certificateDigest : CertificateDigest

inductive PassivitySearchResult
  | obstruction (witness : PassivityObstruction)
  | residualFrontier
      (primeUniverse : FinitePrimeUniverse)
      (checkedCuts checkedRanks : Nat)
  | rejectedEnvelope
      (reason : Nat)

end Mathematics.SemiLocalDefect.Access
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=267b4535ec42b9b9ff1accfd9fdc23dc98dbc77694f99ee4082e2e53b9854d03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PassivityObstruction/Variantc44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
