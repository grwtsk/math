-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationGraph.Variantef61c520ed68327314a9b919788624a3ea81bfe019d660e26c49536963deeb53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef61c520ed68327314a9b919788624a3ea81bfe019d660e26c49536963deeb53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeclarationGraph.Variantef61c520ed68327314a9b919788624a3ea81bfe019d660e26c49536963deeb53","mathematical_subject":"Computation.DataStructures","original_sha256":"ef61c520ed68327314a9b919788624a3ea81bfe019d660e26c49536963deeb53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/AST/DeclarationGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.AST.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationGraph.Variantef61c520ed68327314a9b919788624a3ea81bfe019d660e26c49536963deeb53

namespace Surface

namespace AST

def DeclarationGraph := List LeanDeclarationAst

def theoremDeclarations (graph : DeclarationGraph) : List LeanDeclarationAst :=
  graph.filter fun declaration =>
    declaration.kind = LeanDeclarationKind.theorem

theorem theoremDeclarations_are_theorems
    {graph : DeclarationGraph} {declaration : LeanDeclarationAst} :
    declaration ∈ theoremDeclarations graph ->
      declaration.kind = LeanDeclarationKind.theorem := by
  intro h
  simp [theoremDeclarations] at h
  exact h.2

end AST

end Surface
