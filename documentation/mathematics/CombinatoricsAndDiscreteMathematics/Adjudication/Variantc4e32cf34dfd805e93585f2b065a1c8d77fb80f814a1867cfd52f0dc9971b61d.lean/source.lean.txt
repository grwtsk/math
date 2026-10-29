-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EvidenceConflict.Variant40a06eb83166d9b8bd2dfd0bbe21704c0636f4a2e7c2cb05674cf8e9e34d8a84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40a06eb83166d9b8bd2dfd0bbe21704c0636f4a2e7c2cb05674cf8e9e34d8a84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EvidenceConflict.Variant40a06eb83166d9b8bd2dfd0bbe21704c0636f4a2e7c2cb05674cf8e9e34d8a84","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"40a06eb83166d9b8bd2dfd0bbe21704c0636f4a2e7c2cb05674cf8e9e34d8a84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Adjudication.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.ExternalAssertion

/-!
# Explicit evidence conflict and adjudication
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EvidenceConflict.Variant40a06eb83166d9b8bd2dfd0bbe21704c0636f4a2e7c2cb05674cf8e9e34d8a84

namespace Mathematics.SemanticTokenization

structure EvidenceConflict where
  assertion : AssertionId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  description : String
deriving Repr

inductive AdjudicationDecision
  | acceptAll
  | acceptOnly (evidence : Finset EvidenceId)
  | retainAmbiguity
  | rejectAll
deriving Repr

structure AdjudicationCertificate where
  conflict : EvidenceConflict
  decision : AdjudicationDecision
  adjudicator : AuthorityClass
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  snapshot : SnapshotId
  certificateDigest : Digest
deriving Repr

end Mathematics.SemanticTokenization
