# Packet Ring Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b48d806e9e83364767d3da562aa519f4e52ee400` · SHA-256 `5909f9f1854e7f918ddb953e9f8302bb6fa667e5ef067d75cc6b89a552efb33d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Runtime.RingState
import FilesystemCodec.Blocks

/-!
# Framed filesystem-packet ring adapter

Packet rings retain `BitPacket.payloadBits`; they do not replace framed packets
with bare dependent matrices.  This adapter is intentionally downstream of
both the generic runtime ring and the filesystem codec.
-/

namespace BitMatrix.Runtime

open FilesystemCodec

/-- Validated framed filesystem packets stored in a generic ring. -/
abbrev PacketRingState
    (capacity width : Nat) :=
  DAF.Runtime.RingState capacity (BitPacket width)

/--
Observe the latest packet through its exact payload length and a caller-chosen
matrix reduction.  The length prevents trailing-zero framing loss.
-/
def latestPayloadAndMatrixObservation
    (state : PacketRingState capacity width)
    (hcapacity : 0 < capacity)
    (reduceMatrix : VariableMatrix width → Summary) :
    Option (Nat × Summary) :=
  (DAF.Runtime.RingState.latestEntry state hcapacity).map fun packet =>
    (packet.payloadBits, reduceMatrix packet.toVariableMatrix)

end BitMatrix.Runtime
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=421a424be55c5aebce4bd77f5e944b04848737c32646c5226f84ab0a67f5bafc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PacketRing/Variant5909f9f1854e7f918ddb953e9f8302bb6fa667e5ef067d75cc6b89a552efb33d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
