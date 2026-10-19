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
