-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefectDescriptor.Variant7962e53792d0dfef4bdf51e4454ef797a3896222f526341cc9fe1499e41d5722","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7962e53792d0dfef4bdf51e4454ef797a3896222f526341cc9fe1499e41d5722","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DefectDescriptor.Variant7962e53792d0dfef4bdf51e4454ef797a3896222f526341cc9fe1499e41d5722","mathematical_subject":"Foundations.Unclassified","original_sha256":"7962e53792d0dfef4bdf51e4454ef797a3896222f526341cc9fe1499e41d5722","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Hardy/HardyDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefectDescriptor.Variant7962e53792d0dfef4bdf51e4454ef797a3896222f526341cc9fe1499e41d5722

namespace Mathematics.SemiLocalDefect.Hardy

structure DefectDescriptor where
  defectRef : String
  capacityRef : String
  relationCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardyCapacityRelation

end Mathematics.SemiLocalDefect.Hardy
