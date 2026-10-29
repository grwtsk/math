-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Entry.Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Entry.Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/GeneralizeTelescope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.KAbstract
public import Lean.Meta.Check


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Entry.Variant64ca5c9e8f798670b9203d745fd0e8c484887bd1fffd2a036871ebcb031dbaee

public section

namespace Lean.Meta
namespace GeneralizeTelescope

structure Entry where
  expr     : Expr
  type     : Expr
  modified : Bool

partial def updateTypes (e eNew : Expr) (entries : Array Entry) (i : Nat) : MetaM (Array Entry) :=
  if h : i < entries.size then
    let entry := entries[i]
    match entry with
    | ⟨_, type, _⟩ => do
      let typeAbst ← kabstract type e
      if typeAbst.hasLooseBVars then do
        let typeNew := typeAbst.instantiate1 eNew
        let entries := entries.set i { entry with type := typeNew, modified := true }
        updateTypes e eNew entries (i+1)
      else
        updateTypes e eNew entries (i+1)
  else
    pure entries

partial def generalizeTelescopeAux {α} (k : Array Expr → MetaM α)
    (entries : Array Entry) (i : Nat) (fvars : Array Expr) : MetaM α := do
  if h : i < entries.size then
    let replace (baseUserName : Name) (e : Expr) (type : Expr) : MetaM α := do
      let userName ← mkFreshUserName baseUserName
      withLocalDeclD userName type fun x => do
        let entries ← updateTypes e x entries (i+1)
        generalizeTelescopeAux k entries (i+1) (fvars.push x)
    match entries[i] with
    | ⟨e@(.fvar fvarId), type, false⟩ =>
      let localDecl ← fvarId.getDecl
      match localDecl with
      | .cdecl .. => generalizeTelescopeAux k entries (i+1) (fvars.push e)
      | .ldecl .. => replace localDecl.userName e type
    | ⟨e, type, modified⟩ =>
      if modified then
        unless (← isTypeCorrect type) do
          throwError "failed to create telescope generalizing {entries.map Entry.expr}"
      replace `x e type
  else
    k fvars

end GeneralizeTelescope

open GeneralizeTelescope

/--
  Given expressions `es := #[e_1, e_2, ..., e_n]`, execute `k` with the
  free variables `(x_1 : A_1) (x_2 : A_2 [x_1]) ... (x_n : A_n [x_1, ... x_{n-1}])`.
  Moreover,
  - type of `e_1` is definitionally equal to `A_1`,
  - type of `e_2` is definitionally equal to `A_2[e_1]`.
  - ...
  - type of `e_n` is definitionally equal to `A_n[e_1, ..., e_{n-1}]`.

  This method tries to avoid the creation of new free variables. For example, if `e_i` is a
  free variable `x_i` and it is not a let-declaration variable, and its type does not depend on
  previous `e_j`s, the method will just use `x_i`.

  The telescope `x_1 ... x_n` can be used to create lambda and forall abstractions.
  Moreover, for any type correct lambda abstraction `f` constructed using `mkForall #[x_1, ..., x_n] ...`,
  The application `f e_1 ... e_n` is also type correct.

  The `kabstract` method is used to "locate" and abstract forward dependencies.
  That is, an occurrence of `e_i` in the of `e_j` for `j > i`.

  The method checks whether the abstract types `A_i` are type correct. Here is an example
  where `generalizeTelescope` fails to create the telescope `x_1 ... x_n`.
  Assume the local context contains `(n : Nat := 10) (xs : Vec Nat n) (ys : Vec Nat 10) (h : xs = ys)`.
  Then, assume we invoke `generalizeTelescope` with `es := #[10, xs, ys, h]`
  A type error is detected when processing `h`'s type. At this point, the method had successfully produced
  ```
    (x_1 : Nat) (xs : Vec Nat n) (x_2 : Vec Nat x_1)
  ```
  and the type for the new variable abstracting `h` is `xs = x_2` which is not type correct. -/
def generalizeTelescope {α} (es : Array Expr) (k : Array Expr → MetaM α) : MetaM α := do
  let es ← es.mapM fun e => do
    let type ← inferType e
    let type ← instantiateMVars type
    pure { expr := e, type := type, modified := false : Entry }
  generalizeTelescopeAux k es 0 #[]

end Lean.Meta
