import Mathematics.Progression.Kind

/-! # Immutable progression states -/

namespace Mathematics.Progression

universe u

structure State (Payload : Type u) where
  id : ProgressionStateId
  revision : Nat
  kind : StateKind
  payload : Payload
  payloadDigest : Digest
  predecessor : Option ProgressionStateId

end Mathematics.Progression
