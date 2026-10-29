-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteHorizonGramDescriptor.Variant334e0fb1eda7a4296fcaab8a2539c0f89463738741b5a1c2d3ba434d16f9fa7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"334e0fb1eda7a4296fcaab8a2539c0f89463738741b5a1c2d3ba434d16f9fa7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteHorizonGramDescriptor.Variant334e0fb1eda7a4296fcaab8a2539c0f89463738741b5a1c2d3ba434d16f9fa7c","mathematical_subject":"Foundations.Unclassified","original_sha256":"334e0fb1eda7a4296fcaab8a2539c0f89463738741b5a1c2d3ba434d16f9fa7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Sonin/FiniteHorizonGram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteHorizonGramDescriptor.Variant334e0fb1eda7a4296fcaab8a2539c0f89463738741b5a1c2d3ba434d16f9fa7c

namespace Mathematics.SemiLocalDefect.Sonin

structure FiniteHorizonGramDescriptor where
  gramRef : String
  horizonRef : String
  compatibilityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninFiniteHorizonGram

end Mathematics.SemiLocalDefect.Sonin
