-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetadataType.Variant956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MetadataType.Variant956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59","mathematical_subject":"Foundations.Unclassified","original_sha256":"956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/MetadataType.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Span

/-! # Dependent metadata sorts -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetadataType.Variant956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59

namespace Mathematics.SemanticTokenization

inductive MetadataType
  | lexeme
  | lemma
  | partOfSpeech
  | syntacticRole
  | concept
  | frame
  | domain
  | register
  | polarity
  | modality
  | figurativeStatus
  | argumentRole
  | discourseRole
  | referent
  | evidence
  deriving DecidableEq, Repr

structure MetadataValue (kind : MetadataType) where
  value : String
  deriving DecidableEq, Repr

end Mathematics.SemanticTokenization
