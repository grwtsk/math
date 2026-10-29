-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdConstructor.Variant0a777c8517c09e7cac6ddb356ed20a365c70d351a9304c773e69d2d37864f6ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a777c8517c09e7cac6ddb356ed20a365c70d351a9304c773e69d2d37864f6ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootLeanMVarIdConstructor.Variant0a777c8517c09e7cac6ddb356ed20a365c70d351a9304c773e69d2d37864f6ad","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0a777c8517c09e7cac6ddb356ed20a365c70d351a9304c773e69d2d37864f6ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Constructor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Apply


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdConstructor.Variant0a777c8517c09e7cac6ddb356ed20a365c70d351a9304c773e69d2d37864f6ad

public section

namespace Lean.Meta

/--
When the goal `mvarId` type is an inductive datatype,
`constructor` calls `apply` with the first matching constructor.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdConstructor.Variant0a777c8517c09e7cac6ddb356ed20a365c70d351a9304c773e69d2d37864f6ad.Lean.MVarId.constructor (mvarId : MVarId) (cfg : ApplyConfig := {}) : MetaM (List MVarId) := do
  mvarId.withContext do
    mvarId.checkNotAssigned `constructor
    let target ← mvarId.getType'
    matchConstInduct target.getAppFn
      (fun _ => throwTacticEx `constructor mvarId "target is not an inductive datatype")
      fun ival us => do
        for ctor in ival.ctors do
          try
            return ← mvarId.apply (Lean.mkConst ctor us) cfg
          catch _ =>
            pure ()
        throwTacticEx `constructor mvarId "no applicable constructor found"

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdConstructor.Variant0a777c8517c09e7cac6ddb356ed20a365c70d351a9304c773e69d2d37864f6ad.Lean.MVarId.existsIntro (mvarId : MVarId) (w : Expr) : MetaM MVarId := do
  mvarId.withContext do
    mvarId.checkNotAssigned `exists
    let target ← mvarId.getType'
    matchConstStructure target.getAppFn
      (fun _ => throwTacticEx `exists mvarId "target is not an inductive datatype with one constructor")
      fun _ us cval => do
        if cval.numFields < 2 then
          throwTacticEx `exists mvarId "constructor must have at least two fields"
        let ctor := mkAppN (Lean.mkConst cval.name us) target.getAppArgs[*...cval.numParams]
        let ctorType ← inferType ctor
        let (mvars, _, _) ← forallMetaTelescopeReducing ctorType (some (cval.numFields-2))
        let f := mkAppN ctor mvars
        checkApp f w
        let [mvarId] ← mvarId.apply <| mkApp f w
          | throwTacticEx `exists mvarId "unexpected number of subgoals"
        pure mvarId

end Lean.Meta
