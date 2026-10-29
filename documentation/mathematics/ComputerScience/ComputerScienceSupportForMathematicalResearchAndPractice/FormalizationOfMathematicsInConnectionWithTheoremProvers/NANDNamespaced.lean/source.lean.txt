-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NandExpr.Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NandExpr.Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc","mathematical_subject":"Foundations.Unclassified","original_sha256":"692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/NAND.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Boolean.Semantics

/-!
# Folder.Boolean.NAND

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: boolean.nand
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NandExpr.Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc

namespace Folder
namespace Boolean

inductive NandExpr where
  | var : Nat → NandExpr
  | nand : NandExpr → NandExpr → NandExpr
deriving DecidableEq, Repr

namespace NandExpr

def eval : NandExpr → Env → Bool
  | var n, ρ => ρ n
  | nand x y, ρ => !(eval x ρ && eval y ρ)

@[simp]
theorem eval_var (n : Nat) (ρ : Env) :
    (var n).eval ρ = ρ n :=
  rfl

@[simp]
theorem eval_nand (x y : NandExpr) (ρ : Env) :
    (nand x y).eval ρ = !(x.eval ρ && y.eval ρ) :=
  rfl

end NandExpr

def nandNot (x : NandExpr) : NandExpr :=
  NandExpr.nand x x

def nandAnd (x y : NandExpr) : NandExpr :=
  nandNot (NandExpr.nand x y)

def nandOr (x y : NandExpr) : NandExpr :=
  NandExpr.nand (nandNot x) (nandNot y)

def nandTrue : NandExpr :=
  NandExpr.nand (NandExpr.var 0) (nandNot (NandExpr.var 0))

def nandFalse : NandExpr :=
  nandNot nandTrue

def nandXor (x y : NandExpr) : NandExpr :=
  nandAnd (nandOr x y) (nandNot (nandAnd x y))

@[simp]
theorem eval_nandNot (x : NandExpr) (ρ : Env) :
    (nandNot x).eval ρ = ! x.eval ρ := by
  cases hx : x.eval ρ <;> simp [nandNot, hx]

@[simp]
theorem eval_nandAnd (x y : NandExpr) (ρ : Env) :
    (nandAnd x y).eval ρ = (x.eval ρ && y.eval ρ) := by
  cases hx : x.eval ρ <;> cases hy : y.eval ρ <;>
    simp [nandAnd, nandNot, hx, hy]

@[simp]
theorem eval_nandOr (x y : NandExpr) (ρ : Env) :
    (nandOr x y).eval ρ = (x.eval ρ || y.eval ρ) := by
  cases hx : x.eval ρ <;> cases hy : y.eval ρ <;>
    simp [nandOr, nandNot, hx, hy]

@[simp]
theorem eval_nandTrue (ρ : Env) :
    nandTrue.eval ρ = true := by
  cases h : ρ 0 <;> simp [nandTrue, nandNot, h]

@[simp]
theorem eval_nandFalse (ρ : Env) :
    nandFalse.eval ρ = false := by
  simp [nandFalse]

@[simp]
theorem eval_nandXor (x y : NandExpr) (ρ : Env) :
    (nandXor x y).eval ρ = Bool.xor (x.eval ρ) (y.eval ρ) := by
  cases hx : x.eval ρ <;> cases hy : y.eval ρ <;>
    simp [nandXor, hx, hy]

end Boolean
end Folder
