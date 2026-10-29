-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompositionRule.Variantedf6972977bcc9d5361871f22cc2db341757caa30f7988ec308c71b23fd2feff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"edf6972977bcc9d5361871f22cc2db341757caa30f7988ec308c71b23fd2feff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CompositionRule.Variantedf6972977bcc9d5361871f22cc2db341757caa30f7988ec308c71b23fd2feff","mathematical_subject":"Computation.DataStructures","original_sha256":"edf6972977bcc9d5361871f22cc2db341757caa30f7988ec308c71b23fd2feff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Composition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Phrase

/-! # Explicit composition rules and literal baselines -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompositionRule.Variantedf6972977bcc9d5361871f22cc2db341757caa30f7988ec308c71b23fd2feff

namespace Mathematics.SemanticTokenization

structure CompositionRule where
  ruleId : StableId
  headSelectionRule : StableId
  argumentBindingRule : StableId
  scopeRule : StableId
  negationRule : StableId
  modalityRule : StableId
  coordinationRule : StableId
  referenceResolutionRule : StableId
  figurativeOverrideRule : StableId
  compose :
    List String → MeaningPayload

structure CompositionCertificate (text : TextCarrier) where
  phrase : PhraseCandidate text
  context : Context
  inputs : List String
  rule : CompositionRule
  meaning : MeaningPayload
  meaning_exact :
    meaning = rule.compose inputs
  evidence : EvidenceBundle text

structure LiteralReading (text : TextCarrier) where
  composition : CompositionCertificate text
  classification : ReadingClass
  literal_or_unknown :
    classification = .literal ∨
      classification = .unknown

theorem CompositionCertificate.output_exact
    {text : TextCarrier}
    (certificate : CompositionCertificate text) :
    certificate.meaning =
      certificate.rule.compose certificate.inputs :=
  certificate.meaning_exact

end Mathematics.SemanticTokenization
