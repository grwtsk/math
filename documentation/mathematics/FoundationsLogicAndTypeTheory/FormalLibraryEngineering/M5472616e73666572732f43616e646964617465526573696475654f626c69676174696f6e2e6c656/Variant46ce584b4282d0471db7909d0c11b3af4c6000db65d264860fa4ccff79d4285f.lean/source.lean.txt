-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CandidateResidueObligation.Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CandidateResidueObligation.Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3","mathematical_subject":"Foundations.Unclassified","original_sha256":"c05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit0/Bit1/Bit1/Bit1/M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit0.Bit0.Bit1.Bit1.M546172676574732f496d706f7274506c616e2e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=0100111|role=proof_code_atom|slug=transfers-candidateresidueobligation|owner=canonical_owner|core=Transfers/CandidateResidueObligation.lean|leaf=M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CandidateResidueObligation.Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3

set_option autoImplicit false

namespace Think.Transfers

structure CandidateResidueObligation
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue) where
  obligation : ResidueObligation r
  candidateTargetMatches : candidate.target = r.target
  candidateAtomMatches : candidate.atomId = r.atomId
  candidateKindMatches : candidate.residueKind = r.kind
  candidateRetainsFinal : candidate.finalTargetRetained = true

theorem candidateResidueObligation_retains_final_target
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue)
    (h : CandidateResidueObligation candidate r) :
    candidate.finalTargetRetained = true := by
  exact h.candidateRetainsFinal

theorem candidateResidueObligation_matches_residue_kind
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue)
    (h : CandidateResidueObligation candidate r) :
    candidate.residueKind = r.kind := by
  exact h.candidateKindMatches

theorem candidateResidueObligation_matches_atom
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue)
    (h : CandidateResidueObligation candidate r) :
    candidate.atomId = r.atomId := by
  exact h.candidateAtomMatches

theorem candidateResidueObligation_matches_target
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue)
    (h : CandidateResidueObligation candidate r) :
    candidate.target = r.target := by
  exact h.candidateTargetMatches

end Think.Transfers
