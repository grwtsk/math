import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: a finite-height bound is not an all-height bound.
example (ε : ℝ) (h : ∃ K : ℝ, 0 < K ∧ ∀ t : PrimitiveAdditiveTriple,
    t.c ≤ 100 → (t.c : ℝ) ≤ K * Real.rpow (t.radical : ℝ) (1 + ε)) :
    ABCBound ε := by exact h
