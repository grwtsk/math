-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BuildStatus.Variant0dde12207253d616b44d4a25b0011de6d87bf126cc5f293d984a232b6e9c34b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0dde12207253d616b44d4a25b0011de6d87bf126cc5f293d984a232b6e9c34b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BuildStatus.Variant0dde12207253d616b44d4a25b0011de6d87bf126cc5f293d984a232b6e9c34b5","mathematical_subject":"Computation.DataStructures","original_sha256":"0dde12207253d616b44d4a25b0011de6d87bf126cc5f293d984a232b6e9c34b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Toolchain/BuildReceipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Toolchain.Sandbox

/-! # Exact build receipts -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BuildStatus.Variant0dde12207253d616b44d4a25b0011de6d87bf126cc5f293d984a232b6e9c34b5

namespace Mathematics.Toolchain

inductive BuildStatus
  | succeeded
  | failed
  | unavailable
  deriving DecidableEq, Repr

/-- Failure logs are retained with the same status as successful output. -/
structure BuildReceipt where
  capsuleKey : CapsuleKey
  status : BuildStatus
  commandDigest : Digest
  stdoutArtifactId : StableId
  stderrArtifactId : StableId
  producedArtifactIds : List StableId
  exitCode : Option Int
  receiptDigest : Digest
  deriving DecidableEq, Repr

/-- A failed reconstruction is evidence, not absence. -/
def BuildReceipt.IsRetainedFailure (receipt : BuildReceipt) : Prop :=
  receipt.status = .failed ∧ receipt.stderrArtifactId.Valid

end Mathematics.Toolchain
