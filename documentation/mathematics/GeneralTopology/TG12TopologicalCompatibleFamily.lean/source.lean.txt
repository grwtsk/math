import FCRS.ControlledSpherical.TopologicalClaims

universe uStage uPoint

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg12_topologicalCompatibleFamily
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage) : TG12Claim R where
  topologyIsSubspace := rfl
  projectionsContinuous := continuous_topologicalCompatibleFamilyProjection R
  projectionsCommute := by
    intro x next prev h
    exact topologicalCompatibleFamily_projection_commutes R x h

end FCRS.ControlledSpherical.TopologicalTheorems
