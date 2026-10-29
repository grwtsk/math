-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeilCorrespondenceDescriptor.Variant4dc6584ddd4481fa59b00c2d594c941f6d73d024b6e1f598c09922aa2d4b609d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dc6584ddd4481fa59b00c2d594c941f6d73d024b6e1f598c09922aa2d4b609d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WeilCorrespondenceDescriptor.Variant4dc6584ddd4481fa59b00c2d594c941f6d73d024b6e1f598c09922aa2d4b609d","mathematical_subject":"Foundations.Unclassified","original_sha256":"4dc6584ddd4481fa59b00c2d594c941f6d73d024b6e1f598c09922aa2d4b609d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Trace/WeilCorrespondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeilCorrespondenceDescriptor.Variant4dc6584ddd4481fa59b00c2d594c941f6d73d024b6e1f598c09922aa2d4b609d

namespace Mathematics.SemiLocalDefect.Trace

structure WeilCorrespondenceDescriptor where
  correspondenceRef : String
  operatorTraceRef : String
  arithmeticDistributionRef : String
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .arithmeticCorrespondence

end Mathematics.SemiLocalDefect.Trace
