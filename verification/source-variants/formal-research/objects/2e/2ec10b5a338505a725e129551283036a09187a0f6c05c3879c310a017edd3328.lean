import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/--
CF-12 research-rule projection for existence of an abstract coherent
controlled presentation from the explicitly packaged premises.
-/
theorem cf12_controlledPresentationExistence
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF12Claim M :=
  registry.cf12

end FCRS.ControlledPlane.Theorems
