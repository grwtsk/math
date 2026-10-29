-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeightedGraph.Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WeightedGraph.Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17","mathematical_subject":"Foundations.Unclassified","original_sha256":"66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Ricci/Graph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeightedGraph.Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17

namespace Surface
namespace Legacy

namespace Ricci

structure WeightedGraph where
  vertexCount : Nat
  edgeWeight : Fin vertexCount -> Fin vertexCount -> Rat
  symmetric : Prop
  nonnegative : Prop

structure OllivierRicciDescriptor where
  graph : WeightedGraph
  lowerCurvatureBound? : Option Rat
  transportCertificate : Prop

structure FormanRicciDescriptor where
  graph : WeightedGraph
  cellWeightCertificate : Prop

structure GraphRicciFlowDescriptor where
  graph : WeightedGraph
  stepCount : Nat
  curvatureDescriptor : OllivierRicciDescriptor
  explicitHypotheses : Prop

theorem weightedGraph_has_finite_vertex_count (G : WeightedGraph) :
    ∃ n : Nat, G.vertexCount = n := by
  exact ⟨G.vertexCount, rfl⟩

theorem ollivierRicciDescriptor_tracks_graph
    (D : OllivierRicciDescriptor) :
    D.graph = D.graph := by
  rfl

end Ricci

end Legacy
end Surface
