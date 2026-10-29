import Think.SourceTree.Legacy.Analysis.Decoupling.Corollaries

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
