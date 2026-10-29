# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Contract.Variant40092d440ed525ffb7b6087109aeede58f92646c85c8bc7f4e895aa70430a5e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `910cfd157acd38557dedd4620741f325b5cab6c5` · SHA-256 `40092d440ed525ffb7b6087109aeede58f92646c85c8bc7f4e895aa70430a5e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Payload
public import Surface.Refactor.Syntax.Packet

/-!
# Structural-packet payload contract

The transported value is a content-addressed complete-packet descriptor. The
large binary packet remains an artifact, never JSON control-plane state. The
version-one update is identity and preserves the exact bounded descriptor.
-/

public section

namespace Surface.Refactor.Syntax

open Surface.Core.Transport

@[expose] def structuralPacketPayloadDescriptorV1 : PayloadDescriptor where
  schemaId := "surface.structural-packet-descriptor.v1"
  schemaVersion := 1
  algorithmId := "surface.structural-packet.identity-update.v1"
  algorithmVersion := 1
  invariantId := "surface.structural-packet.complete-valid-descriptor.v1"
  serializationVersion := 1
  mergeSemanticsId := "surface.transport.lww-u32-nonwrapping.v1"

@[expose] def structuralPacketExpectedUpdate
    (input : Revisioned CompletePacketDescriptor) :
    Revisioned CompletePacketDescriptor :=
  input

@[expose] def structuralPacketPayloadSemantics :
    PayloadSemantics CompletePacketDescriptor where
  descriptor := structuralPacketPayloadDescriptorV1
  invariant := CompletePacketDescriptor.Valid
  expectedUpdate := structuralPacketExpectedUpdate
  preservesRevision := by intro input; rfl
  preservesInvariant := by intro input valid; exact valid

@[surface_novel, surface_published]
theorem structuralPacketExpectedUpdate_preserves_revision
    (input : Revisioned CompletePacketDescriptor) :
    (structuralPacketExpectedUpdate input).revision = input.revision := by
  rfl

@[surface_novel, surface_published]
theorem structuralPacketExpectedUpdate_preserves_descriptor
    (input : Revisioned CompletePacketDescriptor) :
    (structuralPacketExpectedUpdate input).value = input.value := by
  rfl

@[expose] def decodeCompletePacketDescriptor?
    (raw : CompletePacketDescriptor) : Option CompletePacketDescriptor :=
  if raw.Valid then some raw else none

@[surface_novel, surface_published]
theorem decodeCompletePacketDescriptor?_sound
    {raw payload : CompletePacketDescriptor}
    (decoded : decodeCompletePacketDescriptor? raw = some payload) :
    raw = payload := by
  unfold decodeCompletePacketDescriptor? at decoded
  split at decoded
  · exact Option.some.inj decoded
  · contradiction

@[expose] def completePacketDescriptorCodec :
    PayloadCodec CompletePacketDescriptor CompletePacketDescriptor where
  decode? := decodeCompletePacketDescriptor?
  encode := fun descriptor ↦
    encodeU32LE descriptor.schemaVersion ++
      encodeHash256 descriptor.packetHash ++
      encodeU64LE descriptor.byteLength ++
      encodeLengthPrefixedUtf8 descriptor.artifactObjectId
  rawMatches := fun raw payload ↦ raw = payload
  decodeSound := decodeCompletePacketDescriptor?_sound

end Surface.Refactor.Syntax
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d70fa270c7e249dc3bc2fef82fb7bf83c127efd41a24c49ed64731107527498 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant40092d440ed525ffb7b6087109aeede58f92646c85c8bc7f4e895aa70430a5e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
