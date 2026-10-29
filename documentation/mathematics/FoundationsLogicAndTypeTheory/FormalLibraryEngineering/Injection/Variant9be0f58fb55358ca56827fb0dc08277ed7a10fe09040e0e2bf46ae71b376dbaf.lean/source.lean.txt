-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetInjectionNewIds.Variant831ce75d71eb6472e6a0e87aba1ea0cff8bdf740cb146996721e99a0e55b581a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"831ce75d71eb6472e6a0e87aba1ea0cff8bdf740cb146996721e99a0e55b581a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetInjectionNewIds.Variant831ce75d71eb6472e6a0e87aba1ea0cff8bdf740cb146996721e99a0e55b581a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"831ce75d71eb6472e6a0e87aba1ea0cff8bdf740cb146996721e99a0e55b581a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Injection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Injection
public import Lean.Meta.Tactic.Assumption
public import Lean.Elab.Tactic.ElabTerm

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetInjectionNewIds.Variant831ce75d71eb6472e6a0e87aba1ea0cff8bdf740cb146996721e99a0e55b581a

public section
namespace Lean.Elab.Tactic

-- optional (" with " >> many1 ident')
private def getInjectionNewIds (stx : Syntax) : List Name :=
  if stx.isNone then
    []
  else
    stx[1].getArgs.toList.map getNameOfIdent'

private def checkUnusedIds (tacticName : Name) (mvarId : MVarId) (unusedIds : List Name) : MetaM Unit :=
  unless unusedIds.isEmpty do
    Meta.throwTacticEx tacticName mvarId m!"too many identifiers provided, unused: {unusedIds}"

-- TODO: move to a different place?
private def tryAssumption (mvarId : MVarId) : MetaM (List MVarId) := do
  if (← mvarId.assumptionCore) then
    return []
  else
    return [mvarId]

@[builtin_tactic «injection»] def evalInjection : Tactic := fun stx => do
  -- leading_parser nonReservedSymbol "injection " >> termParser >> withIds
  let fvarId ← elabAsFVar stx[1]
  let ids := getInjectionNewIds stx[2]
  liftMetaTactic fun mvarId => do
    match (← Meta.injection mvarId fvarId ids) with
    | .solved                      => checkUnusedIds `injection mvarId ids; return []
    | .subgoal mvarId' _ unusedIds => checkUnusedIds `injection mvarId unusedIds; tryAssumption mvarId'

@[builtin_tactic «injections»] def evalInjections : Tactic := fun stx => do
  let ids := stx[1].getArgs.toList.map getNameOfIdent'
  liftMetaTactic fun mvarId => do
    match (← Meta.injections mvarId ids) with
    | .solved                      => checkUnusedIds `injections mvarId ids; return []
    | .subgoal mvarId' unusedIds _ => checkUnusedIds `injections mvarId unusedIds; tryAssumption mvarId'

end Lean.Elab.Tactic
