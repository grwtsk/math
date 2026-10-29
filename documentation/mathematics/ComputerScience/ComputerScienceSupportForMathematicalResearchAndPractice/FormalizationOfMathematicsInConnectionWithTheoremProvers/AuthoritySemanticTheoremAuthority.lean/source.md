# Authority Semantic Theorem Authority — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfeb6ac68a549ec85a5bd2af94126700c5a3ec62` · SHA-256 `2e3148257b34ed21d4b63c31a32e5785d0c101bbfeae56aeed6a3351e0f7344d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.EvidenceCut

/-! # Interpretation and theorem-authority separation -/

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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6db28f29d47a8e930d9c2ec6f431956a9eff266d9e56ea920fa58d5212787ae1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variant2e3148257b34ed21d4b63c31a32e5785d0c101bbfeae56aeed6a3351e0f7344d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
