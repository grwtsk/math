module

public import Surface.Refactor.Surgery.Inverse

/-!
# Network-surgery patch round-trip aliases

The theorem-facing patch pair is backed by exact before/after bytes and guard
observations.  It makes no claim about arbitrary external unified diffs.
-/

public section

namespace Surface.Refactor.NetworkSurgery

open Surface.Refactor.Surgery

@[surface_novel, surface_published]
theorem forwardReversePatch_roundTrip (bundle : SurgeryBundle) :
    applyObservedEditSequence bundle.baseSnapshot.canonicalSourceBytes
        bundle.forwardObservations bundle.forwardEdits =
      some bundle.afterSnapshot.canonicalSourceBytes ∧
    applyObservedEditSequence bundle.afterSnapshot.canonicalSourceBytes
        bundle.inverseObservations bundle.inverseEdits =
      some bundle.baseSnapshot.canonicalSourceBytes :=
  ⟨bundle.forwardAppliesExactly, bundle.inverseAppliesExactly⟩

@[surface_novel, surface_published]
theorem reverseForwardPatch_roundTrip (bundle : SurgeryBundle) :
    applyObservedEditSequence bundle.afterSnapshot.canonicalSourceBytes
        bundle.inverseObservations bundle.inverseEdits =
      some bundle.baseSnapshot.canonicalSourceBytes ∧
    applyObservedEditSequence bundle.baseSnapshot.canonicalSourceBytes
        bundle.forwardObservations bundle.forwardEdits =
      some bundle.afterSnapshot.canonicalSourceBytes :=
  ⟨bundle.inverseAppliesExactly, bundle.forwardAppliesExactly⟩

end Surface.Refactor.NetworkSurgery
