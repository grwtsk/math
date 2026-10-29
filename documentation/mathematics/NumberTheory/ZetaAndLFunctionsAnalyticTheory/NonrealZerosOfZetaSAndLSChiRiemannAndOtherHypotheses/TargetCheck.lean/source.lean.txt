import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
Nonterminal engineering check of the public target's literal definition. This
proves only a reflexive equality of statements, not the Riemann hypothesis.
-/

example : RiemannHypothesis =
    (∀ (s : Complex) (_ : riemannZeta s = 0)
      (_ : ¬∃ n : Nat, s = -2 * (n + 1)) (_ : s ≠ 1), s.re = 1 / 2) := rfl
