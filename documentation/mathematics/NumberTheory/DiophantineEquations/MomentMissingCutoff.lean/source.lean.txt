/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

-- The coprime square has eleven pairs; the additive cutoff retains five.
example : (∑ p ∈ (Finset.Icc 1 4).product (Finset.Icc 1 4),
    if Nat.Coprime p.1 p.2 then (1 : ℤ) else 0) =
    primitiveMoment 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) := by
  have h : (∑ p ∈ (Finset.Icc 1 4).product (Finset.Icc 1 4),
      if Nat.Coprime p.1 p.2 then (1 : ℤ) else 0) = 11 := by
    decide
  exact h
