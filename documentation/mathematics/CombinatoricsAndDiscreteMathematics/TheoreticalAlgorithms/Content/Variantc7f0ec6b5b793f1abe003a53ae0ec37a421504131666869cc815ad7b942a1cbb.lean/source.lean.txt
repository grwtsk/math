-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BlueprintContent.Variant262ad2014a2f47b335817f3d43e25effd11c5ff614b747bf48d99c71da62fb3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"262ad2014a2f47b335817f3d43e25effd11c5ff614b747bf48d99c71da62fb3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BlueprintContent.Variant262ad2014a2f47b335817f3d43e25effd11c5ff614b747bf48d99c71da62fb3b","mathematical_subject":"Computation.DataStructures","original_sha256":"262ad2014a2f47b335817f3d43e25effd11c5ff614b747bf48d99c71da62fb3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/Architect/Content.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Architect.Basic
import Architect.Command



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BlueprintContent.Variant262ad2014a2f47b335817f3d43e25effd11c5ff614b747bf48d99c71da62fb3b

open Lean Elab

namespace Architect

/-! The blueprint content in a module (see `BlueprintContent`) consists of:

- Blueprint nodes extracted  from `@[blueprint]` tags
- All module docstrings defined in `blueprint_comment /-- ... -/`

These contents are sorted by declaration range (similar to the sort in doc-gen4).
-/

deriving instance Repr for ModuleDoc in
/-- The export blueprint LaTeX from a module is determined by the list of `BlueprintContent`
in the module. This is analogous to doc-gen4's `ModuleMember`. -/
inductive BlueprintContent where
  | node : NodeWithPos → BlueprintContent
  | modDoc : ModuleDoc → BlueprintContent
deriving Inhabited, Repr

def BlueprintContent.declarationRange : BlueprintContent → Option DeclarationRange
  | .node n => n.location.map (·.range)
  | .modDoc doc => some doc.declarationRange

/-- An order for blueprint contents, based on their declaration range. -/
def BlueprintContent.order (l r : BlueprintContent) : Bool :=
  match l.declarationRange, r.declarationRange with
  | some l, some r => Position.lt l.pos r.pos
  | some _, none => true
  | _, _ => false

/-- Get blueprint contents of the current module. -/
def getMainModuleBlueprintContents : CoreM (Array BlueprintContent) := do
  let env ← getEnv
  let nodes ← (blueprintExt.getEntries env).toArray.mapM fun (_, node) => BlueprintContent.node <$> node.toNodeWithPos
  let modDocs := (getMainModuleBlueprintDoc env).toArray.map BlueprintContent.modDoc
  return (nodes ++ modDocs).qsort BlueprintContent.order

/-- Get blueprint contents of an imported module. -/
def getBlueprintContents (module : Name) : CoreM (Array BlueprintContent) := do
  let env ← getEnv
  let some modIdx := env.getModuleIdx? module | return #[]
  let nodes ← (blueprintExt.getModuleEntries env modIdx).mapM fun (_, node) => BlueprintContent.node <$> node.toNodeWithPos
  let modDocs := (getModuleBlueprintDoc? env module).getD #[] |>.map BlueprintContent.modDoc
  return (nodes ++ modDocs).qsort BlueprintContent.order

end Architect
