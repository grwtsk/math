import Mathematics.StratifiedBoundary.OrdinalTally.Syntax

/-!
# Ordinal notation profile

All semantic operations are conditional on a versioned profile and its proof
fields.  A syntactically populated code is not thereby part of the profile.
-/

namespace Mathematics.StratifiedBoundary

structure OrdinalNotationProfile (Semantic : Type u) where
  profileId : String
  constructorSetRef : String
  normalizationAlgorithmRef : String
  comparisonAlgorithmRef : String
  supportedFragmentRef : String
  denotes : OrdinalTally → Semantic
  admits : OrdinalTally → Prop
  normalize : OrdinalTally → OrdinalTally
  normalize_admitted :
    ∀ {code}, admits code → admits (normalize code)
  normalize_sound :
    ∀ {code}, admits code →
      denotes (normalize code) = denotes code
  normalize_idempotent :
    ∀ {code}, admits code →
      normalize (normalize code) = normalize code

theorem ordinalTally_normalization_sound
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    {code : OrdinalTally}
    (admitted : profile.admits code) :
    profile.denotes (profile.normalize code) =
      profile.denotes code :=
  profile.normalize_sound admitted

theorem ordinalTally_normalization_idempotent
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    {code : OrdinalTally}
    (admitted : profile.admits code) :
    profile.normalize (profile.normalize code) =
      profile.normalize code :=
  profile.normalize_idempotent admitted

end Mathematics.StratifiedBoundary
