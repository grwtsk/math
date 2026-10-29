-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternalPayload.Variant44e2884038dcdb9c961ff3a6218ee441221e468e23f1a7de94bfaae876c6da9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44e2884038dcdb9c961ff3a6218ee441221e468e23f1a7de94bfaae876c6da9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ExternalPayload.Variant44e2884038dcdb9c961ff3a6218ee441221e468e23f1a7de94bfaae876c6da9e","mathematical_subject":"Foundations.Unclassified","original_sha256":"44e2884038dcdb9c961ff3a6218ee441221e468e23f1a7de94bfaae876c6da9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Authority/ExternalCertificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Authority.Certificate

/-!
# External certificates and trusted verifiers

This file distinguishes three objects.

1. `ExternalPayload`: untrusted external metadata — hashes, labels, a verifier
   name, a transcript identifier — together with the proposition the payload
   claims. No proof of the statement is stored. An external payload proves
   nothing: `external_payload_not_proof`. Hashes are audit handles only;
   equality of hashes never proves the statement.

2. `TrustedVerifier`: the explicit trusted verifier interface. The field
   `TrustedVerifier.sound` is the exact trusted computing base for external
   proof import. It is not a postulate; it is a proof obligation supplied
   wherever a trusted verifier is instantiated.

3. `TrustedExternalCertificate`: an external payload together with a trusted
   verifier that accepts it. `TrustedExternalCertificate.toCertificate` is the
   only bridge from external payloads to the internal `Authority.Certificate`,
   and its `soundProof` is obtained by applying the verifier soundness theorem
   — never from the payload metadata.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternalPayload.Variant44e2884038dcdb9c961ff3a6218ee441221e468e23f1a7de94bfaae876c6da9e

namespace Authority

/--
Opaque external certificate metadata with a claimed proposition.

`publicHash`, `payloadHash`, `verifierLabel`, and `transcriptHash` are
metadata. `statement` is the proposition the payload claims. No proof of
`statement` is stored here.
-/
structure ExternalPayload where
  kind : BoundaryKind
  label : String
  publicHash : Nat
  payloadHash : Nat
  verifierLabel : String
  transcriptHash : Nat
  statement : Prop

/-- The external payload itself is not a proof of its claimed statement. -/
def ExternalPayload.ProvesStatement
    (_E : ExternalPayload) : Prop :=
  False

theorem external_payload_not_proof
    (E : ExternalPayload) :
    ¬ E.ProvesStatement := by
  intro h
  exact h

/-- An external payload is not the underlying object it describes. -/
def ExternalPayloadIsUnderlyingObject
    (_E : ExternalPayload) : Prop :=
  False

theorem external_payload_not_underlying_object
    (E : ExternalPayload) :
    ¬ ExternalPayloadIsUnderlyingObject E := by
  intro h
  exact h

/--
Explicit trusted verifier interface.

`Accepts` is a proposition-valued acceptance predicate. The field `sound` is
the exact trusted assumption: whenever this verifier accepts a payload, the
payload's claimed statement holds. It is not a postulate; it must be supplied
as an actual proof when a trusted verifier is instantiated.
-/
structure TrustedVerifier where
  label : String
  verifierHash : Nat
  Accepts : ExternalPayload → Prop
  sound :
    ∀ E : ExternalPayload,
      Accepts E → E.statement

/--
A trusted external certificate: an external payload together with an
acceptance witness from a trusted verifier.
-/
structure TrustedExternalCertificate
    (E : ExternalPayload) where
  verifier : TrustedVerifier
  accepted : verifier.Accepts E

/-- A trusted external certificate proves its payload's claimed statement,
via the verifier soundness theorem. -/
def TrustedExternalCertificate.sound
    {E : ExternalPayload}
    (C : TrustedExternalCertificate E) :
    E.statement :=
  C.verifier.sound E C.accepted

/--
Convert a trusted external certificate into an internal authority
certificate.

This is the only conversion from external payloads to
`Authority.Certificate`. The `soundProof` field is obtained by applying the
verifier soundness theorem; none of the metadata fields contribute.
-/
def TrustedExternalCertificate.toCertificate
    {E : ExternalPayload}
    (C : TrustedExternalCertificate E) :
    Certificate where
  kind := E.kind
  label := E.label
  publicHash := E.publicHash
  sound := E.statement
  soundProof := C.sound

theorem trusted_external_certificate_sound
    {E : ExternalPayload}
    (C : TrustedExternalCertificate E) :
    E.statement :=
  C.sound

theorem external_certificate_conversion_sound
    {E : ExternalPayload}
    (C : TrustedExternalCertificate E) :
    (C.toCertificate).sound :=
  certificate_sound C.toCertificate

end Authority
