import CompositeElements.Planes

/-! # Immutable formal half of one composite snapshot. -/

namespace URSM.Composite

structure StaticComposite where
  projects : Fin projectCount → ProjectDescriptor
  projectIdsUnique :
    Function.Injective (fun index ↦ (projects index).projectId)
  planes : StaticPlanes
  parentSnapshotId : Option String
  formalCertificateRoot : String

def phaseOneStaticComposite : StaticComposite where
  projects := projectAt
  projectIdsUnique := projectId_unique
  planes := staticPlanes
  parentSnapshotId := none
  formalCertificateRoot :=
    "lean:URSM.Composite.phaseOneStaticComposite_valid"

abbrev DiagonalStatus (n : Nat) := Fin n → Bool

structure ActiveOverlay (n : Nat) where
  active : DiagonalStatus n
  buildComplete : DiagonalStatus n
  kernelChecked : DiagonalStatus n
  runtimeChecked : DiagonalStatus n
  quarantined : DiagonalStatus n

structure ActivationValid
    (imports conflict : BitMatrix n n)
    (overlay : ActiveOverlay n) : Prop where
  ready :
    ∀ i, overlay.active i = true →
      overlay.buildComplete i = true ∧
      overlay.kernelChecked i = true ∧
      overlay.runtimeChecked i = true ∧
      overlay.quarantined i = false
  dependencyClosed :
    ∀ i j,
      overlay.active i = true →
      imports i j = true →
      overlay.active j = true
  conflictFree :
    ∀ i j,
      overlay.active i = true →
      overlay.active j = true →
      conflict i j = false

end URSM.Composite
