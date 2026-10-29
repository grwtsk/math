-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OptimizeFocusRenameI.Variant1b12de57536bf443ef3ba4779da6111ed893476f8339f15baae76c050227a68c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b12de57536bf443ef3ba4779da6111ed893476f8339f15baae76c050227a68c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OptimizeFocusRenameI.Variant1b12de57536bf443ef3ba4779da6111ed893476f8339f15baae76c050227a68c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1b12de57536bf443ef3ba4779da6111ed893476f8339f15baae76c050227a68c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/OptimizeSyntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Std.Data.HashSet.Basic
meta import Lean.Parser.Term.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OptimizeFocusRenameI.Variant1b12de57536bf443ef3ba4779da6111ed893476f8339f15baae76c050227a68c

public section

namespace Aesop

open Lean Lean.Meta Lean.Parser.Tactic

variable [Monad m] [MonadQuotation m]

partial def optimizeFocusRenameI : Syntax → m Syntax
  | stx@.missing | stx@(.atom ..) | stx@(.ident ..) => return stx
  | .node info kind args => do
    let stx := .node info kind (← args.mapM optimizeFocusRenameI)
    match stx with
    | `(tactic| · $tacs:tactic*)
    | `(tactic| · { $tacs:tactic* }) => do
      let tacs := tacs.getElems
      let some (tac : TSyntax `tactic) := tacs[0]?
        | return stx
      match tac with
      | `(tactic| rename_i $[$ns:ident]*) =>
        `(tactic| next $[$ns:ident]* => $(tacs[1:]):tactic*)
      | _ => return stx
    | _ => return stx

private partial def addIdents (acc : Std.HashSet Name) : Syntax → Std.HashSet Name
  | .missing | .atom .. => acc
  | .ident (val := val) .. => acc.insert val
  | .node _ _ args =>
    args.foldl (init := acc) λ acc stx => addIdents acc stx

def optimizeInitialRenameI : Syntax → m Syntax
  | stx@`(tacticSeq| $tacs:tactic*) => do
    let tacs := tacs.getElems
    let some (tac : TSyntax `tactic) := tacs[0]?
      | return stx
    match tac with
    | `(tactic| rename_i $[$ns:ident]*) =>
      let usedNames := tacs[1:].foldl (init := ∅) λ usedNames stx =>
        addIdents usedNames stx.raw
      let mut dropUntil := 0
      for n in ns do
        if usedNames.contains n.getId then
          break
        else
          dropUntil := dropUntil + 1
      if dropUntil == 0 then
        return stx
      else if dropUntil == ns.size then
        tacsToTacticSeq tacs[1:]
      else
        let ns : TSyntaxArray `ident := ns[dropUntil:].toArray
        let tac ← `(tactic| rename_i $[$ns:ident]*)
        let mut result : Array (TSyntax `tactic) := Array.mkEmpty tacs.size
        result := result.push tac
        result := result ++ tacs[1:]
        tacsToTacticSeq result
    | _ => return stx
  | stx => return stx
where
  -- Inlining this helper function triggers a code gen issue:
  -- https://github.com/leanprover/lean4/issues/4548
  tacsToTacticSeq (tacs : Array (TSyntax `tactic)) : m (TSyntax ``tacticSeq) :=
    `(tacticSeq| $tacs:tactic*)

def optimizeSyntax (stx : TSyntax kind) : m (TSyntax kind) := do
  let mut stx := stx.raw
  stx ← optimizeFocusRenameI stx
  stx ← optimizeInitialRenameI stx
  return ⟨stx⟩

end Aesop
