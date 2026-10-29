-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyMaybe.Variant67af2e3569edc40e31854e7374c799ee7f37863fd0d5e9ecbed13ecb036bc524","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67af2e3569edc40e31854e7374c799ee7f37863fd0d5e9ecbed13ecb036bc524","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MyMaybe.Variant67af2e3569edc40e31854e7374c799ee7f37863fd0d5e9ecbed13ecb036bc524","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"67af2e3569edc40e31854e7374c799ee7f37863fd0d5e9ecbed13ecb036bc524","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/DeriveToExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyMaybe.Variant67af2e3569edc40e31854e7374c799ee7f37863fd0d5e9ecbed13ecb036bc524

namespace DeriveToExprTests
open Lean

-- set_option trace.Elab.Deriving.toExpr true

inductive MyMaybe (α : Type u)
  | none | some (x : α)
  deriving ToExpr

run_cmd Elab.Command.liftTermElabM do
  guard <| "MyMaybe.some 2" == s!"{← Lean.PrettyPrinter.ppExpr <| toExpr (MyMaybe.some 2)}"

run_cmd Elab.Command.liftTermElabM do
  Meta.check <| toExpr (MyMaybe.some 2)

deriving instance ToExpr for ULift

run_cmd Elab.Command.liftTermElabM do
  let e := toExpr (MyMaybe.none : MyMaybe (ULift.{1,0} Nat))
  let ty := toTypeExpr (MyMaybe (ULift.{1,0} Nat))
  Meta.check e
  Meta.check ty
  guard <| ← Meta.isDefEq (← Meta.inferType e) ty
  guard <| (← Meta.getLevel ty) == Level.zero.succ.succ

run_cmd Elab.Command.liftTermElabM do
  Meta.check <| toExpr <| (MyMaybe.some (ULift.up 2) : MyMaybe (ULift.{1,0} Nat))

deriving instance ToExpr for List

inductive Foo
  | l (x : List Foo)
  deriving ToExpr

run_cmd Elab.Command.liftTermElabM <|
  Meta.check <| toExpr (Foo.l [Foo.l [], Foo.l [Foo.l []]])

/--
error: failed to synthesize
  ToExpr (Bool → Nat)

Additional diagnostic information may be available using the `set_option diagnostics true` command.
-/
#guard_msgs in
inductive Bar
  | func (x : Bool → Nat)
  deriving ToExpr

def boolFunHelper (x y : α) (b : Bool) : α := if b then x else y

instance {α : Type u} [ToExpr α] [ToLevel.{u+1}] : ToExpr (Bool → α) where
  toExpr g :=
    mkApp3 (.const ``boolFunHelper [toLevel.{u+1}])
      (toTypeExpr α) (toExpr <| g true) (toExpr <| g false)
  toTypeExpr := .forallE `x (.const ``Bool []) (toTypeExpr α) .default

deriving instance ToExpr for Bar

example : True := by
  run_tac do
    let f : Bool → Nat | false => 0 | true => 1
    let e := toExpr <| Bar.func f
    Meta.check e
    guard <| ← Meta.isDefEq (← Meta.inferType e) (toTypeExpr Bar)
  trivial

mutual
inductive A
  | a
deriving ToExpr
inductive B
  | b
deriving ToExpr
end

run_cmd Elab.Command.liftTermElabM do
  Meta.check <| toExpr A.a
  Meta.check <| toExpr B.b

mutual
inductive C
  | c (x : List D)
deriving ToExpr
inductive D
  | b (y : List C)
deriving ToExpr
end

-- An incomplete `ToExpr` instance just to finish deriving `ToExpr` for `Expr`.
instance : ToExpr MData where
  toExpr _ := mkConst ``MData.empty
  toTypeExpr := mkConst ``MData

deriving instance ToExpr for FVarId
deriving instance ToExpr for MVarId
deriving instance ToExpr for LevelMVarId
deriving instance ToExpr for Level
deriving instance ToExpr for BinderInfo
deriving instance ToExpr for Literal
deriving instance ToExpr for Expr

run_cmd Elab.Command.liftTermElabM do
  Meta.check <| toExpr <| toExpr [1,2,3]

end DeriveToExprTests
