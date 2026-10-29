import Mathematics.Projection.FormalNeighborhood
import Mathematics.Core.SemanticIdentity

/-!
# Orthogonal intrinsic, separation, and route status

Boundary position, separability, and external routing are independent axes.
In particular, an object may be on a boundary while still carrying a nonzero
separator residue, and neither fact creates a physical path.
-/

namespace Mathematics.Projection

universe u v

inductive BoundaryStatus
  | interior
  | boundary
  | undischarged
  deriving DecidableEq, Repr

inductive RoutingObstruction
  | incompleteProbeFamily
  | unresolvedDenotation
  | incomparableCovers
  | intrinsicCodeCollision
  | nontrivialAutomorphismOrbit
  deriving DecidableEq, Repr

structure RoutingResidue
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element] where
  query : IncidenceCode Probe
  candidateFiber : Finset Element
  obstruction : RoutingObstruction
  notIncidenceSingleton :
    ¬ ∃ element, candidateFiber = {element}

inductive SeparationStatus
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element]
  | separated
  | residue (obstruction : RoutingResidue Element Probe)
  | undischarged (obligation : String)

inductive RouteStatus
  | unrouted
  | opaque (key : RigidKey)
  | namedSingleton (key : RigidKey)
  deriving DecidableEq, Repr

structure IntrinsicPosition
    (Probe : Type u) (Neighborhood : Type v)
    [DecidableEq Neighborhood] where
  incidence : IncidenceCode Probe
  memberships : Finset Neighborhood
  boundary : BoundaryStatus

/-- An exact fiber determines identity only after it is a singleton. -/
structure IncidenceSingleton
    (Element : Type u) [DecidableEq Element]
    (fiber : Finset Element) where
  element : Element
  exact : fiber = {element}

end Mathematics.Projection
