import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/--
CS-05 projects vertex-coordinate compatibility for the package's exact `S²`
injection.  It says nothing about edge paths or topology and is branch-vacuous
when `S³` is selected.
-/
theorem cs05_vertexCompatibleS2Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS05Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs05Claim⟩

end FCRS.ControlledSpherical.Theorems
