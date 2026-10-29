import Mathematics.StratifiedBoundary.OrdinalTally.Semantics

/-!
# Canonical profile-relative codes

The wrapper records the raw code, its normalized form, and the profile proof.
-/

namespace Mathematics.StratifiedBoundary

structure CanonicalOrdinalTally
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic) where
  raw : OrdinalTally
  admitted : profile.admits raw
  normalized : OrdinalTally := profile.normalize raw
  normalized_exact : normalized = profile.normalize raw
  normalized_fixed :
    profile.normalize normalized = normalized

def CanonicalOrdinalTally.semanticValue
    {Semantic : Type u}
    {profile : OrdinalNotationProfile Semantic}
    (code : CanonicalOrdinalTally profile) : Semantic :=
  profile.denotes code.normalized

end Mathematics.StratifiedBoundary
