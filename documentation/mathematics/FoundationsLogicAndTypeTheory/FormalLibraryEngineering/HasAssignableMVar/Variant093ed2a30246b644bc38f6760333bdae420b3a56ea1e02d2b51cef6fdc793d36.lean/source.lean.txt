-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasAssignableLevelMVar.Variantf087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasAssignableLevelMVar.Variantf087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/HasAssignableMVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasAssignableLevelMVar.Variantf087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca

public section

open Lean

namespace Lean.Meta

def hasAssignableLevelMVar : Level → MetaM Bool
  | .succ lvl       => pure lvl.hasMVar <&&> hasAssignableLevelMVar lvl
  | .max lvl₁ lvl₂  => (pure lvl₁.hasMVar <&&> hasAssignableLevelMVar lvl₁) <||> (pure lvl₂.hasMVar <&&> hasAssignableLevelMVar lvl₂)
  | .imax lvl₁ lvl₂ => (pure lvl₁.hasMVar <&&> hasAssignableLevelMVar lvl₁) <||> (pure lvl₂.hasMVar <&&> hasAssignableLevelMVar lvl₂)
  | .mvar mvarId    => isLevelMVarAssignable mvarId
  | .zero           => return false
  | .param _        => return false

/-- Return `true` iff expression contains a metavariable that can be assigned. -/
partial def hasAssignableMVar (e : Expr) : MetaM Bool :=
  if !e.hasMVar then
    return false
  else
    go e |>.run' {}
where
  go (e : Expr) : StateRefT ExprSet MetaM Bool :=
    match e with
    | .const _ lvls    => lvls.anyM (liftM <| hasAssignableLevelMVar ·)
    | .sort lvl        => liftM <| hasAssignableLevelMVar lvl
    | .app f a         => do checkSystem "hasAssignableMVar"; visit f <||> visit a
    | .letE _ t v b _  => do checkSystem "hasAssignableMVar"; visit t <||> visit v <||> visit b
    | .forallE _ d b _ => do checkSystem "hasAssignableMVar"; visit d <||> visit b
    | .lam _ d b _     => do checkSystem "hasAssignableMVar"; visit d <||> visit b
    | .fvar _          => return false
    | .bvar _          => return false
    | .lit _           => return false
    | .mdata _ e       => visit e
    | .proj _ _ e      => visit e
    | .mvar mvarId     => mvarId.isAssignable
  visit (e : Expr) : StateRefT ExprSet MetaM Bool := do
    if !e.hasMVar then return false
    if (← get).contains e then return false
    modify fun s => s.insert e
    go e

end Lean.Meta

end
