-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variant5c5fdaa5afc95ccabde23045ecf13e1dd48a4e62953676d67bd7885a67672fb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c5fdaa5afc95ccabde23045ecf13e1dd48a4e62953676d67bd7885a67672fb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactics.Variant5c5fdaa5afc95ccabde23045ecf13e1dd48a4e62953676d67bd7885a67672fb2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5c5fdaa5afc95ccabde23045ecf13e1dd48a4e62953676d67bd7885a67672fb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/Notation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public meta import Init.Grind.Tactics
public import Init.Notation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variant5c5fdaa5afc95ccabde23045ecf13e1dd48a4e62953676d67bd7885a67672fb2

public section

/-!
# Notation for `List` literals.
-/

set_option linter.missingDocs true -- keep it documented
set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

open Decidable List

/--
The syntax `[a, b, c]` is shorthand for `a :: b :: c :: []`, or
`List.cons a (List.cons b (List.cons c List.nil))`. It allows conveniently constructing
list literals.

For lists of length at least 64, an alternative desugaring strategy is used
which uses let bindings as intermediates as in
`let left := [d, e, f]; a :: b :: c :: left` to avoid creating very deep expressions.
Note that this changes the order of evaluation, although it should not be observable
unless you use side effecting operations like `dbg_trace`.
-/
syntax "[" withoutPosition(term,*,?) "]"  : term

recommended_spelling "nil" for "[]" in [List.nil, «term[_]»]
recommended_spelling "singleton" for "[a]" in [List.cons, «term[_]»]

/--
Auxiliary syntax for implementing `[$elem,*]` list literal syntax.
The syntax `%[a,b,c|tail]` constructs a value equivalent to `a::b::c::tail`.
It uses binary partitioning to construct a tree of intermediate let bindings as in
`let left := [d, e, f]; a :: b :: c :: left` to avoid creating very deep expressions.
-/
syntax "%[" withoutPosition(term,*,? " | " term) "]" : term

namespace Lean

macro_rules
  | `([ $elems,* ]) => do
    -- NOTE: we do not have `TSepArray.getElems` yet at this point
    let rec expandListLit (i : Nat) (skip : Bool) (result : TSyntax `term) : MacroM Syntax := do
      match i, skip with
      | 0,   _     => pure result
      | i+1, true  => expandListLit i false result
      | i+1, false => expandListLit i true  (← ``(List.cons $(⟨elems.elemsAndSeps.get!Internal i⟩) $result))
    let size := elems.elemsAndSeps.size
    if size < 64 then
      expandListLit size (size % 2 == 0) (← ``(List.nil))
    else
      `(%[ $elems,* | List.nil ])

end Lean
