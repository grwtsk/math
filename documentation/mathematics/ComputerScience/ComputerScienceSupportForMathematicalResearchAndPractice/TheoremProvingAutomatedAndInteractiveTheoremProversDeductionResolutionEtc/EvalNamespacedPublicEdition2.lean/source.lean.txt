-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalExprCore.Variant7df998d15c577b313747f803170562b671aece2cfb0795c87a082341da4cdb78","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7df998d15c577b313747f803170562b671aece2cfb0795c87a082341da4cdb78","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalExprCore.Variant7df998d15c577b313747f803170562b671aece2cfb0795c87a082341da4cdb78","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7df998d15c577b313747f803170562b671aece2cfb0795c87a082341da4cdb78","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Eval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Leonardo de Moura
-/
module

prelude
public import Lean.AddDecl
public import Lean.Meta.Check
public import Lean.Util.CollectLevelParams
import Lean.Compiler.Options


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalExprCore.Variant7df998d15c577b313747f803170562b671aece2cfb0795c87a082341da4cdb78

public section

namespace Lean.Meta

unsafe def evalExprCore (α) (value : Expr) (checkType : Expr → MetaM Unit)
    (safety := DefinitionSafety.safe) (checkMeta : Bool := true) : MetaM α :=
  withoutModifyingEnv do
    -- Avoid waiting for all prior compilation if only imported constants are referenced. This is a
    -- very common case for tactic configurations (`Lean.Elab.Tactic.Config`).
    if value.getUsedConstants.all (← getEnv).isImportedConst then
      modifyEnv fun env => env.importEnv?.getD env

    -- Private name to ensure we do not check for deps being imported publicly
    let name := mkPrivateName (← getEnv) (← mkFreshUserName `_tmp)
    let value ← instantiateMVars value
    let us := collectLevelParams {} value |>.params
    if value.hasMVar then
      throwError "failed to evaluate expression, it contains metavariables{indentExpr value}"
    let type ← inferType value
    checkType type
    let decl := Declaration.defnDecl {
       name, levelParams := us.toList, type
       value, hints := ReducibilityHints.opaque,
       safety
    }
    modifyEnv (markMeta · name)
    -- compilation will invariably wait on `checked`
    let _ ← traceBlock "compiler env" (← getEnv).checked
    -- now that we've already waited, async would just introduce (minor) overhead and trigger
    -- `Task.get` blocking debug code
    withOptions (Elab.async.set · false) do
    withOptions (Compiler.compiler.postponeCompile.set · false) do
    withOptions (Compiler.compiler.relaxedMetaCheck.set · true) do
      addAndCompile decl
      evalConst (checkMeta := checkMeta) α name

unsafe def evalExpr' (α) (typeName : Name) (value : Expr) (safety := DefinitionSafety.safe)
    (checkMeta : Bool := true) : MetaM α :=
  evalExprCore (safety := safety) (checkMeta := checkMeta) α value fun type => do
    let type ← whnfD type
    unless type.isConstOf typeName do
      throwError "unexpected type at evalExpr{indentExpr type}"

unsafe def evalExpr (α) (expectedType : Expr) (value : Expr) (safety := DefinitionSafety.safe)
    (checkMeta : Bool := true) : MetaM α :=
  evalExprCore (safety := safety) (checkMeta := checkMeta) α value fun type => do
    unless ← isDefEq type expectedType do
      throwError "unexpected type at `evalExpr` {← mkHasTypeButIsExpectedMsg type expectedType}"

end Lean.Meta
