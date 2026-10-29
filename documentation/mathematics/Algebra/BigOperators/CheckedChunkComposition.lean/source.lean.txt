/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks

set_option autoImplicit false

/-!
# Composition of adjacent checked finite chunks

Two successful adjacent open-chain chunks compose only at the exact shared cursor.
The signed local totals are added; no absolute value, closure edge, or omitted cell
is introduced. This is a pure finite theorem, not execution machinery.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Algebra.BigOperators.CheckedChunkComposition

open CheckedContiguousBlocks

/-- Adjacent successful chunks compose with complete predicate coverage and signed sum. -/
theorem chunk_add {test : ℕ → Bool} {term : ℕ → ℤ}
    {start a b : ℕ} {x y : ℤ}
    (hx : chunk test term start a = some x)
    (hy : chunk test term (start+a) b = some y) :
    chunk test term start (a+b) = some (x+y) := by
  rw [chunk_eq_some_iff] at hx hy ⊢
  constructor
  · simpa only [allRange_add,hx.1,hy.1,Bool.true_and]
  · simpa only [sumRange_add,hx.2,hy.2]

/-- The second cursor cannot be moved without proving the corresponding equality. -/
theorem chunk_add_zero_right {test : ℕ → Bool} {term : ℕ → ℤ}
    {start a b : ℕ} {x : ℤ}
    (hx : chunk test term start a = some x)
    (hy : chunk test term (start+a) b = some 0) :
    chunk test term start (a+b) = some x := by
  simpa using chunk_add hx hy

end GRWTSK.Algebra.BigOperators.CheckedChunkComposition
