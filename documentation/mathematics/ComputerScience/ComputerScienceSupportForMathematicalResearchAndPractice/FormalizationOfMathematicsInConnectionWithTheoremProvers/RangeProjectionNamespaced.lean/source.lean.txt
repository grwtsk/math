-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RangeProjectionDescriptor.Variant76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RangeProjectionDescriptor.Variant76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4","mathematical_subject":"Foundations.Unclassified","original_sha256":"76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Sonin/RangeProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RangeProjectionDescriptor.Variant76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4

namespace Mathematics.SemiLocalDefect.Sonin

structure RangeProjectionDescriptor where
  projectionRef : String
  horizonRef : String
  inclusionCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninRangeProjection

end Mathematics.SemiLocalDefect.Sonin
