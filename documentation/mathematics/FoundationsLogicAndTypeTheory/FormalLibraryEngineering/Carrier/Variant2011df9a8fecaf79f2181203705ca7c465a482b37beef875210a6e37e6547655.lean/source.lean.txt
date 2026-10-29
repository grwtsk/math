import Mathematics.GammaBridge.All

/-! # Trajectory carriers -/

namespace Mathematics.Trajectory

universe u

structure Carrier (State : Type u) where
  id : TrajectoryId
  progression : Progression.CarrierIdentity
  profile : GammaBridge.ParameterProfile
  path : ℝ → State

end Mathematics.Trajectory
