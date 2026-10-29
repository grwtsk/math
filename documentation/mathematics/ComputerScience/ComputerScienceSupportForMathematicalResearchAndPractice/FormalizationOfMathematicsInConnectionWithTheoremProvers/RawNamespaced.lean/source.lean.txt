-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawIngestion.Variant023ac559b88d5e810b66f89b65906ebb44ad03b50e121d98e62c794e26bc8a74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"023ac559b88d5e810b66f89b65906ebb44ad03b50e121d98e62c794e26bc8a74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RawIngestion.Variant023ac559b88d5e810b66f89b65906ebb44ad03b50e121d98e62c794e26bc8a74","mathematical_subject":"Foundations.Unclassified","original_sha256":"023ac559b88d5e810b66f89b65906ebb44ad03b50e121d98e62c794e26bc8a74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Raw.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Snapshot
import Mathematics.Toolchain.Historical

/-!
# Raw source ingestion

Raw ingestion is byte-preserving and precedes parsing, elaboration, or build
classification.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawIngestion.Variant023ac559b88d5e810b66f89b65906ebb44ad03b50e121d98e62c794e26bc8a74

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
