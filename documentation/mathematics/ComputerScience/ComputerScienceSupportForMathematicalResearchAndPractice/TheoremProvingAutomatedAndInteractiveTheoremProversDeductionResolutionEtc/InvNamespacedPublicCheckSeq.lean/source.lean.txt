-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckVars.Variant36a2e4bcb15ff5f12da1ac8f72245606a77e487705f559386a4753500c50a044","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36a2e4bcb15ff5f12da1ac8f72245606a77e487705f559386a4753500c50a044","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CheckVars.Variant36a2e4bcb15ff5f12da1ac8f72245606a77e487705f559386a4753500c50a044","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"36a2e4bcb15ff5f12da1ac8f72245606a77e487705f559386a4753500c50a044","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/AC/Inv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.AC.Util
import Lean.Meta.Tactic.Grind.AC.Seq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckVars.Variant36a2e4bcb15ff5f12da1ac8f72245606a77e487705f559386a4753500c50a044

namespace Lean.Meta.Grind.AC
open Lean.Grind

def checkVars : ACM Unit := do
  let s ← getStruct
  let mut num := 0
  for ({ expr }, var) in s.varMap do
    if h : var < s.vars.size then
      let expr' := s.vars[var]
      assert! isSameExpr expr expr'
    else
      unreachable!
    num := num + 1
  assert! s.vars.size == num

/-
**Note**: Elements in the todo queue are not fully simplified.
Recall that we only (fully) simplify them when adding them to the basis.
-/
def checkSeq (s : AC.Seq) (simplified : Bool) : ACM Unit := do
  if (← isCommutative) then
    assert! s.isSorted
  if simplified then
    if (← hasNeutral) then
      assert! !s.contains 0 || s == .var 0
    if (← isIdempotent) then
      assert! s.noAdjacentDuplicates

def checkLhsRhs (lhs rhs : AC.Seq) (simplified : Bool) : ACM Unit := do
  checkSeq lhs simplified; checkSeq rhs simplified

def checkBasis : ACM Unit := do
  for c in (← getStruct).basis do
    assert! compare c.lhs c.rhs == .gt
    checkLhsRhs c.lhs c.rhs (simplified := true)

def checkQueue : ACM Unit := do
  for c in (← getStruct).queue do
    checkLhsRhs c.lhs c.rhs (simplified := false)

def checkDiseqs : ACM Unit := do
  for c in (← getStruct).diseqs do
    checkLhsRhs c.lhs c.rhs (simplified := true)

def checkStructInvs : ACM Unit := do
  checkVars
  checkBasis
  checkQueue
  checkDiseqs

public def checkInvariants : GoalM Unit := do
  if (← isDebugEnabled) then
  for opId in *...(← get').structs.size do
    ACM.run opId checkStructInvs

end Lean.Meta.Grind.AC
