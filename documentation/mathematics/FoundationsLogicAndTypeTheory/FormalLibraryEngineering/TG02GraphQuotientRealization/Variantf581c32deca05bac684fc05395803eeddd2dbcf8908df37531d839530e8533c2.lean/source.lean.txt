import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg02_graphQuotientRealization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG02Claim G I where
  quotientExact := by
    intro x y
    constructor
    · exact Quotient.exact
    · intro h
      change Quotient.mk (graphEndpointSetoid G I) x =
        Quotient.mk (graphEndpointSetoid G I) y
      exact Quotient.sound h
  verticesRemainDistinct := vertexPoint_injective

end FCRS.ControlledSpherical.TopologicalTheorems
