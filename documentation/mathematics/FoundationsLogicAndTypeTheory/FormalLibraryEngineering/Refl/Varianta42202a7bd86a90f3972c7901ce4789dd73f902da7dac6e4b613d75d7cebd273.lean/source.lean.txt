-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Refl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Reduce
public import Lean.Meta.Tactic.Apply


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23

public section

namespace Lean.Meta

/--
Close given goal using `Eq.refl`.

With (`check := false`), the elaborator does not check if the goal is actually a definitionaly
equality.

See `Lean.MVarId.applyRfl` for the variant that also consults `@[refl]` lemmas, and which
backs the `rfl` tactic.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23.Lean.MVarId.refl (mvarId : MVarId) (check := true) : MetaM Unit := do
  mvarId.withContext do
    mvarId.checkNotAssigned `refl
    let targetType ← mvarId.getType'
    unless targetType.isAppOfArity ``Eq 3 do
      throwTacticEx `rfl mvarId m!"equality expected{indentExpr targetType}"
    let lhs ← instantiateMVars targetType.appFn!.appArg!
    let rhs ← instantiateMVars targetType.appArg!
    if check then
      let success ← isDefEq lhs rhs
      unless success do
        throwTacticEx `rfl mvarId m!"equality lhs{indentExpr lhs}\nis not definitionally equal to rhs{indentExpr rhs}"
    let us := targetType.getAppFn.constLevels!
    let α := targetType.appFn!.appFn!.appArg!
    mvarId.assign (mkApp2 (mkConst ``Eq.refl  us) α lhs)

/--
Try to apply `heq_of_eq`. If successful, then return new goal, otherwise return `mvarId`.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23.Lean.MVarId.heqOfEq (mvarId : MVarId) : MetaM MVarId :=
  mvarId.withContext do
    let some [mvarId] ← observing? do mvarId.apply (mkConst ``heq_of_eq [← mkFreshLevelMVar]) | return mvarId
    return mvarId

/--
Try to apply `eq_of_heq`. If successful, then return new goal, otherwise return `mvarId`.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23.Lean.MVarId.eqOfHEq (mvarId : MVarId) : MetaM MVarId :=
  mvarId.withContext do
    let some [mvarId] ← observing? do mvarId.apply (mkConst ``eq_of_heq [← mkFreshLevelMVar]) | return mvarId
    return mvarId

/--
Close given goal using `HEq.refl`.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRefl.Variant9f142266dff668954cd8b5bec05a66ce652ac71dcfe09c16bd3233b74d6f8d23.Lean.MVarId.hrefl (mvarId : MVarId) : MetaM Unit := do
  mvarId.withContext do
    let some [] ← observing? do mvarId.apply (mkConst ``HEq.refl [← mkFreshLevelMVar])
      | throwTacticEx `hrefl mvarId

end Lean.Meta
