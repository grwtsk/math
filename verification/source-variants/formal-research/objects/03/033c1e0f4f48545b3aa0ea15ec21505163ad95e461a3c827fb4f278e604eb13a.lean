-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ConflictKind.Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ConflictKind.Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00","mathematical_subject":"Topology.GeneralTopology","original_sha256":"99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Desktop/~/2026/08/10/Surface/Mathematics/Federation/Conflict.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Federation.Alignment

/-! # Preserved cross-project conflicts -/


namespace FormalResearch.Topology.GeneralTopology.SourceCorpus.ConflictKind.Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00

namespace Mathematics.Federation

inductive ConflictKind
  | statement
  | definition
  | notation
  | dependency
  | axiomClosure
  | toolchain
  | license
  deriving DecidableEq, Repr

/-- A conflict remains explicit until independently resolved. -/
structure ConflictRecord where
  conflictId : StableId
  left : GlobalDeclarationId
  right : GlobalDeclarationId
  kind : ConflictKind
  evidenceIds : List StableId
  resolution : Option StableId
  conflictDigest : Digest
  deriving DecidableEq, Repr

def ConflictRecord.IsOpen (conflict : ConflictRecord) : Prop :=
  conflict.resolution = none

end Mathematics.Federation
