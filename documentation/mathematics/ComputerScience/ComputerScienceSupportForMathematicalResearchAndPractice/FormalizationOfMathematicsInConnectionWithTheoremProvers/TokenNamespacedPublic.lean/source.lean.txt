-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TriviaClassification.Variant711b50e5f7812dfbae12e22c72ee8ed36b8c156d5c653e9ab04ba5d81fc2102f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"711b50e5f7812dfbae12e22c72ee8ed36b8c156d5c653e9ab04ba5d81fc2102f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TriviaClassification.Variant711b50e5f7812dfbae12e22c72ee8ed36b8c156d5c653e9ab04ba5d81fc2102f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"711b50e5f7812dfbae12e22c72ee8ed36b8c156d5c653e9ab04ba5d81fc2102f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/Syntax/Token.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Syntax.Span

/-! # Normalized lossless-token references -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TriviaClassification.Variant711b50e5f7812dfbae12e22c72ee8ed36b8c156d5c653e9ab04ba5d81fc2102f

public section

namespace Surface.Refactor.Syntax

@[surface_novel]
inductive TriviaClassification where
  | none
  | whitespace
  | lineComment
  | blockComment
  | documentationComment
  | other
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive TokenTextReference where
  | sourceSlice (span : SourceSpan)
  | stringTable (index : Nat)
deriving DecidableEq, Repr

@[surface_novel]
structure TokenFlags where
  identifier : Bool := false
  literal : Bool := false
  comment : Bool := false
  delimiter : Bool := false
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure TokenRecord where
  tokenKindCode : Nat
  sourceSpan : SourceSpan
  trivia : TriviaClassification
  textReference : TokenTextReference
  flags : TokenFlags
deriving DecidableEq, Repr

@[expose] def TokenTextReference.Valid
    (layout : SourceByteLayout) (stringCount : Nat) : TokenTextReference → Prop
  | .sourceSlice span => span.Valid layout
  | .stringTable index => index < stringCount

@[expose] def TokenRecord.Valid
    (layout : SourceByteLayout) (stringCount : Nat) (token : TokenRecord) : Prop :=
  FitsU32 token.tokenKindCode ∧
    token.sourceSpan.Valid layout ∧
    token.textReference.Valid layout stringCount

end Surface.Refactor.Syntax
