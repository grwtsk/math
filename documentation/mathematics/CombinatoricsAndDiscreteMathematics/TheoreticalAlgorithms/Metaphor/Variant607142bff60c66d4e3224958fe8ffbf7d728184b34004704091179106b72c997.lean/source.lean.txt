-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetaphorMapping.Variant50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MetaphorMapping.Variant50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712","mathematical_subject":"Computation.DataStructures","original_sha256":"50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Metaphor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Idiom

/-! # Source/target-separated metaphor records -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetaphorMapping.Variant50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712

namespace Mathematics.SemanticTokenization

structure MetaphorMapping where
  sourceFeature : StableId
  targetFeature : StableId

structure MetaphorCertificate (text : TextCarrier) where
  metaphorId : StableId
  phrase : PhraseCandidate text
  context : Context
  sourceDomain : StableId
  targetDomain : StableId
  domain_distinct :
    sourceDomain ≠ targetDomain
  mappings : List MetaphorMapping
  mappings_nonempty : mappings ≠ []
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  snapshot : SnapshotId
  context_snapshot_exact :
    context.snapshot = snapshot

structure MixedReadingCertificate (text : TextCarrier) where
  literal : LiteralReading text
  metaphor : MetaphorCertificate text
  externalReading : ExternalContextualReading text

end Mathematics.SemanticTokenization
