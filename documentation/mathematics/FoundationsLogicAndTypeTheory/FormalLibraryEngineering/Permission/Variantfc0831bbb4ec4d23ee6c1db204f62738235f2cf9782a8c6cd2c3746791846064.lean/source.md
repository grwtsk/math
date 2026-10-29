# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Permission.Variantfc0831bbb4ec4d23ee6c1db204f62738235f2cf9782a8c6cd2c3746791846064

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bb06e39e364577f1918ec7729fd2f9d6e57826e` · SHA-256 `fc0831bbb4ec4d23ee6c1db204f62738235f2cf9782a8c6cd2c3746791846064`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50c18b6ac8cc5e26fce97fc032279721bfe06a6961485efe31acfcbfcdca0ca4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Permission/Variantfc0831bbb4ec4d23ee6c1db204f62738235f2cf9782a8c6cd2c3746791846064.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
