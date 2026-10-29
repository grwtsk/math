-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantb978f1ec3b614fda93ef10847cefe117698cfd1390d1c419b1c50c027c0c76a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b978f1ec3b614fda93ef10847cefe117698cfd1390d1c419b1c50c027c0c76a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tactic.Variantb978f1ec3b614fda93ef10847cefe117698cfd1390d1c419b1c50c027c0c76a6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b978f1ec3b614fda93ef10847cefe117698cfd1390d1c419b1c50c027c0c76a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Tactic/SeqFocus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
module

public meta import Lean.Elab.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantb978f1ec3b614fda93ef10847cefe117698cfd1390d1c419b1c50c027c0c76a6

public meta section

open Lean Elab Meta Tactic

namespace Batteries.Tactic

/-- Assuming there are `n` goals, `map_tacs [t1; t2; ...; tn]` applies each `ti` to the respective
goal and leaves the resulting subgoals. It raises an error if the number of subgoals does not match.
-/
elab "map_tacs " "[" ts:sepBy(tactic, "; ") "]" : tactic => do
  let goals ← getUnsolvedGoals
  let tacs := ts.getElems
  let length := tacs.size
  if length < goals.length then
    throwError "not enough tactics"
  else if length > goals.length then
    throwError "too many tactics"
  let mut goalsNew := #[]
  for tac in tacs, goal in goals do
    if ← goal.isAssigned then continue
    setGoals [goal]
    try
      evalTactic tac
      goalsNew := goalsNew ++ (← getUnsolvedGoals)
    catch ex =>
      if (← read).recover then
        logException ex
        goalsNew := goalsNew.push goal
      else
        throw ex
  setGoals goalsNew.toList

/-- `t <;> [t1; t2; ...; tn]` focuses on the first goal and applies `t`, which should result in `n`
subgoals. It then applies each `ti` to the corresponding goal and collects the resulting
subgoals. It raises an error if the number of subgoals does not match.
-/
tactic_extension Lean.Parser.Tactic.«tactic_<;>_»

@[tactic_alt Lean.Parser.Tactic.«tactic_<;>_»]
macro:1 (name := seq_focus) t:tactic " <;> " "[" ts:sepBy(tactic, "; ") "]" : tactic =>
  `(tactic| focus ( $t:tactic; map_tacs [$ts;*]) )
