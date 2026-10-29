-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonCommSemiringMContext.Variant5eb95998997c84785fde54a06a9c2543f935f03fe2a9d862ca476358cd46dd1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5eb95998997c84785fde54a06a9c2543f935f03fe2a9d862ca476358cd46dd1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.NonCommSemiringMContext.Variant5eb95998997c84785fde54a06a9c2543f935f03fe2a9d862ca476358cd46dd1e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"5eb95998997c84785fde54a06a9c2543f935f03fe2a9d862ca476358cd46dd1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/CommRing/NonCommSemiringM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.CommRing.SemiringM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonCommSemiringMContext.Variant5eb95998997c84785fde54a06a9c2543f935f03fe2a9d862ca476358cd46dd1e

public section
namespace Lean.Meta.Grind.Arith.CommRing
open Sym.Arith (MonadCanon)

structure NonCommSemiringM.Context where
  semiringId : Nat

abbrev NonCommSemiringM := ReaderT NonCommSemiringM.Context GoalM

abbrev NonCommSemiringM.run (semiringId : Nat) (x : NonCommSemiringM α) : GoalM α :=
  x { semiringId }

instance : MonadCanon NonCommSemiringM where
  canonExpr e := do shareCommon (← canon e)
  synthInstance? e := Grind.synthInstance? e

protected def NonCommSemiringM.getSemiring : NonCommSemiringM Semiring := do
  let s ← get'
  let semiringId := (← read).semiringId
  if h : semiringId < s.ncSemirings.size then
    return s.ncSemirings[semiringId]
  else
    throwError "`grind` internal error, invalid semiringId"

protected def NonCommSemiringM.modifySemiring (f : Semiring → Semiring) : NonCommSemiringM Unit := do
  let semiringId := (← read).semiringId
  modify' fun s => { s with ncSemirings := s.ncSemirings.modify semiringId f }

instance : MonadSemiring NonCommSemiringM where
  getSemiring := NonCommSemiringM.getSemiring
  modifySemiring := NonCommSemiringM.modifySemiring

def getTermNonCommSemiringId? (e : Expr) : GoalM (Option Nat) := do
    return (← get').exprToNCSemiringId.find? { expr := e }

def setTermNonCommSemiringId (e : Expr) : NonCommSemiringM Unit := do
  let semiringId := (← read).semiringId
  if let some semiringId' ← getTermNonCommSemiringId? e then
    unless semiringId' == semiringId do
      reportIssue! "expression in two different semirings{indentExpr e}"
    return ()
  modify' fun s => { s with exprToNCSemiringId := s.exprToNCSemiringId.insert { expr := e } semiringId }

instance : MonadSetTermId NonCommSemiringM where
  setTermId e := setTermNonCommSemiringId e

end Lean.Meta.Grind.Arith.CommRing
