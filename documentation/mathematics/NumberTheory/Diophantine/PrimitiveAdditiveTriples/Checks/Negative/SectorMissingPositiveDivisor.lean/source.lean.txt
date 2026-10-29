/- Copyright (c) 2026 grwtsk contributors. MIT. Intended interface rejection.
This rejects omission of the positive-divisor hypothesis from the public
theorem. It does not assert that the degenerate d = 0 sum identity is false. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing

set_option autoImplicit false

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

example {R : Type*} [Ring R] (N d : ℕ) (W : ℕ → ℕ → ℕ → R) :
    commonDivisorWeightedMoment N d W =
      ∑ p ∈ additivePairs (N / d),
        W (d * p.1) (d * p.2) (d * (p.1 + p.2)) := by
  exact commonDivisorWeightedMoment_eq_scaled_sum N d W
