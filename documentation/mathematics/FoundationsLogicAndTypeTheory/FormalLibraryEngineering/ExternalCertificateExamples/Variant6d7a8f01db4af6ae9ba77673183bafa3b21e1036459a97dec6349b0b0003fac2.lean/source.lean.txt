-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyPayload.Variantaa1bc2dbe41747bd4e01049205732a9b46d6d358c139ca54895f4a11eeef7d97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa1bc2dbe41747bd4e01049205732a9b46d6d358c139ca54895f4a11eeef7d97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ToyPayload.Variantaa1bc2dbe41747bd4e01049205732a9b46d6d358c139ca54895f4a11eeef7d97","mathematical_subject":"Foundations.Unclassified","original_sha256":"aa1bc2dbe41747bd4e01049205732a9b46d6d358c139ca54895f4a11eeef7d97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Authority/ExternalCertificateExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Authority.ExternalCertificate

/-!
# Toy trusted-verifier example

This file is deliberately not imported by `Authority.lean`.

It demonstrates the distinction between a raw `ExternalPayload`, a
`TrustedExternalCertificate`, the converted `Authority.Certificate`, and the
application of `certificate_sound` — for the harmless proposition
`2 + 2 = 4`.

The toy verifier accepts exactly those payloads whose claimed statement is
the proposition `2 + 2 = 4`, and its `sound` field proves that proposition.
Nothing here suggests that arbitrary external proof artifacts are trusted:
the raw payload still proves nothing (`toy_payload_not_proof`), and trust
enters only through `toyVerifier.sound`.
This file is an architectural smoke test. It intentionally uses toy
propositions such as `True` to exercise routing and firewall statements. It
is not a Mathlib-backed analytic proof and is not imported by
`AnalyticNumberMathlib`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyPayload.Variantaa1bc2dbe41747bd4e01049205732a9b46d6d358c139ca54895f4a11eeef7d97

namespace Authority
namespace ExternalCertificateExamples

/-- Raw external payload claiming `2 + 2 = 4`. This proves nothing. -/
def toyPayload : ExternalPayload where
  kind := BoundaryKind.finiteArithmetic
  label := "toy external payload: 2 + 2 = 4"
  publicHash := 0
  payloadHash := 0
  verifierLabel := "toy verifier"
  transcriptHash := 0
  statement := 2 + 2 = 4

/-- The raw payload is not a proof of its claimed statement. -/
theorem toy_payload_not_proof :
    ¬ toyPayload.ProvesStatement :=
  external_payload_not_proof toyPayload

/--
Toy trusted verifier.

It accepts exactly the payloads whose claimed statement is the proposition
`2 + 2 = 4`, and its `sound` field carries the actual proof of that
proposition. This field is the entire trusted computing base of the example.
-/
def toyVerifier : TrustedVerifier where
  label := "toy verifier"
  verifierHash := 0
  Accepts := fun E => E.statement = (2 + 2 = 4)
  sound := fun _E h => Eq.mpr h rfl

/-- Trusted external certificate: the toy verifier accepts the toy payload. -/
def toyTrustedCertificate : TrustedExternalCertificate toyPayload where
  verifier := toyVerifier
  accepted := rfl

/-- The internal authority certificate obtained through verifier soundness. -/
def toyCertificate : Certificate :=
  toyTrustedCertificate.toCertificate

/-- The converted certificate proves the toy statement via
`certificate_sound`. -/
theorem toy_certificate_sound :
    2 + 2 = 4 :=
  certificate_sound toyCertificate

end ExternalCertificateExamples
end Authority
