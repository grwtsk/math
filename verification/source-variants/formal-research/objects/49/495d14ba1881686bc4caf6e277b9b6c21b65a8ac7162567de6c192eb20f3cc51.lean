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
