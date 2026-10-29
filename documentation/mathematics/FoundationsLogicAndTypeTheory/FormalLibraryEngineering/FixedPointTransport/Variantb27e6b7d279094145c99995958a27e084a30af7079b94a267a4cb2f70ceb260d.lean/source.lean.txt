import Mathematics.Concept.PropertyTransport
import Mathematics.Operational.DiscreteFixedPoint

/-!
# Exact-fixedness transport

Transport of an operator state preserves exact fixedness only when the path
map commutes with the two versioned updates.  This adapter produces a
naturality witness for the fixed-point property alone; it grants no Lyapunov,
attraction, contraction, or persistence transport.
-/

namespace Mathematics.Operational

universe u v w

variable
    {Base : Type u}
    {Fiber : Base → Type v}
    (operators : ∀ base, VersionedOperator (Fiber base))

/-- Exact operator-relative fixedness as an indexed fiber property. -/
def exactFixedPointProperty
    (authority : Concept.Profile) :
    Concept.FiberProperty Base
      (fun base ↦ (operators base).domain) where
  propertyId := { value := "property:operator-relative-exact-fixedness" }
  Holds := fun base state ↦
    Function.IsFixedPt (operators base).step state
  authority := authority

/--
The path action commutes with the exact source and target operators.  This is
the property-specific premise needed to transport fixedness.
-/
structure OperatorPathNaturality
    (action :
      Concept.PathAction Base
        (fun base ↦ (operators base).domain)) : Prop where
  step_commutes :
    ∀ {source target}
      (path : action.Path source target)
      (state : (operators source).domain),
      action.map path ((operators source).step state) =
        (operators target).step (action.map path state)

namespace OperatorPathNaturality

variable
    {operators : ∀ base, VersionedOperator (Fiber base)}
    {action :
      Concept.PathAction Base
        (fun base ↦ (operators base).domain)}

/-- Operator commutation becomes naturality for exact fixedness only. -/
theorem fixedPointNaturality
    (naturality : OperatorPathNaturality operators action)
    (authority : Concept.Profile) :
    Concept.PropertyNaturality action
      (exactFixedPointProperty operators authority) where
  natural := by
    intro source target path state fixed
    change
      (operators target).step (action.map path state) =
        action.map path state
    calc
      (operators target).step (action.map path state) =
          action.map path ((operators source).step state) :=
        (naturality.step_commutes path state).symm
      _ = action.map path state :=
        congrArg (action.map path) fixed

/-- A commuting path maps one exact fixed point to another exact fixed point. -/
def transportFixedPoint
    (naturality : OperatorPathNaturality operators action)
    {source target : Base}
    (path : action.Path source target)
    (point : CertifiedFixedPoint (operators source)) :
    CertifiedFixedPoint (operators target) where
  point := action.map path point.point
  fixed := by
    exact
      (naturality.fixedPointNaturality default).natural
        path point.point point.fixed

@[simp] theorem transportFixedPoint_point
    (naturality : OperatorPathNaturality operators action)
    {source target : Base}
    (path : action.Path source target)
    (point : CertifiedFixedPoint (operators source)) :
    (naturality.transportFixedPoint path point).point =
      action.map path point.point :=
  rfl

end OperatorPathNaturality

end Mathematics.Operational
