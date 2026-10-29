/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

-- Absolute values erase cancellation: the right side is seven, not five.
example : primitiveMoment 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) =
    ∑ d ∈ Finset.Icc 1 4,
      |ArithmeticFunction.moebius d| *
        commonDivisorMoment 4 d (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) := by
  have h : primitiveMoment 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 5 := by
    decide
  exact h
