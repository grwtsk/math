/-!
# Fail-closed permission observations

Human consent, operating-system permission, and hardware availability are
independent veto coordinates.  Unknown and not-determined observations are
not grants.
-/

namespace Mathematics.Capability

inductive ObservedPermission
  | granted
  | denied
  | restricted
  | notDetermined
  | unknown
  deriving DecidableEq, Repr

def ObservedPermission.Permits : ObservedPermission → Prop
  | .granted => True
  | _ => False

inductive HardwareAvailability
  | available
  | unavailable
  | unknown
  deriving DecidableEq, Repr

def HardwareAvailability.Permits : HardwareAvailability → Prop
  | .available => True
  | _ => False

structure IndependentVeto where
  human : ObservedPermission
  operatingSystem : ObservedPermission
  hardware : HardwareAvailability
  deriving DecidableEq, Repr

def IndependentVeto.PermitsExecution
    (veto : IndependentVeto) : Prop :=
  veto.human.Permits ∧
    veto.operatingSystem.Permits ∧
    veto.hardware.Permits

@[simp] theorem unknown_permission_never_permits :
    ¬ ObservedPermission.unknown.Permits := by
  simp [ObservedPermission.Permits]

@[simp] theorem notDetermined_permission_never_permits :
    ¬ ObservedPermission.notDetermined.Permits := by
  simp [ObservedPermission.Permits]

@[simp] theorem denied_permission_never_permits :
    ¬ ObservedPermission.denied.Permits := by
  simp [ObservedPermission.Permits]

theorem human_veto
    (veto : IndependentVeto)
    (denied : ¬ veto.human.Permits) :
    ¬ veto.PermitsExecution := by
  intro permits
  exact denied permits.1

theorem operating_system_veto
    (veto : IndependentVeto)
    (denied : ¬ veto.operatingSystem.Permits) :
    ¬ veto.PermitsExecution := by
  intro permits
  exact denied permits.2.1

theorem hardware_veto
    (veto : IndependentVeto)
    (unavailable : ¬ veto.hardware.Permits) :
    ¬ veto.PermitsExecution := by
  intro permits
  exact unavailable permits.2.2

end Mathematics.Capability
