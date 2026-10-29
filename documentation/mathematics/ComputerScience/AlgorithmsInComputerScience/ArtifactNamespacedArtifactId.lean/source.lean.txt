-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArtifactKind.Variant88917cdc361f39b03ea0a156635f3dfa08fff0a33f9e83984e43eff31f84825e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88917cdc361f39b03ea0a156635f3dfa08fff0a33f9e83984e43eff31f84825e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ArtifactKind.Variant88917cdc361f39b03ea0a156635f3dfa08fff0a33f9e83984e43eff31f84825e","mathematical_subject":"Computation.DataStructures","original_sha256":"88917cdc361f39b03ea0a156635f3dfa08fff0a33f9e83984e43eff31f84825e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ecosystem/Artifact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Provenance

/-! # Losslessly retained project artifacts -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArtifactKind.Variant88917cdc361f39b03ea0a156635f3dfa08fff0a33f9e83984e43eff31f84825e

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
