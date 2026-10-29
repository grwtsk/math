-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetArrayLitElems.Variant02168dff2c38a6b3bf53374eaa9608b82f445e7d7add67ddcd0be723dbd64bce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02168dff2c38a6b3bf53374eaa9608b82f445e7d7add67ddcd0be723dbd64bce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetArrayLitElems.Variant02168dff2c38a6b3bf53374eaa9608b82f445e7d7add67ddcd0be723dbd64bce","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"02168dff2c38a6b3bf53374eaa9608b82f445e7d7add67ddcd0be723dbd64bce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Cbv/BuiltinCbvSimprocs/Array.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
import Lean.Meta.Sym.Simp.SimpM
import Lean.Meta.Sym.LitValues
import Lean.Meta.Sym.InferType
import Init.CbvSimproc
import Lean.Meta.Tactic.Cbv.CbvSimproc
import Lean.Meta.Tactic.Cbv.Util
import Init.GetElem


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetArrayLitElems.Variant02168dff2c38a6b3bf53374eaa9608b82f445e7d7add67ddcd0be723dbd64bce

namespace Lean.Meta.Tactic.Cbv

/-- Extract elements from an array literal (`Array.mk` applied to a list literal). -/
def getArrayLitElems? (e : Expr) : Option <| Array Expr :=
  match_expr e with
  | Array.mk _ as => getListLitElems as
  | _ => none

/-- Reduce `#[...][n]` for literal arrays and literal `Nat` indices. -/
builtin_cbv_simproc cbv_eval simpArrayGetElem (@GetElem.getElem (Array _) Nat _ _ _ _ _ _) := fun e => do
  let_expr GetElem.getElem _ _ _ _ _ xs n _ := e | return .rfl
  let some elems := getArrayLitElems? xs | return .rfl
  let some idx := Sym.getNatValue? n | return .rfl
  if h : idx < elems.size then
    let result := elems[idx]
    return .step result (← Sym.mkEqRefl result)
  else
    return .rfl

/-- Reduce `#[...][n]?` for literal arrays and literal `Nat` indices. -/
builtin_cbv_simproc cbv_eval simpArrayGetElem? (@GetElem?.getElem? (Array _) Nat _ _ _ _ _) := fun e => do
  let_expr GetElem?.getElem? _ _ α _ _ xs n := e | return .rfl
  let some elems := getArrayLitElems? xs | return .rfl
  let some idx := Sym.getNatValue? n | return .rfl
  let sortLevel ← Sym.getLevel α
  let .succ u := sortLevel | return .rfl
  let result ←
    if h : idx < elems.size then
      Sym.share <| mkApp2 (mkConst ``Option.some [u]) α elems[idx]
    else
      Sym.share <| mkApp (mkConst ``Option.none [u]) α
  return .step result (← Sym.mkEqRefl result)

end Lean.Meta.Tactic.Cbv
