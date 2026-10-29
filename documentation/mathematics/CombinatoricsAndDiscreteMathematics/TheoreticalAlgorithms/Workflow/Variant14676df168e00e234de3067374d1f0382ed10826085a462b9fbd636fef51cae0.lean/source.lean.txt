-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WorkflowRecord.Variant87b704a9d64b79ae51b136d70ce0224f6c1d4be927fd44325dd50940b05f9eea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87b704a9d64b79ae51b136d70ce0224f6c1d4be927fd44325dd50940b05f9eea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.WorkflowRecord.Variant87b704a9d64b79ae51b136d70ce0224f6c1d4be927fd44325dd50940b05f9eea","mathematical_subject":"Computation.DataStructures","original_sha256":"87b704a9d64b79ae51b136d70ce0224f6c1d4be927fd44325dd50940b05f9eea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Workflow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Source

/-! # Build and verification workflows -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WorkflowRecord.Variant87b704a9d64b79ae51b136d70ce0224f6c1d4be927fd44325dd50940b05f9eea

namespace Mathematics.Ingestion

structure WorkflowRecord where
  workflowId : StableId
  source : SourceUnit
  triggerDigest : Digest
  commandDigests : List Digest
  environmentVariableNames : List String
  secretValuesRetained : Bool := false
  deriving DecidableEq, Repr

end Mathematics.Ingestion
