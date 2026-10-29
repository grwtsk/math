import GRWTSK.NumberTheory.FirstPrime

-- The expected type is specified separately from the implementation.
example : Nat.Prime 2 ∧ ∀ p : ℕ, Nat.Prime p → 2 ≤ p :=
  GRWTSK.NumberTheory.two_is_first_prime
example : Nat.Prime 2 := GRWTSK.NumberTheory.two_is_first_prime.1
example (p : ℕ) (hp : Nat.Prime p) : 2 ≤ p :=
  GRWTSK.NumberTheory.two_is_first_prime.2 p hp
-- Independent concrete refutation of a purported universal lower bound of three.
example (h : ∀ p : ℕ, Nat.Prime p → 3 ≤ p) : False := by
  have h32 : 3 ≤ 2 := h 2 Nat.prime_two
  exact (by decide : ¬ (3 ≤ 2)) h32

#check GRWTSK.NumberTheory.two_is_first_prime
#print axioms Nat.prime_two
#print axioms Nat.Prime.two_le
#print axioms GRWTSK.NumberTheory.two_is_first_prime
