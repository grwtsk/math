-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpCnstrPos.Variant0fde50d8f6ca0ffa3910101f5c393820ac0013e907acacc3793e8955456cae4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fde50d8f6ca0ffa3910101f5c393820ac0013e907acacc3793e8955456cae4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpCnstrPos.Variant0fde50d8f6ca0ffa3910101f5c393820ac0013e907acacc3793e8955456cae4d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0fde50d8f6ca0ffa3910101f5c393820ac0013e907acacc3793e8955456cae4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/Arith/Nat/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Simp.Arith.Util
public import Lean.Meta.Tactic.Simp.Arith.Nat.Basic
import Lean.Meta.AppBuilder

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpCnstrPos.Variant0fde50d8f6ca0ffa3910101f5c393820ac0013e907acacc3793e8955456cae4d

public section
namespace Lean.Meta.Simp.Arith.Nat

def simpCnstrPos? (e : Expr) : MetaM (Option (Expr × Expr)) := do
  let some (c, atoms) ← toLinearCnstr? e
    | return none
  let lhs ← c.toArith atoms
  let c₁ := c.toPoly
  let c₂ := c₁.norm
  if c₂.isUnsat then
    let r := mkConst ``False
    let p := mkApp3 (mkConst ``Nat.Internal.Linear.ExprCnstr.eq_false_of_isUnsat) (← toContextExpr atoms) (toExpr c) eagerReflBoolTrue
    let h := mkExpectedPropHint p (mkPropEq lhs r)
    return some (r, h)
  else if c₂.isValid then
    let r := mkConst ``True
    let p := mkApp3 (mkConst ``Nat.Internal.Linear.ExprCnstr.eq_true_of_isValid) (← toContextExpr atoms) (toExpr c) eagerReflBoolTrue
    let h := mkExpectedPropHint p (mkPropEq lhs r)
    return some (r, h)
  else
    let c₂ : LinearCnstr := c₂.toExpr
    let r ← c₂.toArith atoms
    if r != lhs then
      let p := mkApp4 (mkConst ``Nat.Internal.Linear.ExprCnstr.eq_of_toNormPoly_eq) (← toContextExpr atoms) (toExpr c) (toExpr c₂) eagerReflBoolTrue
      let h := mkExpectedPropHint p (mkPropEq lhs r)
      return some (r, h)
    else
      return none

def simpCnstr? (e : Expr) : MetaM (Option (Expr × Expr)) := do
  if let some arg := e.not? then
    let mut eNew? := none
    let mut h₁    := default
    match_expr arg with
    | LE.le α _ a b =>
      let_expr Nat ← α | pure ()
      eNew? := some (mkNatLE (mkNatAdd b (mkNatLit 1)) a)
      h₁    := mkApp2 (mkConst ``Nat.not_le_eq) a b
    | GE.ge α _ a b =>
      let_expr Nat ← α | pure ()
      eNew? := some (mkNatLE (mkNatAdd a (mkNatLit 1)) b)
      h₁    := mkApp2 (mkConst ``Nat.not_ge_eq) a b
    | LT.lt α _ a b =>
      let_expr Nat ← α | pure ()
      eNew? := some (mkNatLE b a)
      h₁    := mkApp2 (mkConst ``Nat.not_lt_eq) a b
    | GT.gt α _ a b =>
      let_expr Nat ← α | pure ()
      eNew? := some (mkNatLE a b)
      h₁    := mkApp2 (mkConst ``Nat.not_gt_eq) a b
    | _ => pure ()
    let some eNew := eNew? | return none
    let some (eNew', h₂) ← simpCnstrPos? eNew | return (eNew, h₁)
    let h  := mkApp6 (mkConst ``Eq.trans [Level.one]) (mkSort Level.zero) e eNew eNew' h₁ h₂
    return some (eNew', h)
  else
    simpCnstrPos? e

def simpExpr? (input : Expr) : MetaM (Option (Expr × Expr)) := do
  let (e, ctx) ← toLinearExpr input
  let p  := e.toPoly
  let p' := p.norm
  let e' : LinearExpr := p'.toExpr
  if e' == e then
    return none
  let p := mkApp4 (mkConst ``Nat.Internal.Linear.Expr.eq_of_toNormPoly_eq) (← toContextExpr ctx) (toExpr e) (toExpr e') eagerReflBoolTrue
  let l ← e.toArith ctx
  let r ← e'.toArith ctx
  let h := mkExpectedPropHint p (mkNatEq l r)
  return some (r, h)

end Lean.Meta.Simp.Arith.Nat
