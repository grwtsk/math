-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ctx.Variant3f7bfd9e83c86d68815ec2658a483d7653be04302810e7095457449e7361f07e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f7bfd9e83c86d68815ec2658a483d7653be04302810e7095457449e7361f07e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Ctx.Variant3f7bfd9e83c86d68815ec2658a483d7653be04302810e7095457449e7361f07e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3f7bfd9e83c86d68815ec2658a483d7653be04302810e7095457449e7361f07e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Determinant/Bird/Meta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Paul Cadman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Cadman
-/
module

public import Mathlib.LinearAlgebra.Matrix.Determinant.Bird.Defs
public meta import Mathlib.Util.Qq
public import Mathlib.Tactic.Ring

/-!
# Reification support for the determinant tactic

This file contains the meta-level parser, `refiyBirdDet`,  used by
`normalizeBirdDet` to turn `BirdDet.birdDet` calls into the context used by the
certificate-chain evaluator.

## Main definitions

- `reifyBirdDet`: Parse a call to `BirdDet.birdDet`.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ctx.Variant3f7bfd9e83c86d68815ec2658a483d7653be04302810e7095457449e7361f07e

public meta section

open Lean Meta Qq
open Mathlib.Tactic.Ring

namespace Mathlib.Tactic.Determinant

/-- Construct a `CommSemiring` instance expression from a `CommRing` instance expression -/
abbrev commSemiringOfCommRing {u : Level} {α : Q(Type u)}
    (rα : Q(CommRing $α)) : Q(CommSemiring $α) :=
  q(CommRing.toCommSemiring (α := $α) (s := $rα))

/-- Parse an array literal into an array of element expressions.

Compared to `getArrayLit?`, this also performs `whnf`.
-/
def arrayLiteral? (e : Expr) : MetaM (Option (Array Expr)) := do
  if let some elems ← getArrayLit? e then return some elems
  let e ← whnf e
  match_expr e with
  | Array.mk _ xs => getListLit? xs
  | _ => return none

/-- The context for a certificate evaluation. -/
structure Ctx {u : Level} {α : Q(Type u)} (rα : Q(CommRing $α)) where
  /-- `Ring` evaluation cache for the scalar ring. -/
  cα : Common.Cache (commSemiringOfCommRing rα)
  /-- Proof-producing ring arithmetic. -/
  rc : Common.RingCompute RatCoeff (commSemiringOfCommRing rα)
  /-- The dimension of the reified matrix -/
  dimension : ℕ
  /-- The quoted dimension expression from the reified determinant call. -/
  dimensionLit : Q(ℕ)
  /-- The array of matrix entries as an Expr -/
  arrayExpr : Q(Array $α)
  /-- An array of matrix entry `Expr`s` -/
  arrayEntries : Array Q($α)

/-- The ring instance and evaluator context parsed by `reifyBirdDet`. -/
structure ReifiedBirdDet where
  /-- The universe level associated with the `birdDet` call -/
  {u : Level}
  /-- The type of a matrix entry -/
  {α : Q(Type u)}
  /-- The `CommRing` instance for matrix entries -/
  rα : Q(CommRing $α)
  /-- The evaluator context for the parsed determinant expression. -/
  ctx : Ctx rα

/-- Recognise a `birdDet` call and reify it into an evaluator context. -/
def reifyBirdDet (e : Expr) : MetaM ReifiedBirdDet := do
  let e ← instantiateMVars e
  let ⟨_, α, _⟩ ← inferTypeQ' e
  let_expr BirdDet.birdDet _ birdRingInst dimensionExpr arrayExpr := e
    | throwError "expected an application of `birdDet, got {e}"
  let some rα ← checkTypeQ birdRingInst q(CommRing $α)
    | throwError "expected `birdDet` ring instance to have type {q(CommRing $α)}"
  let dimensionExpr ← whnf dimensionExpr
  let some dimensionLit ← checkTypeQ dimensionExpr q(ℕ)
    | throwError "expected the dimension to have type `ℕ`, got {dimensionExpr}"
  let some dimension ← getNatValue? dimensionLit
    | throwError "expected the dimension to be a `ℕ` literal, got {dimensionLit}"
  let some arrayExpr ← checkTypeQ arrayExpr q(Array $α)
    | throwError "expected the array to have type {q(Array $α)}"
  let some arrayEntries ← arrayLiteral? arrayExpr
    | throwError "expected an array literal matrix, got {arrayExpr}"
  unless arrayEntries.size == dimension * dimension do
    throwError "matrix size mismatch: array has {arrayEntries.size} entries, \
      expected {dimension * dimension}"
  let arrayEntries ← arrayEntries.mapM fun entry => do
    let some entry ← checkTypeQ entry α
      | throwError "expected array entry to have type {α}"
    return entry
  let sα := commSemiringOfCommRing rα
  let cα : Common.Cache sα := {
    rα := some rα
    dsα := none
    czα := none
  }
  return {
    rα
    ctx := {
      cα
      rc := ringCompute cα
      dimension
      dimensionLit
      arrayExpr
      arrayEntries
    }
  }

end Mathlib.Tactic.Determinant

end
