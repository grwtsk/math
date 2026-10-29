-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StateKind.Variantb802b55cf49469ab2d01dbb62f87bf2882f7977972853b585f5c699424bf8c7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b802b55cf49469ab2d01dbb62f87bf2882f7977972853b585f5c699424bf8c7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StateKind.Variantb802b55cf49469ab2d01dbb62f87bf2882f7977972853b585f5c699424bf8c7c","mathematical_subject":"Foundations.Unclassified","original_sha256":"b802b55cf49469ab2d01dbb62f87bf2882f7977972853b585f5c699424bf8c7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Progression/Kind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity

/-! # Oracle progression kinds -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StateKind.Variantb802b55cf49469ab2d01dbb62f87bf2882f7977972853b585f5c699424bf8c7c

namespace Mathematics.Progression

inductive StateKind
  | prompt
  | oracleQuery
  | oracleResult
  | modelProposal
  | agreement
  | validation
  | acceptedEffect
  deriving DecidableEq, Repr

end Mathematics.Progression
