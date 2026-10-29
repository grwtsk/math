# One Prime Passivity — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46f50854db354848e5c7a91d077814fe0308d5e4` · SHA-256 `5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.QSeries.IntervalTail

/-!
# Staged one-prime passivity

Finite exact positivity, uniform-in-prime positivity, and compression
exhaustion are separate certificates.
-/

namespace Mathematics.SemiLocalDefect.QSeries

structure FixedPrimeFinitePassivity
    (system : OnePrimeMomentSystem)
    (rank : Nat) where
  compression : JacobiCompression system rank
  ldl : ExactLDLCertificate compression

structure UniformPrimeFinitePassivity
    (rank minimumPrime : Nat) where
  interval : QInterval
  intervalUpper :
    interval.upper = 1 / minimumPrime
  certificate :
    IntervalLDLCertificate rank interval

structure CompressionExhaustion where
  finiteRankNonnegative : Nat → Prop
  allFiniteRanks :
    ∀ rank,
      finiteRankNonnegative rank
  strongExhaustion : Prop
  strongExhaustionProof : strongExhaustion
  limitPassivity : Prop
  limitPassivityProof : limitPassivity

structure OnePrimeConditionalPassivity
    (prime : Nat) where
  prime_isPrime : Nat.Prime prime
  finitePassivity :
    ∀ rank,
      ∃ system : OnePrimeMomentSystem,
        system.prime = prime ∧
          Nonempty
            (FixedPrimeFinitePassivity
              system rank)
  exhaustion : CompressionExhaustion
  passiveLimit : Prop
  passiveLimitProof : passiveLimit

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6dc1c755f122ef10c57ecaaa3cf09caba016afe06fe5a08aa0f0bd1671961d7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/OnePrimePassivity/Variant5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
