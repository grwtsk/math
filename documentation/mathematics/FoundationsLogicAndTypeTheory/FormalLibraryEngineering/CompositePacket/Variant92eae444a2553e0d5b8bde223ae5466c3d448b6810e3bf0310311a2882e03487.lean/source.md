# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompositePacket.Variant92eae444a2553e0d5b8bde223ae5466c3d448b6810e3bf0310311a2882e03487

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `527579592f5ce2e3a5a9b705678a73bf541a6aab` · SHA-256 `92eae444a2553e0d5b8bde223ae5466c3d448b6810e3bf0310311a2882e03487`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ContractElements.ProjectExport

/-!
# Composite packet bindings

These structures bind metadata and content roots.  Packed bytes and activation
remain Rust-owned and are therefore not constructors in this package.
-/

namespace URSM.Contracts

structure CompositeObjectRoots where
  projectExports : ObjectRef
  theoremCertificates : ObjectRef
  transportCertificates : ObjectRef
  buildReceipts : ObjectRef
  kernelChecks : ObjectRef
  runtimeEvidence : ObjectRef
  residues : ObjectRef
  deriving DecidableEq, Repr

structure CompositePacketBinding where
  schemaVersion : Nat
  compositeSnapshotId : DigestRef
  parentCompositeSnapshotId : Option DigestRef
  leanToolchainDigest : DigestRef
  lakeGraphDigest : DigestRef
  projectTableDigest : DigestRef
  slotMapDigest : DigestRef
  objectRoots : CompositeObjectRoots
  packetDigest : DigestRef
  deriving DecidableEq, Repr

end URSM.Contracts
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5d36b9a6b009500b4a4c976246ee3588f068401fa5119b431fc21972f387005 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompositePacket/Variant92eae444a2553e0d5b8bde223ae5466c3d448b6810e3bf0310311a2882e03487.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
