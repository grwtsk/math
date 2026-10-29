-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ImportEdge.Variant86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ImportEdge.Variant86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48","mathematical_subject":"Computation.DataStructures","original_sha256":"86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/ImportGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ImportEdge.Variant86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48

namespace Surface
namespace Incremental

open Surface.AST

structure ImportEdge where
  importer : ModuleKey
  imported : ModuleKey
  importString : String
  source : LeanSource
  claimBoundary : List String
deriving Repr

structure ImportGraph where
  modules : List ModuleKey
  edges : List ImportEdge
  graphHash : ContentHash
  claimBoundary : List String
deriving Repr

def imports
    (G : ImportGraph)
    (M I : ModuleKey) : Prop :=
  ∃ e ∈ G.edges, e.importer = M ∧ e.imported = I

theorem importEdge_boundary_visible
    (e : ImportEdge) :
    e.claimBoundary = e.claimBoundary :=
  rfl

end Incremental
end Surface
