-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticTailDescriptor.Variant985b21a2b025a7b0622d96b4b2f78eef9f824d594242629dd1e2c5c43b216db6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"985b21a2b025a7b0622d96b4b2f78eef9f824d594242629dd1e2c5c43b216db6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ArithmeticTailDescriptor.Variant985b21a2b025a7b0622d96b4b2f78eef9f824d594242629dd1e2c5c43b216db6","mathematical_subject":"Foundations.Unclassified","original_sha256":"985b21a2b025a7b0622d96b4b2f78eef9f824d594242629dd1e2c5c43b216db6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Trace/ArithmeticTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticTailDescriptor.Variant985b21a2b025a7b0622d96b4b2f78eef9f824d594242629dd1e2c5c43b216db6

namespace Mathematics.SemiLocalDefect.Trace

structure ArithmeticTailDescriptor where
  tailRef : String
  finiteCutRef : String
  uniformBoundCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .arithmeticTail

end Mathematics.SemiLocalDefect.Trace
