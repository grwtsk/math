# Elemental Step — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26f8faf490ff05dc47c3cef7b3434dd64f9f8b41` · SHA-256 `a277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Relaxation.ElementalState
import Mathematics.Relaxation.Step

/-!
# Monotone elemental relaxation

An admitted step may refine overlays and projections while preserving source
addresses and project-local identities exactly.  Negative and unresolved
evidence may grow but cannot disappear.
-/

namespace Mathematics.Relaxation

structure ElementalStep
    (before after : ElementalState) where
  receipt : StepReceipt
  before_digest_exact :
    receipt.beforeDigest = before.stateDigest
  after_digest_exact :
    receipt.afterDigest = after.stateDigest
  point_universe_preserved :
    before.pointUniverse.universeId =
      after.pointUniverse.universeId
  source_addresses_preserved :
    before.immutableSourceAddressIds =
      after.immutableSourceAddressIds
  local_identity_preserved :
    before.projectLocalPointIds =
      after.projectLocalPointIds
  negative_evidence_monotone :
    ∀ elementId ∈ before.negativeElementIds,
      elementId ∈ after.negativeElementIds
  unresolved_branches_monotone :
    ∀ branchId ∈ before.unknownBranchIds,
      branchId ∈ after.unknownBranchIds

theorem ElementalStep.cannot_erase_negative
    {before after : ElementalState}
    (step : ElementalStep before after)
    {elementId : ElementId}
    (present : elementId ∈ before.negativeElementIds) :
    elementId ∈ after.negativeElementIds :=
  step.negative_evidence_monotone elementId present

theorem ElementalStep.cannot_reidentify_local_points
    {before after : ElementalState}
    (step : ElementalStep before after) :
    before.projectLocalPointIds =
      after.projectLocalPointIds :=
  step.local_identity_preserved

end Mathematics.Relaxation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fe545d85d1304acbe0c0564810294572da707d7fad62be1d504f930bbc0e1a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElementalStep/Varianta277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
