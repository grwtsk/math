import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-07 packages an explicit decoder as controlled losslessness. -/
theorem cf07_losslessDecoder
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation) :
    CF07Claim M :=
  ⟨D⟩

end FCRS.ControlledPlane.Theorems
