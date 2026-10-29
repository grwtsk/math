-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variantb4548eae122a96c4506f08bf78f448c41ff94a9440b49b5b6e9067fb3197185f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4548eae122a96c4506f08bf78f448c41ff94a9440b49b5b6e9067fb3197185f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ElabRules.Variantb4548eae122a96c4506f08bf78f448c41ff94a9440b49b5b6e9067fb3197185f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b4548eae122a96c4506f08bf78f448c41ff94a9440b49b5b6e9067fb3197185f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/SeqFocus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Lean.Elab.ElabRules


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variantb4548eae122a96c4506f08bf78f448c41ff94a9440b49b5b6e9067fb3197185f

open Lean Elab Meta Tactic

namespace Std.Tactic

/-- Assuming there are `n` goals, `map_tacs [t1; t2; ...; tn]` applies each `ti` to the respective
goal and leaves the resulting subgoals. -/
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
subgoals. -/
macro:1 (name := seq_focus) t:tactic " <;> " "[" ts:sepBy(tactic, "; ") "]" : tactic =>
  `(tactic| focus ( $t:tactic; map_tacs [$ts;*]) )
