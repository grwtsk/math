-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Doc.Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Doc.Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Linter/TacticDocumentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
module

public meta import Lean.Elab.Tactic.Doc
public meta import Lean.Parser.Tactic.Doc
-- Import this linter explicitly to ensure that
-- this file has a valid copyright header and module docstring.
public import Mathlib.Tactic.Linter.Header  -- shake: keep
public import Batteries.Tactic.Lint.Basic
public import Lean.Elab.Tactic.Doc

/-! # The `tacticDocs` linter

The `tacticDocs` environment linter checks that all tactics defined in a module come with
a (nonempty) docstring.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Doc.Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f

open Lean Parser Elab Command

open Tactic.Doc

/-- Does this tactic have a docstring, or an `extensionDoc` defined later? -/
meta def isNonemptyDoc (doc : TacticDoc) : Bool :=
  doc.docString.isSome || doc.extensionDocs.any (! ·.isEmpty)

/-- Check that all tactics available in Mathlib have a docstring. -/
@[env_linter] public meta def tacticDocs : Batteries.Tactic.Lint.Linter where
  noErrorsFound := "No tactics are missing documentation."
  errorsFound := "TACTICS ARE MISSING DOCUMENTATION STRINGS:"
  test tac := do
    let env ← getEnv

    -- Only run on unique tactics (where tactics are defined as parsers in the tactic kind).
    if !isTactic env tac || (alternativeOfTactic env tac).isSome then
      return none

    -- Find the associated documentation.
    let docs ← Tactic.Doc.allTacticDocs
    let docMap : NameMap _ := docs.foldl (init := {}) fun m doc =>
      m.insert doc.internalName doc
    -- This `get?` should not return `none` for normally declared tactics,
    -- but if we do environment manipulation it might give us weird results.
    -- So we should allow the case of `none`.
    let doc := docMap.get? tac
    let name := (doc.map (·.userName)).getD tac.toString

    if let some doc := doc then
      if isNonemptyDoc doc then
        return none

    return m!"tactic `{name}` missing documentation string"

/-- Check tactics with the same user-facing name (usually: first syntax token) get a `@[tactic_alt]`
attribute. -/
@[env_linter] public meta def tacticAlt : Batteries.Tactic.Lint.Linter where
  noErrorsFound := "No tactics sharing the same user-facing name."
  errorsFound := "TACTICS ARE MISSING `@[tactic_alt]` ATTRIBUTES:"
  test tac := do
    let env ← getEnv
    if !isTactic env tac || (alternativeOfTactic env tac).isSome then
      return none
    -- Find duplicates, those with the same user-facing name but that aren't declared
    -- to be alternatives.
    let docs ← Tactic.Doc.allTacticDocs
    let some doc := docs.find? fun doc => doc.internalName == tac | return none
    let name := doc.userName
    let tacs := docs.filter fun doc =>
      (doc.userName == name && (alternativeOfTactic env doc.internalName).isNone)
    -- If we have duplicates, complain.
    if tacs.size <= 1 then return none
    let tacNames := tacs.map (·.internalName)
    return m!"tactic `{doc.userName}` has multiple declarations {tacNames} one of which should \
    be marked as `@[tactic_alt]` of the other(s).\n\
    Hint: you can use the `tactic_extension` command to extend the documentation."
