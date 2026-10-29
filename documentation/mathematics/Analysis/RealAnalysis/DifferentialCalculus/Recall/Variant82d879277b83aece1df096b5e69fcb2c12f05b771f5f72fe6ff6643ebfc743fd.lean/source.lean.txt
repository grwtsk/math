-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Foo.Variant8d04802d77ab57b2f07b03f51e9c4610c7ddf0a470c6f62a73c490a4781480ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d04802d77ab57b2f07b03f51e9c4610c7ddf0a470c6f62a73c490a4781480ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Foo.Variant8d04802d77ab57b2f07b03f51e9c4610c7ddf0a470c6f62a73c490a4781480ba","mathematical_subject":"Analysis.Calculus","original_sha256":"8d04802d77ab57b2f07b03f51e9c4610c7ddf0a470c6f62a73c490a4781480ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Recall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Recall
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Complex.Trigonometric


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Foo.Variant8d04802d77ab57b2f07b03f51e9c4610c7ddf0a470c6f62a73c490a4781480ba

set_option linter.style.setOption false
-- Remark: When the test is run by make/CI, this option is not set, so we set it here.
set_option pp.unicode.fun true
set_option autoImplicit true

/-
Motivating examples from the initial Zulip thread:
https://leanprover.zulipchat.com/#narrow/stream/270676-lean4/topic/recall.20command
-/

section
variable {𝕜 : Type _} [NontriviallyNormedField 𝕜]
variable {E : Type _} [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E]
variable {F : Type _} [AddCommGroup F] [Module 𝕜 F] [TopologicalSpace F]
recall HasFDerivAt (f : E → F) (f' : E →L[𝕜] F) (x : E) :=
  HasFDerivAtFilter f f' x (nhds x)
end

/--
error: value mismatch
  Complex.exp
has value
  id
but is expected to have value
  fun z ↦ (Complex.exp' z).lim
-/
#guard_msgs in recall Complex.exp : ℂ → ℂ := id

/--
error: value mismatch
  Real.pi
has value
  0
but is expected to have value
  2 * Classical.choose Real.exists_cos_eq_zero
-/
#guard_msgs in recall Real.pi : ℝ := 0

/-
Other example tests
-/

recall id (x : α) : α := x

/--
error: type mismatch
  @id
has type
  {α : Sort u_1} → α → α → ℕ : Type u_1
but is expected to have type
  {α : Sort u} → α → α : Sort (imax (u + 1) u)
-/
#guard_msgs in recall id (_x _y : α) : ℕ := 0

recall id (_x : α) : α

def foo := 22

recall foo := 22

recall foo : Nat

/--
error: value mismatch
  foo
has value
  23
but is expected to have value
  22
-/
#guard_msgs in recall foo := 23

recall Nat.add_comm (n m : Nat) : n + m = m + n

-- Caveat: the binder kinds are not checked
recall Nat.add_comm {n m : Nat} : n + m = m + n

-- https://leanprover.zulipchat.com/#narrow/stream/270676-lean4/topic/recall.20command/near/376648750
recall add_assoc {G : Type _} [AddSemigroup G] (a b c : G) : a + b + c = a + (b + c)
recall add_assoc

/-- error: unknown constant 'nonexistent' -/
#guard_msgs in recall nonexistent

axiom bar : Nat
/-- error: constant 'bar' has no defined value -/
#guard_msgs in recall bar := bar

recall List.cons_append (a : α) (as bs : List α) : (a :: as) ++ bs = a :: (as ++ bs) := rfl
