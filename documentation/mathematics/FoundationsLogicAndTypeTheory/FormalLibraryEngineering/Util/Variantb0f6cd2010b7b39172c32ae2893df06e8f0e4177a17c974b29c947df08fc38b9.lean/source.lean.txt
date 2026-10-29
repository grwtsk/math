-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectMacroExpansions.Variant98a405fb6b73bd9d11e4eadc760b5f07e1c5d94cd49060a74819c8bae9900c51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98a405fb6b73bd9d11e4eadc760b5f07e1c5d94cd49060a74819c8bae9900c51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CollectMacroExpansions.Variant98a405fb6b73bd9d11e4eadc760b5f07e1c5d94cd49060a74819c8bae9900c51","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"98a405fb6b73bd9d11e4eadc760b5f07e1c5d94cd49060a74819c8bae9900c51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König
-/
module

prelude
public import Lean.Server.InfoUtils
public import Lean.Linter.Init
public import Lean.Elab.Term


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectMacroExpansions.Variant98a405fb6b73bd9d11e4eadc760b5f07e1c5d94cd49060a74819c8bae9900c51

public section

namespace Lean.Linter

open Lean.Elab

/-- Go upwards through the given `tree` starting from the smallest node that
contains the given `range` and collect all `MacroExpansionInfo`s on the way up.
The result is `some []` if no `MacroExpansionInfo` was found on the way and
`none` if no `InfoTree` node was found that covers the given `range`.

Return the result reversed, s.t. the macro expansion that would be applied to
the original syntax first is the first element of the returned list. -/
def collectMacroExpansions? {m} [Monad m] (range : Lean.Syntax.Range) (tree : Elab.InfoTree) : m <| Option <| List Elab.MacroExpansionInfo := do
  if let .some <| .some result ← go then
    return some result.reverse
  else
    return none
where
  go : m <| Option <| Option <| List Elab.MacroExpansionInfo := tree.visitM (postNode := fun _ i _ results => do
    let results := results |>.filterMap id |>.filterMap id

    -- we expect that at most one InfoTree child returns a result
    if let results :: _ := results then
      if let .ofMacroExpansionInfo i := i then
        return some <| i :: results
      else
        return some results
    else if i.contains range.start && i.contains (includeStop := true) range.stop then
      if let .ofMacroExpansionInfo i := i then
        return some [i]
      else
        return some []
    else
      return none)

/-- Get the `parentDecl`s of every elaborated body in the infotree. -/
def getDeclsByBody (t : InfoTree) : List Name :=
  t.collectNodesBottomUp fun ctx i _ decls =>
    match i with
    | .ofCustomInfo i =>
      if i.value.typeName == ``Lean.Elab.Term.BodyInfo then
        if let some decl := ctx.parentDecl? then
          decl :: decls
        else decls
      else decls
    | _ => decls

/-- Get the names of declarations introduced by elaborating `t`.

A declaration introduces a `TermInfo` with `isBinder := true` whose `expr` is the constant
being declared. This covers `def`/`theorem`/`axiom`, inductive types and their constructors,
and structure fields and parent projections — including mutual blocks where each member
emits its own binder.
-/
def getNewDecls (t : InfoTree) : List Name :=
  t.collectNodesBottomUp fun _ i _ acc =>
    match i with
    | .ofTermInfo ti =>
      if ti.isBinder && ti.expr.isConst then
        ti.expr.constName! :: acc
      else
        acc
    | _ => acc
