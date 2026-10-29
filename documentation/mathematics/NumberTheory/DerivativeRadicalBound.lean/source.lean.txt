import GRWTSK.NumberTheory.Polynomial.DerivativeRadicalBound

open Polynomial

example {k : Type*} [Field k] [DecidableEq k] {a b c : k[X]}
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0)
    (hab : IsCoprime a b) (hsum : a + b + c = 0)
    (hderivative : derivative a ≠ 0) :
    c.natDegree + 1 ≤ (UniqueFactorizationMonoid.radical (a * b * c)).natDegree :=
  (GRWTSK.NumberTheory.Polynomial.degree_bounds_of_derivative_ne_zero
    ha hb hc hab hsum hderivative).2.2
