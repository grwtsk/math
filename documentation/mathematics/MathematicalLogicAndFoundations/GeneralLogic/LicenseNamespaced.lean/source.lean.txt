-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LicenseDisposition.Variant34ec843333fafd3c5817574caeaffe7ccdc246d35657192da3bd663abf71db61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34ec843333fafd3c5817574caeaffe7ccdc246d35657192da3bd663abf71db61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LicenseDisposition.Variant34ec843333fafd3c5817574caeaffe7ccdc246d35657192da3bd663abf71db61","mathematical_subject":"Foundations.Unclassified","original_sha256":"34ec843333fafd3c5817574caeaffe7ccdc246d35657192da3bd663abf71db61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ecosystem/License.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.ProjectIdentity

/-! # Source-license admission -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LicenseDisposition.Variant34ec843333fafd3c5817574caeaffe7ccdc246d35657192da3bd663abf71db61

namespace Mathematics.Ecosystem

/-- Legal disposition is independent of technical build success. -/
inductive LicenseDisposition
  | admitted
  | rejected
  | reviewRequired
  deriving DecidableEq, Repr

/-- Immutable license evidence attached to one exact source revision. -/
structure LicenseRecord where
  project : ProjectId
  revisionId : StableId
  licenseName : String
  licenseTextDigest : Digest
  sourceNoticeDigest : Digest
  disposition : LicenseDisposition
  rationale : String
  deriving DecidableEq, Repr

/-- Only an explicit admission is legally admissible. -/
def LicenseRecord.LegallyAdmissible (record : LicenseRecord) : Prop :=
  record.disposition = .admitted

theorem LicenseRecord.review_is_not_admission
    (record : LicenseRecord)
    (review : record.disposition = .reviewRequired) :
    ¬ record.LegallyAdmissible := by
  simp [LicenseRecord.LegallyAdmissible, review]

end Mathematics.Ecosystem
