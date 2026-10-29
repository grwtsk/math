-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEvalExpr.Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkEvalExpr.Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Reflect/ReifiedBVExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module
prelude
public import Lean.Meta.Tactic.BVDecide.Reflect.Basic
public import Std.Tactic.BVDecide.Reflect
import Lean.Meta.LitValues

/-!
Provides the logic for reifying `BitVec` expressions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEvalExpr.Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b

namespace Lean.Meta.Tactic.BVDecide

open Std.Tactic.BVDecide
open Lean.Meta

namespace ReifiedBVExpr

/--
Build `BVExpr.eval atoms expr` where `atoms` is the assignment stored in the monad.
-/
public def mkEvalExpr (w : Nat) (expr : Expr) : M Expr := do
  return mkApp3 (mkConst ``BVExpr.eval) (toExpr w) (← M.atomsAssignment) expr

public def mkBVRefl (w : Nat) (expr : Expr) : Expr :=
  mkApp2
   (mkConst ``Eq.refl [1])
   (mkApp (mkConst ``BitVec) (toExpr w))
   expr

/--
Register `e` as an atom of `width` that might potentially be `synthetic`.
-/
public def mkAtom (e : Expr) (width : Nat) (synthetic : Bool) : M ReifiedBVExpr := do
  let ident ← M.lookup e width synthetic
  let expr := mkApp2 (mkConst ``BVExpr.var) (toExpr width) (toExpr ident)
  -- This is safe because this proof always holds definitionally.
  let proof := pure none
  return ⟨width, .var ident, expr, proof, expr⟩

/--
Parse `expr` as a `Nat` or `BitVec` constant depending on `ty`.
-/
public def getNatOrBvValue? (ty : Expr) (expr : Expr) : M (Option Nat) := do
  match_expr ty with
  | Nat =>
    getNatValue? expr
  | BitVec _ =>
    let some ⟨_, distance⟩ ← getBitVecValue? expr | return none
    return some distance.toNat
  | _ => return none

/--
Construct an uninterpreted `BitVec` atom from `x`, potentially `synthetic`.
-/
public def bitVecAtom (x : Expr) (synthetic : Bool) : M (Option ReifiedBVExpr) := do
  let t ← instantiateMVars (← whnfR (← inferType x))
  let_expr BitVec widthExpr := t | return none
  let some width ← getNatValue? widthExpr | return none
  let atom ← mkAtom x width synthetic
  return some atom

/--
Build a reified version of the constant `val`.
-/
public def mkBVConst (val : BitVec w) : M ReifiedBVExpr := do
  let bvExpr : BVExpr w := .const val
  let expr := mkApp2 (mkConst ``BVExpr.const) (toExpr w) (toExpr val)
  -- This is safe because this proof always holds definitionally.
  let proof := pure none
  return ⟨w, bvExpr, toExpr val, proof, expr⟩

end ReifiedBVExpr

end Lean.Meta.Tactic.BVDecide
