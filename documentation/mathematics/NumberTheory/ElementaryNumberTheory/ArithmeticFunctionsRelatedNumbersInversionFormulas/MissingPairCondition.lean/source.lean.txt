import GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy
open GRWTSK.RiemannHypothesis.CCC
example {P B : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime)
    (hd : Disjoint P B) {T u : ℝ} (huT : u ≤ T) :
    primeNoteCascade (P ∪ B) u = primeNoteCascade P u-primeBlockEcho P B u := by
  exact cascade_union_eq_sub_echo hP hB hd huT
