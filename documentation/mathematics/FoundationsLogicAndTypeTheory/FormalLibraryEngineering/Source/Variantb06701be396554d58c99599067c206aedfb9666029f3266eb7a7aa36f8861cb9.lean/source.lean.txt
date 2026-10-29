-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceLanguage.Variantb657ff9f78b939da2c2cc861f505bc086a19ae436f3793a7842257a6357ba905","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b657ff9f78b939da2c2cc861f505bc086a19ae436f3793a7842257a6357ba905","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.SourceLanguage.Variantb657ff9f78b939da2c2cc861f505bc086a19ae436f3793a7842257a6357ba905","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"b657ff9f78b939da2c2cc861f505bc086a19ae436f3793a7842257a6357ba905","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Opaque

/-! # Source units -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceLanguage.Variantb657ff9f78b939da2c2cc861f505bc086a19ae436f3793a7842257a6357ba905

namespace Mathematics.Ingestion

inductive SourceLanguage
  | lean
  | markdown
  | yaml
  | json
  | toml
  | shell
  | rust
  | other (name : String)
  deriving DecidableEq, Repr

/-- Decoded text remains tied to the immutable raw artifact bytes. -/
structure SourceUnit where
  sourceId : StableId
  artifact : Ecosystem.RawArtifact
  language : SourceLanguage
  encoding : String
  lineCount : Nat
  decodedTextDigest : Digest
  decodingLossless : Bool
  deriving DecidableEq, Repr

end Mathematics.Ingestion
