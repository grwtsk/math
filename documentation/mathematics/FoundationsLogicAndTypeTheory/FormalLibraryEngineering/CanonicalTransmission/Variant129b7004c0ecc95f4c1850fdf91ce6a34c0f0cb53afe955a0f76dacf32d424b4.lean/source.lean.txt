-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalTransmissionDescriptor.Variantd0965b85cf4299e7b0f65e797e955b09d5b9087f790085b01ffa3c22bef03b37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0965b85cf4299e7b0f65e797e955b09d5b9087f790085b01ffa3c22bef03b37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CanonicalTransmissionDescriptor.Variantd0965b85cf4299e7b0f65e797e955b09d5b9087f790085b01ffa3c22bef03b37","mathematical_subject":"Foundations.Unclassified","original_sha256":"d0965b85cf4299e7b0f65e797e955b09d5b9087f790085b01ffa3c22bef03b37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Hardy/CanonicalTransmission.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalTransmissionDescriptor.Variantd0965b85cf4299e7b0f65e797e955b09d5b9087f790085b01ffa3c22bef03b37

namespace Mathematics.SemiLocalDefect.Hardy

structure CanonicalTransmissionDescriptor where
  transmissionRef : String
  capacityRef : String
  defectIdentityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .canonicalTransmission

end Mathematics.SemiLocalDefect.Hardy
