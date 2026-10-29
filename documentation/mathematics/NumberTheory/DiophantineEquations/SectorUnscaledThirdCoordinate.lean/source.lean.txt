/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

-- The third coordinate is d*(u+v), retaining a+b=c after scaling.
-- Using only u+v gives weight eight instead of the correct sixteen.
example : commonDivisorWeightedMoment 5 2
    (fun a b c => (a : ℤ) * (b : ℤ) * (c : ℤ)) =
      ∑ p ∈ additivePairs (5 / 2),
        ((2 * p.1 : ℕ) : ℤ) * ((2 * p.2 : ℕ) : ℤ) *
          ((p.1 + p.2 : ℕ) : ℤ) := by
  have h : commonDivisorWeightedMoment 5 2
      (fun a b c => (a : ℤ) * (b : ℤ) * (c : ℤ)) = 16 := by
    decide
  exact h
