# Raw — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d6eac2aca9468f69f667f7a5550d56403b77c78` · SHA-256 `023ac559b88d5e810b66f89b65906ebb44ad03b50e121d98e62c794e26bc8a74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Snapshot
import Mathematics.Toolchain.Historical

/-!
# Raw source ingestion

Raw ingestion is byte-preserving and precedes parsing, elaboration, or build
classification.
-/

namespace Mathematics.Ingestion

/-- Immutable entry point for one exact source and toolchain pair. -/
structure RawIngestion where
  ingestionId : StableId
  snapshot : Ecosystem.ProjectSnapshot
  reconstruction : Toolchain.HistoricalReconstruction
  project_matches :
    reconstruction.sandboxed.capsule.project =
      snapshot.identity.projectId
  revision_matches :
    reconstruction.sandboxed.capsule.revisionId =
      snapshot.revision.revisionId
  capsule_identity_matches :
    reconstruction.sandboxed.capsule.capsuleId =
      snapshot.toolchainCapsuleId
  ingestionDigest : Digest

end Mathematics.Ingestion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af31f95f36a5f9c441201ddfeee4b2733e34dee34edee75decabb7d96bd39150 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variant023ac559b88d5e810b66f89b65906ebb44ad03b50e121d98e62c794e26bc8a74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
