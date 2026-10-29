-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedHeuristic.Variant4bc6b39f84bb45cd7bd2c26c850dbf08f8518f4aed00a8aed0e41b5c8c3f0f74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bc6b39f84bb45cd7bd2c26c850dbf08f8518f4aed00a8aed0e41b5c8c3f0f74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CertifiedHeuristic.Variant4bc6b39f84bb45cd7bd2c26c850dbf08f8518f4aed00a8aed0e41b5c8c3f0f74","mathematical_subject":"Foundations.Unclassified","original_sha256":"4bc6b39f84bb45cd7bd2c26c850dbf08f8518f4aed00a8aed0e41b5c8c3f0f74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exact/Heuristic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Certified lower-bound heuristic profile
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedHeuristic.Variant4bc6b39f84bb45cd7bd2c26c850dbf08f8518f4aed00a8aed0e41b5c8c3f0f74

namespace Mathematics.GraphAccess

structure CertifiedHeuristic (Node : Type u) where
  potential : Node → Nat
  trueRemainingCost : Node → Nat
  eligibleEdge : Node → Node → Prop
  edgeCost : Node → Node → Nat
  admissible :
    ∀ node, potential node ≤ trueRemainingCost node
  consistent :
    ∀ source target,
      eligibleEdge source target →
      potential source ≤ edgeCost source target + potential target

theorem admitted_heuristic_is_lower_bound
    {Node : Type u}
    (heuristic : CertifiedHeuristic Node)
    (node : Node) :
    heuristic.potential node ≤ heuristic.trueRemainingCost node :=
  heuristic.admissible node

end Mathematics.GraphAccess
