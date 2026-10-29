-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticTheoremAuthority.Variant2e3148257b34ed21d4b63c31a32e5785d0c101bbfeae56aeed6a3351e0f7344d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e3148257b34ed21d4b63c31a32e5785d0c101bbfeae56aeed6a3351e0f7344d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SemanticTheoremAuthority.Variant2e3148257b34ed21d4b63c31a32e5785d0c101bbfeae56aeed6a3351e0f7344d","mathematical_subject":"Foundations.Unclassified","original_sha256":"2e3148257b34ed21d4b63c31a32e5785d0c101bbfeae56aeed6a3351e0f7344d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.EvidenceCut

/-! # Interpretation and theorem-authority separation -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticTheoremAuthority.Variant2e3148257b34ed21d4b63c31a32e5785d0c101bbfeae56aeed6a3351e0f7344d

namespace Mathematics.SemanticTokenization

inductive SemanticTheoremAuthority
  | none
  | structural
  deriving DecidableEq, Repr

def SemanticAuthorityClass.mayMintTheoremAuthority :
    SemanticAuthorityClass → Bool
  | .humanAccepted => false
  | .lexicallyCertified => false
  | .corpusSupported => false
  | .parserSupported => false
  | .modelSuggested => false
  | .taskAssumed => false

def ExternalAssertion.theoremAuthority
    {text : TextCarrier}
    {kind : MetadataType}
    (_ : ExternalAssertion text kind) :
    SemanticTheoremAuthority :=
  .none

theorem external_assertion_never_mints_theorem_authority
    (authority : SemanticAuthorityClass) :
    authority.mayMintTheoremAuthority = false := by
  cases authority <;> rfl

theorem parser_output_cannot_mint_semantic_authority :
    SemanticAuthorityClass.parserSupported.mayMintTheoremAuthority =
      false :=
  rfl

theorem model_suggestion_cannot_mint_semantic_authority :
    SemanticAuthorityClass.modelSuggested.mayMintTheoremAuthority =
      false :=
  rfl

theorem accepted_assertion_is_not_parser_supported
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (accepted : AcceptedExternalAssertion frame) :
    accepted.packed.assertion.authority ≠
      .parserSupported :=
  accepted.assertion_authority_eligible.not_parser_supported

theorem accepted_assertion_is_not_model_suggested
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (accepted : AcceptedExternalAssertion frame) :
    accepted.packed.assertion.authority ≠
      .modelSuggested :=
  accepted.assertion_authority_eligible.not_model_suggested

theorem accepted_evidence_is_not_parser_supported
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (accepted : AcceptedExternalAssertion frame)
    (evidence : EvidenceRef text)
    (member : evidence ∈
      accepted.packed.assertion.evidence.refs) :
    evidence.authority ≠ .parserSupported :=
  (accepted.evidence_authority_eligible
    evidence member).not_parser_supported

theorem accepted_evidence_is_not_model_suggested
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (accepted : AcceptedExternalAssertion frame)
    (evidence : EvidenceRef text)
    (member : evidence ∈
      accepted.packed.assertion.evidence.refs) :
    evidence.authority ≠ .modelSuggested :=
  (accepted.evidence_authority_eligible
    evidence member).not_model_suggested

end Mathematics.SemanticTokenization
