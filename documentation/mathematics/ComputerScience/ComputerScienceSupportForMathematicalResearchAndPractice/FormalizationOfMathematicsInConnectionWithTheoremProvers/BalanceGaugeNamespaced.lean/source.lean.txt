-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BalanceGaugeDescriptor.Variant916a343f16569cf77bd0cee2a448d836f3895ea3db2e58fdd4dc97612bed2851","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"916a343f16569cf77bd0cee2a448d836f3895ea3db2e58fdd4dc97612bed2851","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BalanceGaugeDescriptor.Variant916a343f16569cf77bd0cee2a448d836f3895ea3db2e58fdd4dc97612bed2851","mathematical_subject":"Foundations.Unclassified","original_sha256":"916a343f16569cf77bd0cee2a448d836f3895ea3db2e58fdd4dc97612bed2851","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Hardy/BalanceGauge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BalanceGaugeDescriptor.Variant916a343f16569cf77bd0cee2a448d836f3895ea3db2e58fdd4dc97612bed2851

namespace Mathematics.SemiLocalDefect.Hardy

structure BalanceGaugeDescriptor where
  gaugeRef : String
  sourceBalanceRef : String
  targetBalanceRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .balanceGaugeInvariantCapacity

end Mathematics.SemiLocalDefect.Hardy
