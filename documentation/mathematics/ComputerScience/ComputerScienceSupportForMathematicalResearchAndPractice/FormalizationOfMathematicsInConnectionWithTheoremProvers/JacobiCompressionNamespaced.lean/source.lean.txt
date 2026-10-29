-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JacobiCompressionDescriptor.Variant46688da73606abe61c4f4c79ee7e4d1e9f24309c95f9d56e78e26762768a99bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46688da73606abe61c4f4c79ee7e4d1e9f24309c95f9d56e78e26762768a99bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.JacobiCompressionDescriptor.Variant46688da73606abe61c4f4c79ee7e4d1e9f24309c95f9d56e78e26762768a99bb","mathematical_subject":"Foundations.Unclassified","original_sha256":"46688da73606abe61c4f4c79ee7e4d1e9f24309c95f9d56e78e26762768a99bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/QSeries/JacobiCompression.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JacobiCompressionDescriptor.Variant46688da73606abe61c4f4c79ee7e4d1e9f24309c95f9d56e78e26762768a99bb

namespace Mathematics.SemiLocalDefect.QSeries

structure JacobiCompressionDescriptor where
  compressionRef : String
  rank : Nat
  exactMatrixRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .jacobiCompression

end Mathematics.SemiLocalDefect.QSeries
