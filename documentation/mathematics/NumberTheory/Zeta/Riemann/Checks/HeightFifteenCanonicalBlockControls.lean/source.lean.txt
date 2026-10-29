/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCanonicalBlockClosure

set_option autoImplicit false

/-!
# Controls for local claims, signed orientation, and exact exhaustion

These controls reuse the unexecuted local block scripts. They do not provide
independent acceptance and do not run the large computations again.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenCanonicalBlockControls

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition HeightFifteenCanonicalBlocks
open HeightFifteenCanonicalBlockClaims

/-- The unique reported nonzero local contribution cannot be relabeled zero. -/
theorem block04_zero_rejected :
    chunk checkedTest directTerm 256 64 ≠ some 0 := by
  rw [block04]
  decide

/-- A zero block cannot be relabeled with the contour's total. -/
theorem block00_one_rejected :
    chunk checkedTest directTerm 0 64 ≠ some 1 := by
  rw [block00]
  decide

/-- The last 11 cells remain an explicit checked suffix, not a vacuous omission. -/
theorem final_suffix_present :
    chunk checkedTest directTerm 2368 11 = some 0 :=
  block37

/-- Failure and a successful zero contribution remain distinct. -/
theorem none_ne_successful_zero :
    (none : Option ℤ) ≠ some 0 := by decide

/-- The signed total is inherited from the exact claim vector. -/
theorem claim_sum_one : expected.sum = 1 :=
  expected_shape.2

/-- Changing only the nonzero claim changes the claim list. -/
theorem changed_claims_rejected :
    expected ≠ List.replicate 38 0 := by decide

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenCanonicalBlockControls
