# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Artifact.Variant88917cdc361f39b03ea0a156635f3dfa08fff0a33f9e83984e43eff31f84825e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dac016924477ecca74b21b289f19bde53aacc1b` · SHA-256 `88917cdc361f39b03ea0a156635f3dfa08fff0a33f9e83984e43eff31f84825e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Provenance

/-! # Losslessly retained project artifacts -/

namespace Mathematics.Ecosystem

abbrev ArtifactId := StableId

/-- Artifact classification is descriptive and never a retention filter. -/
inductive ArtifactKind
  | leanSource
  | lakeConfiguration
  | buildConfiguration
  | workflow
  | blueprint
  | issue
  | documentation
  | data
  | license
  | binary
  | opaque
  deriving DecidableEq, Repr

/-- Immutable bytes and source metadata for every captured project artifact. -/
structure RawArtifact where
  artifactId : ArtifactId
  address : SourceObjectAddress
  storageObjectId : StableId
  kind : ArtifactKind
  byteCount : Nat
  executable : Bool
  mediaType : String
  license : LicenseRecord
  sourceBytes : Array UInt8
  storedBytes : Array UInt8
  stored_bytes_round_trip : storedBytes = sourceBytes
  byte_count_exact : byteCount = sourceBytes.size
  storedBytesDigest : Digest
  stored_bytes_exact : storedBytesDigest = address.contentDigest
  captureDigest : Digest
  deriving DecidableEq, Repr

/-- Semantic opacity is represented explicitly rather than as omission. -/
def RawArtifact.IsOpaque (artifact : RawArtifact) : Prop :=
  artifact.kind = .opaque

/-- Reading the content-addressed object reproduces the source byte digest. -/
theorem RawArtifact.byte_round_trip
    (artifact : RawArtifact) :
    artifact.storedBytes = artifact.sourceBytes :=
  artifact.stored_bytes_round_trip

end Mathematics.Ecosystem
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b67bcd163245ccd79a0b700b9d70c0b60dfbe9138aa3df1946900f9b22c3d8bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Artifact/Variant88917cdc361f39b03ea0a156635f3dfa08fff0a33f9e83984e43eff31f84825e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
