import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/--
CS-08 projects refinement coherence for the same vertex placement and selected
realization retained by the package.
-/
theorem cs08_refinementRealizationCoherence
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS08Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs08Claim⟩

end FCRS.ControlledSpherical.Theorems
