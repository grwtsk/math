-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddHaveSuggestion.Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddHaveSuggestion.Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/TryThis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Tactic.TryThis
import Mathlib.Util.Syntax

/-!
# Additions to "Try this" support

This file could be upstreamed to `Std`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddHaveSuggestion.Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c

open Lean Elab Elab.Tactic PrettyPrinter Meta Std.Tactic.TryThis

/-- Add a suggestion for `have : t := e`. -/
def addHaveSuggestion (ref : Syntax) (t? : Option Expr) (e : Expr)
  (origSpan? : Option Syntax := none) : TermElabM Unit := do
  let estx ← delabToRefinableSyntax e
  let prop ← isProp (← inferType e)
  let tac ← if let some t := t? then
    let tstx ← delabToRefinableSyntax t
    if prop then
      `(tactic| have : $tstx := $estx)
    else
      `(tactic| let this : $tstx := $estx)
  else
    if prop then
      `(tactic| have := $estx)
    else
      `(tactic| let this := $estx)
  addSuggestion ref tac none origSpan?

open Lean.Parser.Tactic
open Lean.Syntax

/-- Add a suggestion for `rw [h₁, ← h₂] at loc`. -/
def addRewriteSuggestion (ref : Syntax) (rules : List (Expr × Bool))
  (type? : Option Expr := none) (loc? : Option Expr := none)
  (origSpan? : Option Syntax := none) :
    TermElabM Unit := do
  let rules_stx := TSepArray.ofElems <| ← rules.toArray.mapM fun ⟨e, symm⟩ => do
    let t ← delabToRefinableSyntax e
    if symm then `(rwRule| ← $t:term) else `(rwRule| $t:term)
  let tac ← do
    let loc ← loc?.mapM fun loc => do `(location| at $(← delab loc):term)
    `(tactic| rw [$rules_stx,*] $(loc)?)

  let mut tacMsg :=
    let rulesMsg := MessageData.sbracket <| MessageData.joinSep
      (rules.map fun ⟨e, symm⟩ => (if symm then "← " else "") ++ m!"{e}") ", "
    if let some loc := loc? then
      m!"rw {rulesMsg} at {loc}"
    else
      m!"rw {rulesMsg}"
  let mut extraMsg := ""
  if let some type := type? then
    tacMsg := tacMsg ++ m!"\n-- {type}"
    extraMsg := extraMsg ++ s!"\n-- {← PrettyPrinter.ppExpr type}"
  addSuggestion ref tac (suggestionForMessage? := tacMsg)
    (extraMsg := extraMsg) (origSpan? := origSpan?)
