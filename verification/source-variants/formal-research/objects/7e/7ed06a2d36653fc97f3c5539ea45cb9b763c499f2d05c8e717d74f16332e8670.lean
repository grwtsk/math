import Mathematics.Federation.VersionTransport

/-! # Version-loop holonomy -/

namespace Mathematics.Federation

universe u

/-- A closed version loop records the complete composite action. -/
structure VersionHolonomy (Object : Type u) where
  baseRevision : StableId
  route : List StableId
  composite : Object → Option Object
  fixed : Object → Prop
  fixed_exact :
    ∀ object, fixed object ↔ composite object = some object
  unresolved : List TransportResidue
  holonomyDigest : Digest

end Mathematics.Federation
