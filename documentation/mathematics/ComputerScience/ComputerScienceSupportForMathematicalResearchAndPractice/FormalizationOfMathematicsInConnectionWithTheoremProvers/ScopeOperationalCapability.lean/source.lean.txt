import Mathematics.Capability.Effect
import Mathematics.Capability.Principal

/-!
# Device-, element-, purpose-, and snapshot-bound capability

The partial order is componentwise and fail closed.  A refinement must stay on
the same device, purpose, and projection snapshot while reducing both element
scope and effect scope.
-/

namespace Mathematics.Capability

structure OperationalCapability where
  device : DeviceId
  elements : Set ElementId
  purpose : PurposeId
  snapshot : ObjectAddress
  effects : EffectProfile

def OperationalCapability.Refines
    (child parent : OperationalCapability) : Prop :=
  child.device = parent.device ∧
    child.purpose = parent.purpose ∧
    child.snapshot = parent.snapshot ∧
    child.elements ⊆ parent.elements ∧
    child.effects ≤ parent.effects

instance : LE OperationalCapability :=
  ⟨OperationalCapability.Refines⟩

namespace OperationalCapability

@[refl] theorem le_refl (capability : OperationalCapability) :
    capability ≤ capability :=
  ⟨rfl, rfl, rfl, Set.Subset.rfl, EffectProfile.le_refl _⟩

theorem le_trans
    {first second third : OperationalCapability}
    (first_le_second : first ≤ second)
    (second_le_third : second ≤ third) :
    first ≤ third := by
  rcases first_le_second with
    ⟨device₁, purpose₁, snapshot₁, elements₁, effects₁⟩
  rcases second_le_third with
    ⟨device₂, purpose₂, snapshot₂, elements₂, effects₂⟩
  exact
    ⟨device₁.trans device₂,
      purpose₁.trans purpose₂,
      snapshot₁.trans snapshot₂,
      Set.Subset.trans elements₁ elements₂,
      EffectProfile.le_trans effects₁ effects₂⟩

end OperationalCapability

/-- An explicit element neighborhood; no metric threshold is implicit. -/
structure CapabilityNeighborhood where
  neighborhoodId : StableId
  elements : Set ElementId
  certificate : CertificateId

def OperationalCapability.restrict
    (capability : OperationalCapability)
    (neighborhood : CapabilityNeighborhood) :
    OperationalCapability :=
  { capability with
    elements := capability.elements ∩ neighborhood.elements }

theorem OperationalCapability.restrict_le
    (capability : OperationalCapability)
    (neighborhood : CapabilityNeighborhood) :
    capability.restrict neighborhood ≤ capability :=
  ⟨rfl, rfl, rfl, Set.inter_subset_left, EffectProfile.le_refl _⟩

end Mathematics.Capability
