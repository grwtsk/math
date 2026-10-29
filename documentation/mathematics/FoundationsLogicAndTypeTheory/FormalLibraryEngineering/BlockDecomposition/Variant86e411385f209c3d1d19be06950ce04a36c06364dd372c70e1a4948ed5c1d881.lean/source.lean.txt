-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlockDecompositionDescriptor.Variantb277dcd9d78437380c510720eaec4f29b23a57f957d38bb08abc39e1c0e8edfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b277dcd9d78437380c510720eaec4f29b23a57f957d38bb08abc39e1c0e8edfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BlockDecompositionDescriptor.Variantb277dcd9d78437380c510720eaec4f29b23a57f957d38bb08abc39e1c0e8edfe","mathematical_subject":"Foundations.Unclassified","original_sha256":"b277dcd9d78437380c510720eaec4f29b23a57f957d38bb08abc39e1c0e8edfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Hardy/BlockDecomposition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlockDecompositionDescriptor.Variantb277dcd9d78437380c510720eaec4f29b23a57f957d38bb08abc39e1c0e8edfe

namespace Mathematics.SemiLocalDefect.Hardy

structure BlockDecompositionDescriptor where
  decompositionRef : String
  toeplitzBlockRef : String
  hankelBlockRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardyBlockDecomposition

end Mathematics.SemiLocalDefect.Hardy
