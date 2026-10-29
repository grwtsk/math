-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ThrowFailedToEval.Variant6f007676dc7ddab5a6569e7b42861aba90c0e2b4454e74b4f07a473049a7986f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f007676dc7ddab5a6569e7b42861aba90c0e2b4454e74b4f07a473049a7986f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ThrowFailedToEval.Variant6f007676dc7ddab5a6569e7b42861aba90c0e2b4454e74b4f07a473049a7986f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6f007676dc7ddab5a6569e7b42861aba90c0e2b4454e74b4f07a473049a7986f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/Qq/ForLean/ReduceEval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean.Meta.ReduceEval


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ThrowFailedToEval.Variant6f007676dc7ddab5a6569e7b42861aba90c0e2b4454e74b4f07a473049a7986f

public section
open Lean Meta

namespace Lean.Meta

def throwFailedToEval (e : Expr) : MetaM α :=
  throwError "reduceEval: failed to evaluate argument{indentExpr e}"

partial def evalList [ReduceEval α] (e : Expr) : MetaM (List α) := do
  let e ← whnf e
  let .const c _ := e.getAppFn | throwFailedToEval e
  let nargs := e.getAppNumArgs
  match c, nargs with
    | ``List.nil, 1 => pure []
    | ``List.cons, 3 => return (← reduceEval (e.getArg! 1)) :: (← evalList (e.getArg! 2))
    | _, _ => throwFailedToEval e

instance [ReduceEval α] : ReduceEval (List α) := ⟨evalList⟩

instance [NeZero n] : ReduceEval (Fin n) where
  reduceEval := fun e => do
    let e ← whnf e
    if e.isAppOfArity ``Fin.mk 3 then
      return Fin.ofNat _ (← reduceEval (e.getArg! 1))
    else
      throwFailedToEval e

instance {n : Nat} : ReduceEval (BitVec n) where
  reduceEval := fun e => do
    let e ← whnf e
    if e.isAppOfArity ``BitVec.ofFin 2 then
      have : 2^n - 1 + 1 = 2^n := Nat.sub_one_add_one_eq_of_pos (Nat.two_pow_pos n)
      let _ : ReduceEval (Fin (2^n)) := this ▸ (inferInstanceAs <| ReduceEval (Fin (2^n - 1 + 1)))
      pure ⟨(← reduceEval (e.getArg! 1))⟩
    else
      throwFailedToEval e

instance : ReduceEval UInt64 where
  reduceEval := fun e => do
    let e ← whnf e
    if e.isAppOfArity ``UInt64.ofBitVec 1 then
      pure ⟨(← reduceEval (e.getArg! 0))⟩
    else
      throwFailedToEval e

instance : ReduceEval USize where
  reduceEval := fun e => do
    let e ← whnf e
    if e.isAppOfArity ``USize.ofBitVec 1 then
      let a ← whnf (e.getArg! 0)
      if a.isAppOfArity ``Fin.mk 3 then
        return USize.ofNat (← reduceEval (a.getArg! 1))
    throwFailedToEval e

instance : ReduceEval Bool where
  reduceEval := fun e => do
    let e ← whnf e
    if e.isAppOf ``true then
      pure true
    else if e.isAppOf ``false then
      pure false
    else
      throwFailedToEval e

instance : ReduceEval BinderInfo where
  reduceEval := fun e => do
    match (← whnf e).constName? with
    | some ``BinderInfo.default => pure .default
    | some ``BinderInfo.implicit => pure .implicit
    | some ``BinderInfo.strictImplicit => pure .strictImplicit
    | some ``BinderInfo.instImplicit => pure .instImplicit
    | _ => throwFailedToEval e

instance : ReduceEval Literal where
  reduceEval := fun e => do
    let e ← whnf e
    if e.isAppOfArity ``Literal.natVal 1 then
      return .natVal (← reduceEval (e.getArg! 0))
    else if e.isAppOfArity ``Literal.strVal 1 then
      return .strVal (← reduceEval (e.getArg! 0))
    else
      throwFailedToEval e

instance : ReduceEval MVarId where
  reduceEval e := do
    let e ← whnf e
    if e.isAppOfArity ``MVarId.mk 1 then
      return ⟨← reduceEval (e.getArg! 0)⟩
    else
      throwFailedToEval e

instance : ReduceEval LevelMVarId where
  reduceEval e := do
    let e ← whnf e
    if e.isAppOfArity ``LevelMVarId.mk 1 then
      return ⟨← reduceEval (e.getArg! 0)⟩
    else
      throwFailedToEval e

instance : ReduceEval FVarId where
  reduceEval e := do
    let e ← whnf e
    if e.isAppOfArity ``FVarId.mk 1 then
      return ⟨← reduceEval (e.getArg! 0)⟩
    else
      throwFailedToEval e
