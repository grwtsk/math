-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprWithCtx.Variante22bc6f385ea9fcdf5ab60297b5b3d634f7998491e7e313be8ce9ee1154abdb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e22bc6f385ea9fcdf5ab60297b5b3d634f7998491e7e313be8ce9ee1154abdb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExprWithCtx.Variante22bc6f385ea9fcdf5ab60297b5b3d634f7998491e7e313be8ce9ee1154abdb7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e22bc6f385ea9fcdf5ab60297b5b3d634f7998491e7e313be8ce9ee1154abdb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Compat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Lean.Elab.InfoTree.Main


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprWithCtx.Variante22bc6f385ea9fcdf5ab60297b5b3d634f7998491e7e313be8ce9ee1154abdb7

public meta section

namespace ProofWidgets
open Lean Server Elab

/-- See `RpcEncodable`. -/
abbrev LazyEncodable α := StateM RpcObjectStore α

-- back from exile
structure ExprWithCtx where
  ci : Elab.ContextInfo
  lctx : LocalContext
  linsts : LocalInstances
  expr : Expr
  deriving TypeName

def ExprWithCtx.runMetaM (e : ExprWithCtx) (x : Expr → MetaM α) : IO α :=
  e.ci.runMetaM {} $
    Meta.withLCtx e.lctx e.linsts (x e.expr)

def ExprWithCtx.save (e : Expr) : MetaM ExprWithCtx :=
  return {
    ci := { ← CommandContextInfo.save with }
    lctx := ← getLCtx
    linsts := ← Meta.getLocalInstances
    expr := e
  }

end ProofWidgets
