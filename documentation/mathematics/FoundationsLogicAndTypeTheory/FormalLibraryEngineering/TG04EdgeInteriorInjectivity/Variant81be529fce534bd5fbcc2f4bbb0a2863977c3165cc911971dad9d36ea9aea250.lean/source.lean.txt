import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg04_edgeInteriorInjectivity
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG04Claim G I := by
  intro e t u ht hu hEq
  exact edgePath_injective_on_interior ht hu hEq

end FCRS.ControlledSpherical.TopologicalTheorems
