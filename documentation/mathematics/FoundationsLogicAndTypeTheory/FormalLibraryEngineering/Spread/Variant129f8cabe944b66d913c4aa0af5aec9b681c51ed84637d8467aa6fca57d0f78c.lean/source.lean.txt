-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabLetImplDetail.Variantdc606db54c047f0420d6898fca0bd4df9064ed508cb58c9792b4711603fadfb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc606db54c047f0420d6898fca0bd4df9064ed508cb58c9792b4711603fadfb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabLetImplDetail.Variantdc606db54c047f0420d6898fca0bd4df9064ed508cb58c9792b4711603fadfb0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dc606db54c047f0420d6898fca0bd4df9064ed508cb58c9792b4711603fadfb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Spread.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Mathlib.Init
import Lean.Elab.Binders

/-!
# Macro for spread syntax (`__ := instSomething`) in structures.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabLetImplDetail.Variantdc606db54c047f0420d6898fca0bd4df9064ed508cb58c9792b4711603fadfb0

open Lean Parser.Term Macro

/-
This adds support for structure instance spread syntax.

```lean
instance : Foo α where
  __ := instSomething -- include fields from `instSomething`

example : Foo α := {
  __ := instSomething -- include fields from `instSomething`
}
```
-/

/--
Mathlib extension to preserve old behavior of structure instances.
We need to be able to `let` some implementation details that are still local instances.
Normally implementation detail fvars are not local instances,
but we need them to be implementation details so that `simp` will see them as "reducible" fvars.
-/
syntax (name := letImplDetailStx) "let_impl_detail " ident " := " term "; " term : term

open Lean Elab Term Meta

@[term_elab letImplDetailStx, inherit_doc letImplDetailStx]
def elabLetImplDetail : TermElab := fun stx expectedType? =>
  match stx with
  | `(let_impl_detail $id := $valStx; $body) => do
    let val ← elabTerm valStx none
    let type ← inferType val
    trace[Elab.let.decl] "{id.getId} : {type} := {val}"
    let result ←
      withLetDecl id.getId (kind := .default) type val fun x => do
        addLocalVarInfo id x
        let lctx ← getLCtx
        let lctx := lctx.modifyLocalDecl x.fvarId! fun decl => decl.setKind .implDetail
        withLCtx lctx (← getLocalInstances) do
          let body ← elabTermEnsuringType body expectedType?
          let body ← instantiateMVars body
          mkLetFVars #[x] body (usedLetOnly := false)
    pure result
  | _ => throwUnsupportedSyntax

macro_rules
| `({ $[$srcs,* with]? $[$fields],* $[: $ty?]? }) => show MacroM Term from do
    let mut spreads := #[]
    let mut newFields := #[]

    for field in fields do
      match field.1 with
        | `(structInstField| $name:ident := $arg) =>
          if name.getId.eraseMacroScopes == `__ then do
            spreads := spreads.push arg
          else
            newFields := newFields.push field
        | _ =>
          throwUnsupported

    if spreads.isEmpty then throwUnsupported

    let spreadData ← withFreshMacroScope <| spreads.mapIdxM fun i spread => do
      let n := Name.num `__spread i
      return (mkIdent <| ← Macro.addMacroScope n, spread)

    let srcs := (srcs.map (·.getElems)).getD {} ++ spreadData.map Prod.fst
    let body ← `({ $srcs,* with $[$newFields],* $[: $ty?]? })
    spreadData.foldrM (init := body) fun (id, val) body => `(let_impl_detail $id := $val; $body)
