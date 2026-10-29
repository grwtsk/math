-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsAddInst.Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsAddInst.Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/Reify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.LinearM
import Lean.Meta.Tactic.Grind.Arith.Linear.Var

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsAddInst.Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a

public section
namespace Lean.Meta.Grind.Arith.Linear

def isAddInst (struct : Struct) (inst : Expr) : Bool :=
  isSameExpr struct.addFn.appArg! inst
def isZeroInst (struct : Struct) (inst : Expr) : Bool :=
  isSameExpr struct.zero.appArg! inst
def isSMulIntInst (struct : Struct) (inst : Expr) : Bool :=
  isSameExpr struct.zsmulFn.appArg! inst
def isSMulNatInst (struct : Struct) (inst : Expr) : Bool :=
  isSameExpr struct.nsmulFn.appArg! inst
def isHomoMulInst (struct : Struct) (inst : Expr) : Bool :=
  if let some homomulFn := struct.homomulFn? then isSameExpr homomulFn inst else false
def isHSMulIntInst (struct : Struct) (inst : Expr) : Bool :=
  if let some smulFn := struct.zsmulFn? then isSameExpr smulFn.appArg! inst else false
def isHSMulNatInst (struct : Struct) (inst : Expr) : Bool :=
  if let some smulFn := struct.nsmulFn? then isSameExpr smulFn.appArg! inst else false
def isSubInst (struct : Struct) (inst : Expr) : Bool :=
  isSameExpr struct.subFn.appArg! inst
def isNegInst (struct : Struct) (inst : Expr) : Bool :=
  isSameExpr struct.negFn.appArg! inst

def reportInstIssue (e : Expr) : GoalM Unit := do
  reportIssue! "`grind linarith` term with unexpected instance{indentExpr e}"

private def assertNatCastNonneg (a : Expr) : LinearM Unit := do
  let s ← getStruct
  let h := mkApp8 (mkConst ``Grind.OrderedRing.natCast_nonneg [s.u]) s.type s.ringInst?.get!
    s.leInst?.get! s.ltInst?.get! s.lawfulOrderLTInst?.get! s.isPreorderInst?.get! s.orderedRingInst?.get! a
  addNewRawFact h (← inferType h) (← getGeneration a) (.ematch (.decl ``Grind.OrderedRing.natCast_nonneg)) .other

/--
Converts a Lean `IntModule` expression `e` into a `LinExpr`

If `skipVar` is `true`, then the result is `none` if `e` is not an interpreted `IntModule` term.
We use `skipVar := false` when processing inequalities, and `skipVar := true` for equalities and disequalities
-/
partial def reify? (e : Expr) (skipVar : Bool) (generation : Nat := 0) : LinearM (Option LinExpr) := do
  match_expr e with
  | HAdd.hAdd _ _ _ i a b =>
    if isAddInst (← getStruct) i then return some (.add (← go a) (← go b)) else asTopVar e
  | HSub.hSub _ _ _ i a b =>
    if isSubInst (← getStruct) i then return some (.sub (← go a) (← go b)) else asTopVar e
  | HSMul.hSMul _ _ _ i a b =>
    let some r ← processSMul i a b | asTopVar e
    return some r
  | Neg.neg _ i a =>
    if isNegInst (← getStruct) i then return some (.neg (← go a)) else asTopVar e
  | Zero.zero _ i =>
    if isZeroInst (← getStruct) i then return some .zero else asTopVar e
  | OfNat.ofNat _ _ _ =>
    if (← isOfNatZero e) then return some .zero else asTopVar e
  | NatCast.natCast _ _ a =>
    if (← getStruct).orderedRingInst?.isSome then
      assertNatCastNonneg a
    toTopVar e
  | _ => toTopVar e
where
  toVar (e : Expr) : LinearM LinExpr := do
    if (← alreadyInternalized e) then
      return .var (← mkVar e)
    else
      internalize e generation
      return .var (← mkVar e)
  asVar (e : Expr) : LinearM LinExpr := do
    reportInstIssue e
    toVar e
  toTopVar (e : Expr) : LinearM (Option LinExpr) := do
    if skipVar then
      return none
    else
      return some (← toVar e)
  asTopVar (e : Expr) : LinearM (Option LinExpr) := do
    reportInstIssue e
    if skipVar then
      return none
    else
      return some (← asVar e)
  isOfNatZero (e : Expr) : LinearM Bool := do
    isDefEqD e (← getStruct).ofNatZero
  processSMul (i a b : Expr) : LinearM (Option LinExpr) := do
    if isSMulIntInst (← getStruct) i then
      let some k ← getIntValue? a | return none
      return some (.intMul k (← go b))
    else if isSMulNatInst (← getStruct) i then
      let some k ← getNatValue? a | return none
      return some (.natMul k (← go b))
    return none
  go (e : Expr) : LinearM LinExpr := do
    match_expr e with
    | HAdd.hAdd _ _ _ i a b =>
      if isAddInst (← getStruct) i then return .add (← go a) (← go b) else asVar e
    | HSub.hSub _ _ _ i a b =>
      if isSubInst (← getStruct) i then return .sub (← go a) (← go b) else asVar e
    | HSMul.hSMul _ _ _ i a b =>
      let some r ← processSMul i a b | asVar e
      return r
    | Neg.neg _ i a =>
      if isNegInst (← getStruct) i then return .neg (← go a) else asVar e
    | Zero.zero _ i =>
      if isZeroInst (← getStruct) i then return .zero else asVar e
    | OfNat.ofNat _ _ _ =>
      if (← isOfNatZero e) then return .zero else toVar e
    | NatCast.natCast _ _ a =>
      if (← getStruct).orderedRingInst?.isSome then
        assertNatCastNonneg a
      toVar e
    | _ => toVar e

end  Lean.Meta.Grind.Arith.Linear
