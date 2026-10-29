-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PayloadDescriptor.Variant82ee17a8af2b48105926111c306dc55285e162b57842af68adfbf77ef9df2419","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82ee17a8af2b48105926111c306dc55285e162b57842af68adfbf77ef9df2419","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PayloadDescriptor.Variant82ee17a8af2b48105926111c306dc55285e162b57842af68adfbf77ef9df2419","mathematical_subject":"Foundations.Unclassified","original_sha256":"82ee17a8af2b48105926111c306dc55285e162b57842af68adfbf77ef9df2419","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:320433e3de5f4dfe34b2575f/workspace/lib/Surface/Core/Transport/Payload.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Bytes
public import Surface.Core.Transport.Revision

/-!
# Finite payload contracts

Executable codecs and semantics are separated from stable identifiers. Function
values are never hashed; a transport contract binds only the descriptor fields.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PayloadDescriptor.Variant82ee17a8af2b48105926111c306dc55285e162b57842af68adfbf77ef9df2419

public section

namespace Surface.Core.Transport

universe u v

@[surface_novel]
structure PayloadDescriptor where
  schemaId : String
  schemaVersion : Nat
  algorithmId : String
  algorithmVersion : Nat
  invariantId : String
  serializationVersion : Nat
  mergeSemanticsId : String
deriving DecidableEq, Repr

@[surface_novel]
structure PayloadCodec (ρ : Type u) (α : Type v) where
  decode? : ρ → Option α
  encode : α → CanonicalBytes
  rawMatches : ρ → α → Prop
  decodeSound : ∀ {raw payload}, decode? raw = some payload → rawMatches raw payload

@[surface_novel]
structure PayloadSemantics (α : Type u) where
  descriptor : PayloadDescriptor
  invariant : α → Prop
  expectedUpdate : Revisioned α → Revisioned α
  preservesRevision : ∀ input,
    (expectedUpdate input).revision = input.revision
  preservesInvariant : ∀ input,
    invariant input.value → invariant (expectedUpdate input).value

@[surface_novel, surface_published]
theorem expectedUpdate_preserves_revision
    {α : Type u} (semantics : PayloadSemantics α)
    (input : Revisioned α) :
    (semantics.expectedUpdate input).revision = input.revision :=
  semantics.preservesRevision input

@[surface_novel, surface_published]
theorem expectedUpdate_preserves_invariant
    {α : Type u} (semantics : PayloadSemantics α)
    (input : Revisioned α) (valid : semantics.invariant input.value) :
    semantics.invariant (semantics.expectedUpdate input).value :=
  semantics.preservesInvariant input valid

end Surface.Core.Transport
