-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Max.Variant518e2bff2862d2f62c896626c855363ddb56df10f9eb681f0e7e7afaa0b23ca9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"518e2bff2862d2f62c896626c855363ddb56df10f9eb681f0e7e7afaa0b23ca9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Max.Variant518e2bff2862d2f62c896626c855363ddb56df10f9eb681f0e7e7afaa0b23ca9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"518e2bff2862d2f62c896626c855363ddb56df10f9eb681f0e7e7afaa0b23ca9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/MaxFVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Max.Variant518e2bff2862d2f62c896626c855363ddb56df10f9eb681f0e7e7afaa0b23ca9

public section
namespace Lean.Meta.Sym

private def max (fvarId1? : Option FVarId) (fvarId2? : Option FVarId) : MetaM (Option FVarId) := do
  let some fvarId1 := fvarId1? | return fvarId2?
  let some fvarId2 := fvarId2? | return fvarId1?
  if fvarId1 == fvarId2 then return fvarId1?
  let localDecl1 ← fvarId1.getDecl
  let localDecl2 ← fvarId2.getDecl
  if localDecl1.index > localDecl2.index then
    return fvarId1?
  else
    return fvarId2?

private abbrev check (e : Expr) (k : SymM (Option FVarId)) : SymM (Option FVarId) := do
  if e.hasFVar || e.hasMVar then
    if let some fvarId? := (← get).maxFVar.find? { expr := e } then
      return fvarId?
    else
      let fvarId? ← k
      modify fun s => { s with maxFVar := s.maxFVar.insert { expr := e } fvarId? }
      return fvarId?
  else
    -- `e` does not contain free variables or metavariables, then `maxFVar[e]` is definitely `none`.
    return none

/--
Returns the maximal free variable occurring in `e`.
This function assumes the current local context contains all free variables used in `e`.
-/
def getMaxFVar? (e : Expr) : SymM (Option FVarId) := do
  match e with
  | .fvar fvarId => return some fvarId
  | .const .. | .bvar .. | .sort .. | .lit .. => return none
  | .app f a => check e do max (← getMaxFVar? f) (← getMaxFVar? a)
  | .proj _ _ s => check e do getMaxFVar? s
  | .lam _ d b _ | .forallE _ d b _ => check e do max (← getMaxFVar? d) (← getMaxFVar? b)
  | .letE _ t v b _ => check e do max (← max (← getMaxFVar? t) (← getMaxFVar? v)) (← getMaxFVar? b)
  | .mdata _ e => check e do getMaxFVar? e
  | .mvar mvarId => check e do
    let mvarDecl ← mvarId.getDecl
    let lctx := mvarDecl.lctx
    if lctx.decls.isEmpty then return none
    let some last := lctx.lastDecl | unreachable! -- SymM local contexts do not have holes
    return some last.fvarId

end Lean.Meta.Sym
