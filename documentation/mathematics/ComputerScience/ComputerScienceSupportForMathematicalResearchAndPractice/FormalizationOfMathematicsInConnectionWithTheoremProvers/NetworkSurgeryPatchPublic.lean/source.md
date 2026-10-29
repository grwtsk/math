# Network Surgery Patch Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bced185fb3ae9ac7ec925eb41d6fa0c17e1c888` · SHA-256 `ddb69304807e53fe21413f972d789ced006510dd02d78920513b9bc2199d6f71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f193385d2c166db9509b491ff8f61b7f57d07f6d694381c6f7b8e6f04dad0c5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NetworkSurgeryPatch/Variantddb69304807e53fe21413f972d789ced006510dd02d78920513b9bc2199d6f71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
