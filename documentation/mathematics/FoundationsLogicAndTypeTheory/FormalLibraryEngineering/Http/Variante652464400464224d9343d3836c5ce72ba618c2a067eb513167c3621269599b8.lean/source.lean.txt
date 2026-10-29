-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MediaType.Variantac7b126282fe47a40fd442a2c192c359973fa6503130250ee5fab471d72c1c2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac7b126282fe47a40fd442a2c192c359973fa6503130250ee5fab471d72c1c2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.MediaType.Variantac7b126282fe47a40fd442a2c192c359973fa6503130250ee5fab471d72c1c2d","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"ac7b126282fe47a40fd442a2c192c359973fa6503130250ee5fab471d72c1c2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Gateway/formalization/GatewayProof/Http.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MediaType.Variantac7b126282fe47a40fd442a2c192c359973fa6503130250ee5fab471d72c1c2d

namespace GatewayProof
namespace Http

inductive MediaType
| applicationJson
| applicationJsonUtf8
| textPlain
| other
deriving Repr, DecidableEq

inductive Accept
| missing
| applicationJson
| any
| textEventStream
| incompatible
deriving Repr, DecidableEq

def relayJsonContentTypeAllowed : MediaType -> Bool
| .applicationJson => true
| .applicationJsonUtf8 => true
| _ => false

def jsonAcceptAllowed : Accept -> Bool
| .missing => true
| .applicationJson => true
| .any => true
| _ => false

def sseAcceptAllowed : Accept -> Bool
| .missing => true
| .textEventStream => true
| .any => true
| _ => false

theorem json_content_type_allowed :
    relayJsonContentTypeAllowed MediaType.applicationJson = true := by
  rfl

theorem json_utf8_content_type_allowed :
    relayJsonContentTypeAllowed MediaType.applicationJsonUtf8 = true := by
  rfl

theorem text_plain_not_relay_json :
    relayJsonContentTypeAllowed MediaType.textPlain = false := by
  rfl

theorem other_not_relay_json :
    relayJsonContentTypeAllowed MediaType.other = false := by
  rfl

theorem missing_json_accept_allowed :
    jsonAcceptAllowed Accept.missing = true := by
  rfl

theorem application_json_accept_allowed :
    jsonAcceptAllowed Accept.applicationJson = true := by
  rfl

theorem wildcard_json_accept_allowed :
    jsonAcceptAllowed Accept.any = true := by
  rfl

theorem incompatible_json_accept_refused :
    jsonAcceptAllowed Accept.incompatible = false := by
  rfl

theorem text_event_stream_not_json_accept :
    jsonAcceptAllowed Accept.textEventStream = false := by
  rfl

theorem missing_sse_accept_allowed :
    sseAcceptAllowed Accept.missing = true := by
  rfl

theorem wildcard_sse_accept_allowed :
    sseAcceptAllowed Accept.any = true := by
  rfl

theorem application_json_not_sse_accept :
    sseAcceptAllowed Accept.applicationJson = false := by
  rfl

theorem incompatible_sse_accept_refused :
    sseAcceptAllowed Accept.incompatible = false := by
  rfl

theorem text_event_stream_sse_accept_allowed :
    sseAcceptAllowed Accept.textEventStream = true := by
  rfl

end Http
end GatewayProof
