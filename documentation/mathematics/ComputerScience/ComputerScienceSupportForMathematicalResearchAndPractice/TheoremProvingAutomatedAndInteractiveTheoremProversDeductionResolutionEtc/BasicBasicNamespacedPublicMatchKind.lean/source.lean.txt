-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchKind.Variant707e427e911e825770f7a54ea3bbd01c283bd7be9bb4da183c3825756dcd1882","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"707e427e911e825770f7a54ea3bbd01c283bd7be9bb4da183c3825756dcd1882","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MatchKind.Variant707e427e911e825770f7a54ea3bbd01c283bd7be9bb4da183c3825756dcd1882","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"707e427e911e825770f7a54ea3bbd01c283bd7be9bb4da183c3825756dcd1882","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Normalize/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Attr
public import Std.Tactic.BVDecide.Syntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchKind.Variant707e427e911e825770f7a54ea3bbd01c283bd7be9bb4da183c3825756dcd1882

public section

/-!
This module contains the basic preprocessing pipeline framework for `bv_normalize`.
-/

namespace Lean.Meta.Tactic.BVDecide
namespace Normalize

open Elab.Tactic.BVDecide (BVDecideConfig)

/--
The various kinds of matches supported by the match to cond infrastructure.
-/
inductive MatchKind
  /--
  It is a full match statement on an enum inductive with one constructor handled per arm.
  The ctors are listed in the order they occur in the match statement in `ctors`.
  -/
  | simpleEnum (info : InductiveVal) (ctors : Array ConstructorVal)
  /--
  It is a match statement on an enum inductive with a default arm, all explicitly handled ctors
  are listed in `ctors` in the order they occur in the match statement.
  -/
  | enumWithDefault (info : InductiveVal) (ctors : Array ConstructorVal)

/--
Contains the result of the type analysis to be used in the structures and enums pass.
-/
structure TypeAnalysis where
  /--
  Structures that are interesting for the structures pass.
  -/
  interestingStructures : Std.HashSet Name := {}
  /--
  Inductives enums that are interesting for the enums pass.
  -/
  interestingEnums : Std.HashSet Name := {}
  /--
  `func.match_x` auxiliary declarations that we consider interesting.
  -/
  interestingMatchers : Std.HashMap Name MatchKind := {}
  /--
  Other types that we've seen that are not interesting, currently only used as a cache.
  -/
  uninteresting : Std.HashSet Name := {}

structure PreProcessState where
  /--
  Contains `FVarId` that we already know are in `bv_normalize` simp normal form and thus don't
  need to be processed again when we visit the next time.
  -/
  rewriteCache : Std.HashSet FVarId := {}
  /--
  Contains `FVarId` that we already know have been run through the AC normal form and thus don't
  don't need to be processed again when we visit the next time.
  -/
  acNfCache : Std.HashSet FVarId := {}
  /--
  Analysis results for the structure and enum pass if required.
  -/
  typeAnalysis : TypeAnalysis := {}

abbrev PreProcessM : Type → Type := ReaderT BVDecideConfig <| StateRefT PreProcessState MetaM

namespace PreProcessM

@[inline]
def getConfig : PreProcessM BVDecideConfig := read

@[inline]
def checkRewritten (fvar : FVarId) : PreProcessM Bool := do
  return (← get).rewriteCache.contains fvar

@[inline]
def checkAcNf (fvar : FVarId) : PreProcessM Bool := do
  return (← get).acNfCache.contains fvar

@[inline]
def rewriteFinished (fvar : FVarId) : PreProcessM Unit := do
  modify (fun s => { s with rewriteCache := s.rewriteCache.insert fvar })

@[inline]
def acNfFinished (fvar : FVarId) : PreProcessM Unit := do
  modify (fun s => { s with acNfCache := s.acNfCache.insert fvar })

@[inline]
def getTypeAnalysis : PreProcessM TypeAnalysis := do
  return (← get).typeAnalysis

@[inline]
def lookupInterestingStructure (n : Name) : PreProcessM (Option Bool) := do
  let s ← getTypeAnalysis
  if s.uninteresting.contains n then
    return some false
  else if s.interestingStructures.contains n then
    return some true
  else
    return none

@[inline]
def modifyTypeAnalysis (f : TypeAnalysis → TypeAnalysis) :
    PreProcessM Unit := do
  modify fun s => { s with typeAnalysis := f s.typeAnalysis }

@[inline]
def markInterestingStructure (n : Name) : PreProcessM Unit := do
  modifyTypeAnalysis (fun s => { s with interestingStructures := s.interestingStructures.insert n })

@[inline]
def markInterestingEnum (n : Name) : PreProcessM Unit := do
  modifyTypeAnalysis (fun s => { s with interestingEnums := s.interestingEnums.insert n })

@[inline]
def markInterestingMatcher (n : Name) (k : MatchKind) : PreProcessM Unit := do
  modifyTypeAnalysis (fun s => { s with interestingMatchers := s.interestingMatchers.insert n k })

@[inline]
def markUninterestingConst (n : Name) : PreProcessM Unit := do
  modifyTypeAnalysis (fun s => { s with uninteresting := s.uninteresting.insert n })

@[inline]
def run (cfg : BVDecideConfig) (goal : MVarId) (x : PreProcessM α) : MetaM α := do
  let hyps ← goal.withContext do getPropHyps
  ReaderT.run x cfg |>.run' {
    rewriteCache := Std.HashSet.emptyWithCapacity hyps.size,
    acNfCache := Std.HashSet.emptyWithCapacity hyps.size,
  }

end PreProcessM

/--
A pass in the normalization pipeline. Takes the current goal and produces a refined one or closes
the goal fully, indicated by returning `none`.
-/
structure Pass where
  name : Name
  run' : MVarId → PreProcessM (Option MVarId)

namespace Pass

@[inline]
def run (pass : Pass) (goal : MVarId) : PreProcessM (Option MVarId) := do
  withTraceNode `Meta.Tactic.bv (fun _ => return m!"Running pass: {pass.name} on\n{goal}") do
    pass.run' goal

/--
Repeatedly run a list of `Pass` until they either close the goal or an iteration doesn't change
the goal anymore.
-/
partial def fixpointPipeline (passes : List Pass) (goal : MVarId) : PreProcessM (Option MVarId) := do
  checkSystem "bv_decide"
  let mut newGoal := goal
  for pass in passes do
    if let some nextGoal ← pass.run newGoal then
      newGoal := nextGoal
    else
      trace[Meta.Tactic.bv] "Fixpoint iteration solved the goal"
      return none

  if goal != newGoal then
    trace[Meta.Tactic.bv] m!"Rerunning pipeline on:\n{newGoal}"
    fixpointPipeline passes newGoal
  else
    trace[Meta.Tactic.bv] "Pipeline reached a fixpoint"
    return newGoal

end Pass

end Normalize
end Lean.Meta.Tactic.BVDecide
