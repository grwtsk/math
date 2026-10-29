-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToSyntax.Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ToSyntax.Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Expr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.Term

/-!
# Additional operations on Expr and related types

This file defines basic operations on the types expr, name, declaration, level, environment.

This file is mostly for non-tactics.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToSyntax.Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383

namespace Lean.Expr

open Lean.Elab.Term in
/-- Converts an `Expr` into a `Syntax`, by creating a fresh metavariable
assigned to the expr and  returning a named metavariable syntax `?a`. -/
def toSyntax (e : Expr) : TermElabM Syntax.Term := withFreshMacroScope do
  let stx ← `(?a)
  let mvar ← elabTermEnsuringType stx (← Meta.inferType e)
  mvar.mvarId!.assign e
  pure stx

/--
Returns the number of leading `∀` binders of an expression. Ignores metadata.
-/
def forallArity : Expr → Nat
  | mdata _ b => forallArity b
  | forallE _ _ body _ => 1 + forallArity body
  | _ => 0

/--
Returns the number of leading `λ` binders of an expression. Ignores metadata.
-/
def lambdaArity : Expr → Nat
  | mdata _ b => lambdaArity b
  | lam _ _ b _ => 1 + lambdaArity b
  | _ => 0

/-- Like `getAppFn` but ignores metadata. -/
def getAppFn' : Expr → Expr
  | mdata _ b => getAppFn' b
  | app f _ => getAppFn' f
  | e => e

/-- Like `getAppNumArgs` but ignores metadata. -/
def getAppNumArgs' (e : Expr) : Nat :=
  go e 0
where
  /-- Auxiliary definition for `getAppNumArgs'`. -/
  go : Expr → Nat → Nat
    | mdata _ b, n => go b n
    | app f _  , n => go f (n + 1)
    | _        , n => n

/-- Like `withApp` but ignores metadata. -/
@[inline]
def withApp' (e : Expr) (k : Expr → Array Expr → α) : α :=
  let dummy := mkSort levelZero
  let nargs := e.getAppNumArgs'
  go e (mkArray nargs dummy) (nargs - 1)
where
  /-- Auxiliary definition for `withApp'`. -/
  @[specialize]
  go : Expr → Array Expr → Nat → α
    | mdata _ b, as, i => go b as i
    | app f a  , as, i => go f (as.set! i a) (i-1)
    | f        , as, _ => k f as

/-- Like `getAppArgs` but ignores metadata. -/
@[inline]
def getAppArgs' (e : Expr) : Array Expr :=
  e.withApp' λ _ as => as

/-- Like `traverseApp` but ignores metadata. -/
def traverseApp' {m} [Monad m]
  (f : Expr → m Expr) (e : Expr) : m Expr :=
  e.withApp' λ fn args => return mkAppN (← f fn) (← args.mapM f)

/-- Like `withAppRev` but ignores metadata. -/
@[inline]
def withAppRev' (e : Expr) (k : Expr → Array Expr → α) : α :=
  go e (Array.mkEmpty e.getAppNumArgs')
where
  /-- Auxiliary definition for `withAppRev'`. -/
  @[specialize]
  go : Expr → Array Expr → α
    | mdata _ b, as => go b as
    | app f a  , as => go f (as.push a)
    | f        , as => k f as

/-- Like `getAppRevArgs` but ignores metadata. -/
@[inline]
def getAppRevArgs' (e : Expr) : Array Expr :=
  e.withAppRev' λ _ as => as

/-- Like `getRevArgD` but ignores metadata. -/
def getRevArgD' : Expr → Nat → Expr → Expr
  | mdata _ b, n  , v => getRevArgD' b n v
  | app _ a  , 0  , _ => a
  | app f _  , i+1, v => getRevArgD' f i v
  | _        , _  , v => v

/-- Like `getRevArg!` but ignores metadata. -/
@[inline]
def getRevArg!' : Expr → Nat → Expr
  | mdata _ b, n   => getRevArg!' b n
  | app _ a  , 0   => a
  | app f _  , i+1 => getRevArg!' f i
  | _        , _   => panic! "invalid index"

/-- Like `getArgD` but ignores metadata. -/
@[inline]
def getArgD' (e : Expr) (i : Nat) (v₀ : Expr) (n := e.getAppNumArgs') : Expr :=
  getRevArgD' e (n - i - 1) v₀

/-- Like `getArg!` but ignores metadata. -/
@[inline]
def getArg!' (e : Expr) (i : Nat) (n := e.getAppNumArgs') : Expr :=
  getRevArg!' e (n - i - 1)

/-- Like `isAppOf` but ignores metadata. -/
def isAppOf' (e : Expr) (n : Name) : Bool :=
  match e.getAppFn' with
  | const c .. => c == n
  | _ => false

/-- If the expression is a constant, return that name. Otherwise return `Name.anonymous`. -/
def constName (e : Expr) : Name :=
  e.constName?.getD Name.anonymous

/-- Return the function (name) and arguments of an application. -/
def getAppFnArgs (e : Expr) : Name × Array Expr :=
  withApp e λ e a => (e.constName, a)
