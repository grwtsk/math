# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Command.Variant495d14ba1881686bc4caf6e277b9b6c21b65a8ac7162567de6c192eb20f3cc51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df674bc321d60546b58cdbfcb1c8a14ddd2ddcb9` · SHA-256 `495d14ba1881686bc4caf6e277b9b6c21b65a8ac7162567de6c192eb20f3cc51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Execution
import NetworkElements.Operation

/-! # Snapshot-bound capability-admitted command packets -/

namespace URSM.Network

open Mathematics
open Mathematics.Capability

structure CommandPacket where
  eventId : StableId
  clientSequence : Nat
  request : OperationRequest
  baseSnapshot : ObjectAddress
  operation : NetworkOperation
  bodyDigest : Digest

structure AdmittedCommand
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat)
    (packet : CommandPacket) where
  authorization :
    lease.Allows revocations time packet.request
  snapshot_bound :
    packet.request.snapshot = packet.baseSnapshot
  effect_bound :
    packet.request.effect = packet.operation.requiredEffect

def AdmittedCommand.evidenceKind
    {lease revocations time packet}
    (_ : AdmittedCommand lease revocations time packet) :
    Mathematics.Authority.EvidenceKind :=
  .runtimeObservation

@[simp] theorem admitted_command_has_no_theorem_authority
    {lease revocations time packet}
    (admitted : AdmittedCommand lease revocations time packet) :
    Mathematics.Authority.contributesTheoremAuthority
      admitted.evidenceKind = false :=
  rfl

end URSM.Network
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8460f8e9d9cba406486168bc934466f59a67ce08afb2fd13e93a7735d1016ff3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Command/Variant495d14ba1881686bc4caf6e277b9b6c21b65a8ac7162567de6c192eb20f3cc51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
