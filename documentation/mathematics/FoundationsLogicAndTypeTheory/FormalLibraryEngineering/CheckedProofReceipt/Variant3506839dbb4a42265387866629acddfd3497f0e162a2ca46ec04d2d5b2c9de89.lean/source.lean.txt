-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arxiv181204760CheckedProofReceipt.Variant440cb5f6add9d9df189320bfd6e8b9d381a9fa28f61ed2c252d8f6e03e4cfd97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"440cb5f6add9d9df189320bfd6e8b9d381a9fa28f61ed2c252d8f6e03e4cfd97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Arxiv181204760CheckedProofReceipt.Variant440cb5f6add9d9df189320bfd6e8b9d381a9fa28f61ed2c252d8f6e03e4cfd97","mathematical_subject":"Foundations.Unclassified","original_sha256":"440cb5f6add9d9df189320bfd6e8b9d381a9fa28f61ed2c252d8f6e03e4cfd97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/Decoupling/CheckedProofReceipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Analysis.Decoupling.Corollaries


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arxiv181204760CheckedProofReceipt.Variant440cb5f6add9d9df189320bfd6e8b9d381a9fa28f61ed2c252d8f6e03e4cfd97

set_option autoImplicit false

namespace Think.Analysis.Decoupling

def arxiv181204760CheckedProofReceipt : CheckedProofReceipt :=
  { arxivId := "1812.04760"
    theoremMapId := "arxiv-1812-04760-decoupling-v1"
    leanModule := "Think.Analysis.Decoupling"
    lakeBuildRequired := true
    noSorryRequired := true
    trustedImportRequiredForBourgainDemeter := true
    promotableToCheckedProof := false
    unresolvedResidueCount := 4 }

theorem arxiv181204760_receipt_not_promotable_to_checked_proof :
    arxiv181204760CheckedProofReceipt.promotableToCheckedProof = false := rfl

theorem arxiv181204760_receipt_has_open_residue :
    arxiv181204760CheckedProofReceipt.unresolvedResidueCount = 4 := rfl

end Think.Analysis.Decoupling
