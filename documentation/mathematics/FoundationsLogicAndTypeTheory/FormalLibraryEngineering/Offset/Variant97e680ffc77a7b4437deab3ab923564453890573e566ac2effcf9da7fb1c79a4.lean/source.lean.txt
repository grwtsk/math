-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithInstantiatedMVars.Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithInstantiatedMVars.Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Offset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Data.LBool
public import Lean.Meta.Basic
import Lean.Meta.NatInstTesters
import Lean.Util.SafeExponentiation

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithInstantiatedMVars.Varianta38e1843551f29d750b9fd1a1fb634ce092f65954cc8c80b156d243714569b04

public section
namespace Lean.Meta

open Lean

private abbrev withInstantiatedMVars (e : Expr) (k : Expr → OptionT MetaM α) : OptionT MetaM α := do
  let eNew ← instantiateMVars e
  if eNew.getAppFn.isMVar then
    failure
  else
    k eNew

open Structural in -- TODO FIX
/--
  Evaluate simple `Nat` expressions.
  Remark: this method assumes the given expression has type `Nat`. -/
partial def evalNat (e : Expr) : OptionT MetaM Nat := do
  match e with
  | .lit (.natVal n)     => return n
  | .mdata _ e           => evalNat e
  | .const ``Nat.zero .. => return 0
  | .app ..              => visit e
  | .mvar ..             => visit e
  | _                    => failure
where
  evalPow (b n : Expr) : OptionT MetaM Nat := do
    let n ← evalNat n
    guard (← checkExponent n)
    return (← evalNat b) ^ n
  visit e := do
    match_expr e with
    | OfNat.ofNat _ n i => guard (← isInstOfNatNat i); evalNat n
    | Nat.succ a => return (← evalNat a) + 1
    | Nat.add a b => return (← evalNat a) + (← evalNat b)
    | Add.add _ i a b => guard (← isInstAddNat i); return (← evalNat a) + (← evalNat b)
    | HAdd.hAdd _ _ _ i a b => guard (← isInstHAddNat i); return (← evalNat a) + (← evalNat b)
    | Nat.sub a b => return (← evalNat a) - (← evalNat b)
    | Sub.sub _ i a b => guard (← isInstSubNat i); return (← evalNat a) - (← evalNat b)
    | HSub.hSub _ _ _ i a b => guard (← isInstHSubNat i); return (← evalNat a) - (← evalNat b)
    | Nat.mul a b => return (← evalNat a) * (← evalNat b)
    | Mul.mul _ i a b => guard (← isInstMulNat i); return (← evalNat a) * (← evalNat b)
    | HMul.hMul _ _ _ i a b => guard (← isInstHMulNat i); return (← evalNat a) * (← evalNat b)
    | Nat.div a b => return (← evalNat a) / (← evalNat b)
    | Div.div _ i a b => guard (← isInstDivNat i); return (← evalNat a) / (← evalNat b)
    | HDiv.hDiv _ _ _ i a b => guard (← isInstHDivNat i); return (← evalNat a) / (← evalNat b)
    | Nat.mod a b => return (← evalNat a) % (← evalNat b)
    | Mod.mod _ i a b => guard (← isInstModNat i); return (← evalNat a) % (← evalNat b)
    | HMod.hMod _ _ _ i a b => guard (← isInstHModNat i); return (← evalNat a) % (← evalNat b)
    | Nat.pow a b => evalPow a b
    | NatPow.pow _ i a b => guard (← isInstNatPowNat i); evalPow a b
    | Pow.pow _ _ i a b => guard (← isInstPowNat i); evalPow a b
    | HPow.hPow _ _ _ i a b => guard (← isInstHPowNat i); evalPow a b
    | _ => failure

/--
Checks that expression `e` is definitional equal to `inst`.

Uses `instances` transparency so that reducible terms and instances extended
other instances are unfolded.
-/
def matchesInstance (e inst : Expr) : MetaM Bool :=
  -- Note. We use withNewMCtxDepth to avoid assigning meta-variables in isDefEq checks
  withNewMCtxDepth (withTransparency .instances (isDefEq e inst))

mutual

/--
Quick function for converting `e` into `s + k` s.t. `e` is definitionally equal to `Nat.add s k`.
This function always succeeds in finding such `s` and `k`
(as a last resort it returns `e` and `0`).
-/
private partial def getOffset (e : Expr) : MetaM (Expr × Nat) :=
  return (← isOffset? e).getD (e, 0)

/--
Similar to `getOffset` but returns `none` if the expression is not an offset.
-/
partial def isOffset? (e : Expr) : OptionT MetaM (Expr × Nat) := do
  let add (a b : Expr) := do
    let v ← evalNat b
    let (s, k) ← getOffset a
    return (s, k+v)
  match_expr e with
  | Nat.succ a =>
    let (s, k) ← getOffset a
    return (s, k+1)
  | Nat.add a b => add a b
  | Add.add _ i a b => guard (← matchesInstance i Nat.mkInstAdd); add a b
  | HAdd.hAdd _ _ _ i a b => guard (← matchesInstance i Nat.mkInstHAdd); add a b
  | _ => failure

end

private def isNatZero (e : Expr) : MetaM Bool := do
  match (← evalNat e) with
  | some v => return v == 0
  | _      => return false

def mkOffset (e : Expr) (offset : Nat) : MetaM Expr := do
  if offset == 0 then
    return e
  else if (← isNatZero e) then
    return mkNatLit offset
  else
    return mkNatAdd e (mkNatLit offset)

def isDefEqOffset (s t : Expr) : MetaM LBool := do
  let ifNatExpr (x : MetaM LBool) : MetaM LBool := do
    let type ← inferType s
    -- Remark: we use `withNewMCtxDepth` to make sure we don't assign metavariables when performing the `isDefEq` test
    if (← withNewMCtxDepth <| Meta.isExprDefEqAux type (mkConst ``Nat)) then
      x
    else
      return LBool.undef
  let isDefEq (s t) : MetaM LBool :=
    ifNatExpr <| toLBoolM <| Meta.isExprDefEqAux s t
  if !(← getConfig).offsetCnstrs then
    return LBool.undef
  else
    match (← isOffset? s) with
    | some (s, k₁) =>
      match (← isOffset? t) with
      | some (t, k₂) => -- s+k₁ =?= t+k₂
        if k₁ == k₂ then
          isDefEq s t
        else if k₁ < k₂ then
          isDefEq s (← mkOffset t (k₂ - k₁))
        else
          isDefEq (← mkOffset s (k₁ - k₂)) t
      | none =>
        match (← evalNat t) with
        | some v₂ => -- s+k₁ =?= v₂
          if v₂ ≥ k₁ then
            isDefEq s (mkNatLit <| v₂ - k₁)
          else
            ifNatExpr <| return LBool.false
        | none =>
          return LBool.undef
    | none =>
      match (← evalNat s) with
      | some v₁ =>
        match (← isOffset? t) with
        | some (t, k₂) => -- v₁ =?= t+k₂
          if v₁ ≥ k₂ then
            isDefEq (mkNatLit <| v₁ - k₂) t
          else
            ifNatExpr <| return LBool.false
        | none =>
          match (← evalNat t) with
          | some v₂ => ifNatExpr <| return (v₁ == v₂).toLBool -- v₁ =?= v₂
          | none    => return LBool.undef
      | none => return LBool.undef

end Lean.Meta
