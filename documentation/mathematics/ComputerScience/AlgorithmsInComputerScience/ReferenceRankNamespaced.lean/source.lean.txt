-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RankedModule.Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RankedModule.Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577","mathematical_subject":"Computation.DataStructures","original_sha256":"749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/ReferenceRank.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Presentation.ReferenceGraph

/-!
# Folder.Presentation.ReferenceRank

Radiation role: presentation-reference-rank
BinaryMatrix spine: This module records reference-ranked document ordering for views derived from BinaryMatrixStream archives.
Ontology: presentation.reference_rank
Pivot role: none
Zero typology: none
Contract boundary: interface
Composite stack role: presentation
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RankedModule.Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577

namespace Folder
namespace Presentation

structure RankedModule where
  moduleId : ModuleId
  inbound : Nat
  outbound : Nat
  score : Nat

def rankModule
    (G : ReferenceGraph)
    (M : ModuleId) : RankedModule where
  moduleId := M
  inbound := inboundWeight G M
  outbound := outboundWeight G M
  score := inboundWeight G M * 1000 + outboundWeight G M

structure ReferenceRanking where
  graph : ReferenceGraph
  ranked : List RankedModule
  contains_all :
    ∀ M, M ∈ graph.modules → ∃ R, R ∈ ranked ∧ R.moduleId = M
  sorted_desc :
    ranked.Pairwise (fun a b => b.score ≤ a.score)

theorem ranking_contains_module
    (R : ReferenceRanking)
    {M : ModuleId}
    (h : M ∈ R.graph.modules) :
    ∃ RM, RM ∈ R.ranked ∧ RM.moduleId = M :=
  R.contains_all M h

end Presentation
end Folder
