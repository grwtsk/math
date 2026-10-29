-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.TypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SubstitutionCertificate.Variantdea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SubstitutionCertificate.Variantdea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae","mathematical_subject":"Foundations.Unclassified","original_sha256":"dea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Substitution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.ContextualEquivalence

/-! # Contextual substitution certificates and global-synonymy prohibition -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SubstitutionCertificate.Variantdea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae

namespace Mathematics.SemanticTokenization

structure SubstitutionCertificate
    (text : TextCarrier)
    (left right : ConceptProfile text) where
  sourceExpressionId : StableId
  replacementExpressionId : StableId
  sentenceFrameDigest : Digest
  sentence_digest_valid : sentenceFrameDigest.Valid
  context_exact :
    left.context.contextId = right.context.contextId
  registerPreserved : Prop
  domainPreserved : Prop
  pragmaticEffectPreserved : Prop
  register_preserved : registerPreserved
  domain_preserved : domainPreserved
  pragmatic_preserved : pragmaticEffectPreserved
  evidence : EvidenceBundle text

def ContextualSynonymy
    {text : TextCarrier}
    (left right : ConceptProfile text) : Prop :=
  Nonempty (SubstitutionCertificate text left right)

structure GlobalSynonymyClaim where
  claimId : StableId
  universalContextDigest : Digest
  digest_valid : universalContextDigest.Valid

def contextualSynonymyPromotesToGlobal : Bool :=
  false

@[simp] theorem global_synonymy_prohibition :
    contextualSynonymyPromotesToGlobal = false :=
  rfl

structure SingleWordEquivalent (text : TextCarrier) where
  phrase : PhraseCandidate text
  word : Span text
  substitutionEvidence : EvidenceBundle text

end Mathematics.SemanticTokenization
