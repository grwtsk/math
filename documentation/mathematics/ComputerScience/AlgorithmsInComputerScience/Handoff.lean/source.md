# Handoff — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10c4b24b05e43ff4926115b2bf99717f8bdcba5d` · SHA-256 `1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Execution

/-!
# Cross-device handoff

Handoff transfers navigation context.  A source-device lease cannot authorize
an operation on a distinct target device.
-/

namespace Mathematics.Capability

structure HandoffContext where
  sourceDevice : DeviceId
  targetDevice : DeviceId
  devices_distinct :
    sourceDevice ≠ targetDevice
  element : ElementId
  purpose : PurposeId
  snapshot : ObjectAddress

def HandoffContext.transferredLease
    (_ : HandoffContext) :
    Option Lease :=
  none

@[simp] theorem handoff_transfers_no_lease
    (handoff : HandoffContext) :
    handoff.transferredLease = none :=
  rfl

theorem source_lease_does_not_authorize_target
    (handoff : HandoffContext)
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat)
    (request : OperationRequest)
    (sourceBound :
      lease.capability.device = handoff.sourceDevice)
    (targetBound :
      request.device = handoff.targetDevice) :
    ¬ lease.Allows revocations time request := by
  intro authorization
  apply handoff.devices_distinct
  calc
    handoff.sourceDevice = lease.capability.device := sourceBound.symm
    _ = request.device := authorization.device_bound
    _ = handoff.targetDevice := targetBound

end Mathematics.Capability
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c5acbb1dd3eb67c416a2f69d5e4eea27b01ef9cd70e13ed07270868ecc6434a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variant1cffc15a617ca988f260f5aa325ad212716b3db27e5f662e79aa81bf86c26d7f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
