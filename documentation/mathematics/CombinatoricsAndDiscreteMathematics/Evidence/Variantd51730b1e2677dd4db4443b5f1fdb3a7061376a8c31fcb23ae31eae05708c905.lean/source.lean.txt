-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EvidenceSourceKind.Variantff4b6192e182d17d33ebeb4910a5bc63cc9689f06b48359ea3b1c3280984169b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff4b6192e182d17d33ebeb4910a5bc63cc9689f06b48359ea3b1c3280984169b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EvidenceSourceKind.Variantff4b6192e182d17d33ebeb4910a5bc63cc9689f06b48359ea3b1c3280984169b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ff4b6192e182d17d33ebeb4910a5bc63cc9689f06b48359ea3b1c3280984169b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Evidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Authority
import Mathematics.SemanticTokenization.Span

/-!
# Evidence records and scopes
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EvidenceSourceKind.Variantff4b6192e182d17d33ebeb4910a5bc63cc9689f06b48359ea3b1c3280984169b

namespace Mathematics.SemanticTokenization

inductive EvidenceSourceKind
  | sourceText
  | lexicalResource
  | corpus
  | parser
  | human
  | model
  | proofKernel
  | externalResource
deriving DecidableEq, Repr

inductive EvidenceLocation (text : TextCarrier)
  | sourceSpan (span : Span text)
  | sourceSpans (spans : Finset (Span text))
  | externalResource (locator : String)
deriving Repr

inductive ContextField
  | text
  | sentence
  | discourse
  | task
  | domain
  | speaker
  | time
  | register
deriving DecidableEq, Ord, Repr

structure EvidenceScope where
  contexts : Finset ContextId
  fields : Finset ContextField
  intendedUses : Finset AssertionUse
deriving Repr

structure EvidenceRef (text : TextCarrier) where
  id : EvidenceId
  sourceKind : EvidenceSourceKind
  location : EvidenceLocation text
  scope : EvidenceScope
  snapshot : SnapshotId
  evidenceDigest : Digest
  accepted : Bool
deriving Repr

structure EvidenceRegistry (text : TextCarrier) where
  entries : Array (EvidenceRef text)
  idsUnique :
    PairwiseUnique (entries.map EvidenceRef.id)

def EvidenceRegistry.HasId
    {text : TextCarrier}
    (registry : EvidenceRegistry text)
    (id : EvidenceId) : Prop :=
  ∃ evidence : Fin registry.entries.size,
    (registry.entries[evidence]).id = id

end Mathematics.SemanticTokenization
