import GRWTSK.NumberTheory.Moebius.PrimitiveIdentification
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.ProofHorizon.CorkscrewChamberCap

example : (∑ m ∈ ({1, 2} : Finset ℕ), ∑ n ∈ ({1, 2} : Finset ℕ),
    if m ≠ n then moebiusReal m * moebiusReal n else 0) = (-1 : ℝ) := by
  norm_num [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_two]
