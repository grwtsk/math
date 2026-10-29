-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIntThms.Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ToIntThms.Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Cutsat/ToIntInfo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Util
import Lean.Meta.LitValues

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIntThms.Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c

public section
namespace Lean.Meta.Grind.Arith.Cutsat
open Lean Grind

/--
Theorems for operators that have support for `i.wrap` over `i.wrap` simplification.
Currently only addition and multiplication have `wrap` cancellation theorems
-/
structure ToIntThms where
  /--
  Basic theorem of the form
  ```
  toInt a = a' → toInt b = b' → toInt (a ⊞ b) = i.wrap (a' ⊞ b')`
  ```
  -/
  c?    : Option Expr := none
  /--
  Left-right `wrap` cancellation theorem of the form
  ```
  toInt a = i.wrap a' → toInt b = i.wrap b' → toInt (a ⊞ b) = i.wrap (a' ⊞ b')
  ```
  -/
  c_ww? : Option Expr := none
  /--
  Left `wrap` cancellation theorem of the form
  ```
  toInt a = i.wrap a' → toInt b = b' → toInt (a ⊞ b) = i.wrap (a' ⊞ b')
  ```
  -/
  c_wl? : Option Expr := none
  /--
  Right `wrap` cancellation theorem of the form
  ```
  toInt a = a' → toInt b = i.wrap b' → toInt (a ⊞ b) = i.wrap (a' ⊞ b')
  ```
  -/
  c_wr? : Option Expr := none
  deriving Inhabited

structure SymbolicBound where
  val : Expr
  -- cached int value if `val` is a numeric
  ival? : Option Int
  deriving Inhabited

def SymbolicBound.isNumeral (b : SymbolicBound) : Bool :=
  b.ival?.isSome

/-- Similar to `IntInterval`, but with symbolic bounds. -/
inductive SymbolicIntInterval : Type where
  | co (lo hi : SymbolicBound)
  | ci (lo : SymbolicBound)
  | io (hi : SymbolicBound)
  | ii
  deriving Inhabited

def SymbolicIntInterval.isFinite (i : SymbolicIntInterval) : Bool :=
  match i with
  | .co _ _ => true
  | .ci _ | .io _ | .ii => false

def SymbolicIntInterval.lo? (i : SymbolicIntInterval) : Option SymbolicBound :=
  match i with
  | .co lo _ | .ci lo => some lo
  | .io _ | .ii => none

def SymbolicIntInterval.hi? (i : SymbolicIntInterval) : Option SymbolicBound :=
  match i with
  | .co _ hi | .io hi => some hi
  | .ci _ | .ii => none

def SymbolicIntInterval.wrap (i : SymbolicIntInterval) (x : Expr) : MetaM Expr := do
  match i with
  | .co lo hi =>
    if let some lo' := lo.ival? then
      if let some hi' := hi.ival? then
        if let some x ← getIntValue? x then
          return mkIntLit ((x - lo') % (hi' - lo') + lo')
        else if lo' == 0 then
          return mkIntMod x hi.val
        else
          return mkIntAdd (mkIntMod (mkIntSub x (mkIntLit lo')) (mkIntLit (hi' - lo'))) (mkIntLit lo')
      if lo' == 0 then
        return mkIntMod x hi.val
    return mkIntAdd (mkIntMod (mkIntSub x lo.val) (mkIntSub hi.val lo.val)) lo.val
  | .ci _ => throwError "`grind` internal error, `.ci` interval support has not been implemented yet"
  | .io _ => throwError "`grind` internal error, `.io` interval support has not been implemented yet"
  | .ii => return x

structure ToIntInfo where
  id        : Nat
  type      : Expr
  u         : Level
  toIntInst : Expr
  rangeExpr : Expr
  range     : SymbolicIntInterval
  toInt     : Expr
  wrap      : Expr
  -- theorem `of_eq_wrap_co_0` if `range == .co 0 hi`
  ofWrap0?  : Option Expr
  ofEq      : Expr
  ofDiseq   : Expr
  lowerThm? : Option Expr
  upperThm? : Option Expr
  -- Remark: we initialize the following fields on demand
  ofLE?     : Option (Option Expr) := none
  ofNotLE?  : Option (Option Expr) := none
  ofLT?     : Option (Option Expr) := none
  ofNotLT?  : Option (Option Expr) := none
  addThms?  : Option ToIntThms := none
  mulThms?  : Option ToIntThms := none
  subThm?   : Option (Option Expr) := none
  negThm?   : Option (Option Expr) := none
  divThm?   : Option (Option Expr) := none
  modThm?   : Option (Option Expr) := none
  powThm?   : Option (Option Expr) := none
  zeroThm?  : Option (Option Expr) := none
  ofNatThm? : Option (Option Expr) := none
  deriving Inhabited

/--
For each term `e` of type `α` which implements the `ToInt α i` class,
we store its corresponding `Int` term `eToInt`, a proof `he : toInt e = eToInt`,
and the type `α`.
-/
structure ToIntTermInfo where
  eToInt : Expr
  α      : Expr
  he     : Expr

end Lean.Meta.Grind.Arith.Cutsat
