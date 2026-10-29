import Mathematics.Resolution.Kind

/-!
# Permanent and versioned obligation identity

Grouping coordinates never replace the permanent subject, its snapshot-bound
version, or its source reference.
-/

namespace Mathematics.Resolution

universe u

structure ObligationIdentity where
  permanentId : String
  versionDigest : String
  sourceReference : String
  sourceDigest : String
  deriving DecidableEq, Repr

structure IdentitySystem (Obligation : Type u) where
  identify : Obligation → ObligationIdentity
  injective : Function.Injective identify

theorem IdentitySystem.equal_of_identity_equal
    (system : IdentitySystem Obligation)
    {left right : Obligation}
    (equal : system.identify left = system.identify right) :
    left = right :=
  system.injective equal

end Mathematics.Resolution
