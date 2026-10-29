import Surface.Legacy.Ricci.Surgery

namespace Surface
namespace Legacy

structure SurgeryStepSound
    (step : RicciSurgeryStep) : Prop where
  gluingSound : step.gluingSound.gluingCertified

structure RicciFlowWithSurgery where
  initial : RicciFlowTrajectory
  surgerySteps : List RicciSurgeryStep
  intervals : List RicciFlowTrajectory
  geometricHypothesesOnIntervals :
    ∀ R, R ∈ intervals -> RicciFlowGeometricHypotheses R
  surgerySound :
    ∀ step, step ∈ surgerySteps -> SurgeryStepSound step
  finiteSurgeryOnCompactIntervals? : Prop

end Legacy
end Surface
