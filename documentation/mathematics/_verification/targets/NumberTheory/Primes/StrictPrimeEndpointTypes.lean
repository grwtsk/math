/- Local attribution: grwtsk contributors.
STATIC EXPECTED-TYPE CONSUMER / NOT_RUN. This file has not been compiled.
It is an acceptance requirement, not a replay receipt. -/
import GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint

set_option autoImplicit false

open GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint

example : primeAt 0 = 2 := primeAt_zero

example (n : ℕ) : Nat.primeCounting' (Nat.nth Nat.Prime n) = n :=
  strict_count_primeAt n

example (n : ℕ) : Nat.primeCounting (Nat.nth Nat.Prime n) = n + 1 :=
  inclusive_count_primeAt n

example {output : ℕ → Finset ℕ}
    (h : GRWTSK.NumberTheory.Primes.EnumeratesBelow output) (x : ℕ) :
    (output x).card = Nat.primeCounting' x :=
  enumeration_card_eq_strict_count h x

example (comparison : ℕ → ℝ) (n : ℕ) :
    (Nat.primeCounting' (Nat.nth Nat.Prime n) : ℝ) - comparison (Nat.nth Nat.Prime n) =
      (n : ℝ) - comparison (Nat.nth Nat.Prime n) :=
  strictCountResidual_primeAt comparison n

-- The actual arithmetic endpoints and the sign of the residual difference remain visible.
example (comparison : ℕ → ℝ) (n : ℕ) :
    (comparison (Nat.nth Nat.Prime (n + 1)) - comparison (Nat.nth Nat.Prime n)) - 1 =
      strictCountResidual comparison (Nat.nth Nat.Prime n) -
        strictCountResidual comparison (Nat.nth Nat.Prime (n + 1)) :=
  endpoint_discrepancy_eq comparison n

example (comparison envelope : ℕ → ℝ) (x0 : ℕ) (hE : ∀ x, 0 ≤ envelope x)
    (hbound : ∀ x, x0 ≤ x →
      |(Nat.primeCounting' x : ℝ) - comparison x| ≤ envelope x)
    (n : ℕ) (hl : x0 ≤ Nat.nth Nat.Prime n) (hu : x0 ≤ Nat.nth Nat.Prime (n + 1)) :
    0 ≤ envelope (Nat.nth Nat.Prime n) + envelope (Nat.nth Nat.Prime (n + 1)) ∧
      |(comparison (Nat.nth Nat.Prime (n + 1)) - comparison (Nat.nth Nat.Prime n)) - 1| ≤
        envelope (Nat.nth Nat.Prime n) + envelope (Nat.nth Nat.Prime (n + 1)) :=
  endpoint_budget_of_counting_estimate comparison envelope x0 hE hbound n hl hu

example (comparison bound : ℕ → ℝ) (C : ℝ) (x0 : ℕ)
    (hC : 0 ≤ C) (hB : ∀ x, 0 ≤ bound x)
    (hbound : ∀ x, x0 ≤ x →
      |(Nat.primeCounting' x : ℝ) - comparison x| ≤ C * bound x)
    (n : ℕ) (hl : x0 ≤ Nat.nth Nat.Prime n) (hu : x0 ≤ Nat.nth Nat.Prime (n + 1)) :
    |(comparison (Nat.nth Nat.Prime (n + 1)) - comparison (Nat.nth Nat.Prime n)) - 1| ≤
      C * (bound (Nat.nth Nat.Prime n) + bound (Nat.nth Nat.Prime (n + 1))) :=
  endpoint_discrepancy_bound_of_scaled_estimate comparison bound C x0 hC hB hbound n hl hu
