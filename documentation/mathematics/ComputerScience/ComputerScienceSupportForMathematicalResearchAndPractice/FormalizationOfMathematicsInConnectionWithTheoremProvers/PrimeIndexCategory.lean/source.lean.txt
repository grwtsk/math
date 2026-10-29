import Mathematics.Prismatic.FinitePrimeState

/-!
# Inclusion category of finite certified prime states

Objects are finite prime states.  Morphisms are exact inclusions preserving
every pre-existing local fiber and the represented global object.  Restriction
is the opposite inclusion; neither direction discovers a prime.
-/

namespace Mathematics.Prismatic

/-- Inclusion of one finite certified prime state into another. -/
structure PrimeStateInclusion
    (source target : FinitePrimeState) where
  subset :
    source.primes ⊆ target.primes
  fibersPreserved :
    ∀ prime (membership : prime ∈ source.primes),
      target.fiberAddress prime (subset membership) =
        source.fiberAddress prime membership
  globalObjectPreserved :
    target.globalObject = source.globalObject
  inclusionCertificate : ObjectAddress

/-- Identity inclusion, with an explicit certificate address. -/
def PrimeStateInclusion.identity
    (state : FinitePrimeState)
    (certificate : ObjectAddress) :
    PrimeStateInclusion state state where
  subset := by
    intro prime membership
    exact membership
  fibersPreserved := by
    intro prime membership
    rfl
  globalObjectPreserved := rfl
  inclusionCertificate := certificate

/-- Composition of certified finite-prime inclusions. -/
def PrimeStateInclusion.compose
    {first second third : FinitePrimeState}
    (left : PrimeStateInclusion first second)
    (right : PrimeStateInclusion second third)
    (certificate : ObjectAddress) :
    PrimeStateInclusion first third where
  subset := by
    intro prime membership
    exact right.subset (left.subset membership)
  fibersPreserved := by
    intro prime membership
    have middleMembership : prime ∈ second.primes :=
      left.subset membership
    have targetMembership : prime ∈ third.primes :=
      right.subset middleMembership
    calc
      third.fiberAddress prime targetMembership =
          second.fiberAddress prime middleMembership :=
        right.fibersPreserved prime middleMembership
      _ = first.fiberAddress prime membership :=
        left.fibersPreserved prime membership
  globalObjectPreserved :=
    right.globalObjectPreserved.trans left.globalObjectPreserved
  inclusionCertificate := certificate

/--
Restriction from `large` to `small` is represented by an inclusion of the
retained state into the larger state, so discarded fibers cannot masquerade as
new data.
-/
abbrev PrimeStateRestriction
    (large small : FinitePrimeState) :=
  PrimeStateInclusion small large

end Mathematics.Prismatic
