-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Filter.Variant5c31e8352a7145fda8163f668681eca50ba441c451de50bd15801779de785064","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c31e8352a7145fda8163f668681eca50ba441c451de50bd15801779de785064","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Filter.Variant5c31e8352a7145fda8163f668681eca50ba441c451de50bd15801779de785064","mathematical_subject":"Topology.GeneralTopology","original_sha256":"5c31e8352a7145fda8163f668681eca50ba441c451de50bd15801779de785064","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Filter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types

namespace GRWTSK.Topology.GeneralTopology.Filter.Variant5c31e8352a7145fda8163f668681eca50ba441c451de50bd15801779de785064

namespace Lean.Meta.Grind

public inductive Filter where
  | true
  | const (declName : Name)
  | fvar (fvarId : FVarId)
  | gen (pred : Nat → Bool)
  | or (a b : Filter)
  | and (a b : Filter)
  | not (a : Filter)

-- **Note**: facts may not have been internalized if they are equalities.
def getGen (e : Expr) : GoalM Nat := do
  if (← alreadyInternalized e) then
    getGeneration e
  else match_expr e with
   | Eq _ lhs rhs => return max (← getGeneration lhs) (← getGeneration rhs)
   | _ => return 0

public def Filter.eval (filter : Filter) (e : Expr) : GoalM Bool := do
  go filter
where
  go (filter : Filter) : GoalM Bool := do
    match filter with
    | .true => return .true
    | .and a b => go a <&&> go b
    | .or a b => go a <||> go b
    | .not a => return !(← go a)
    | .const declName => return Option.isSome <| e.find? fun e => e.isConstOf declName
    | .fvar fvarId => return Option.isSome <| e.find? fun e => e.isFVar && e.fvarId! == fvarId
    | .gen pred => let gen ← getGen e; return pred gen

end Lean.Meta.Grind
