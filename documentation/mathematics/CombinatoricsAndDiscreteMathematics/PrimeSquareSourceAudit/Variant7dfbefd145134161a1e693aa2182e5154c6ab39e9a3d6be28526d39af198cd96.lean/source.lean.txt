import FormalResearch.RiemannHypothesis.SourceComparison.Cutoff

set_option autoImplicit false

namespace PrimeSquareSourceScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open Realization
noncomputable section

/-- An index is a square of an actual prime, with no omitted prime-two case. -/
def IsPrimeSquare (n : ℕ) : Prop := ∃ p : ℕ, p.Prime ∧ p ^ 2 = n

/-- Exactly the prime-square sector of the unchanged strict source cutoff. -/
def primeSquareIndices (A : ℝ) : Finset ℕ := by
  classical
  exact (Cutoff.primeIndices A).filter IsPrimeSquare

/-- The closed-right prime-root index. -/
def closedPrimeRoots (A : ℝ) : Finset ℕ :=
  (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime

/-- The strict root cutoff corresponding to the original strict square cutoff. -/
def strictPrimeRoots (A : ℝ) : Finset ℕ :=
  (closedPrimeRoots A).filter (fun p : ℕ => (p : ℝ) < Real.exp A)

/-- The actual Mangoldt/square-root/correlation summand, restricted only to prime squares. -/
def primeSquareContribution (A : ℝ) : ℝ :=
  ∑ n ∈ primeSquareIndices A, ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
    sourceCorrelation explicitSecondDerivative A (Real.log (n : ℝ))

theorem mem_closedPrimeRoots_iff (A : ℝ) (p : ℕ) :
    p ∈ closedPrimeRoots A ↔ p.Prime ∧ (p : ℝ) ≤ Real.exp A := by
  simp only [closedPrimeRoots, Finset.mem_filter, Finset.mem_Icc,
    Nat.le_floor_iff (Real.exp_pos A).le]
  constructor
  · exact fun h => ⟨h.2, h.1.2⟩
  · exact fun h => ⟨⟨h.1.two_le, h.2⟩, h.1⟩

theorem mem_strictPrimeRoots_iff (A : ℝ) (p : ℕ) :
    p ∈ strictPrimeRoots A ↔ p.Prime ∧ (p : ℝ) < Real.exp A := by
  simp only [strictPrimeRoots, Finset.mem_filter, mem_closedPrimeRoots_iff]
  exact ⟨fun h => ⟨h.1.1, h.2⟩, fun h => ⟨⟨h.1, h.2.le⟩, h.2⟩⟩

/-- Squaring transports the strict source endpoint exactly. -/
theorem prime_square_cutoff_iff (A : ℝ) (p : ℕ) (hp : p.Prime) :
    p ^ 2 ∈ Cutoff.primeIndices A ↔ (p : ℝ) < Real.exp A := by
  rw [Cutoff.mem_primeIndices_iff]
  have hp2 : 2 ≤ p ^ 2 := by nlinarith [hp.two_le]
  have hexp : Real.exp (2 * A) = (Real.exp A) ^ 2 := by
    rw [two_mul, Real.exp_add, pow_two]
  simp only [hp2, true_and, Nat.cast_pow, hexp]
  exact sq_lt_sq₀ (Nat.cast_nonneg p) (Real.exp_pos A).le

/-- There is no multiplicity factor in the finite reindexing: squaring is injective. -/
theorem primeSquareIndices_eq_image (A : ℝ) :
    primeSquareIndices A = (strictPrimeRoots A).image (fun p : ℕ => p ^ 2) := by
  classical
  ext n
  simp only [primeSquareIndices, Finset.mem_filter, Finset.mem_image]
  constructor
  · rintro ⟨hn, p, hp, hpn⟩
    refine ⟨p, (mem_strictPrimeRoots_iff A p).mpr ⟨hp, ?_⟩, hpn⟩
    exact (prime_square_cutoff_iff A p hp).mp (hpn ▸ hn)
  · rintro ⟨p, hp, rfl⟩
    obtain ⟨hp, hcut⟩ := (mem_strictPrimeRoots_iff A p).mp hp
    exact ⟨(prime_square_cutoff_iff A p hp).mpr hcut, p, hp, rfl⟩

/-- Prime two is present exactly when its square is below the original strict cutoff. -/
theorem four_mem_primeSquareIndices_iff (A : ℝ) :
    4 ∈ primeSquareIndices A ↔ Real.log 2 < A := by
  classical
  simp only [primeSquareIndices, Finset.mem_filter]
  have hs : IsPrimeSquare 4 := ⟨2, Nat.prime_two, by norm_num⟩
  simp only [hs, and_true]
  have h := prime_square_cutoff_iff A 2 Nat.prime_two
  norm_num only [show (2 : ℕ) ^ 2 = 4 by norm_num, Nat.cast_ofNat] at h
  rw [h]
  exact (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 2)).symm

/-- The original weight at `p^2` is exactly `log p / p`, with the original normalized correlation. -/
theorem prime_square_summand (A : ℝ) (p : ℕ) (hp : p.Prime) :
    ArithmeticFunction.vonMangoldt (p ^ 2) / Real.sqrt ((p ^ 2 : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((p ^ 2 : ℕ) : ℝ)) =
    Real.log (p : ℝ) / (p : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ)) := by
  rw [ArithmeticFunction.vonMangoldt_apply_pow (by norm_num : (2 : ℕ) ≠ 0),
    ArithmeticFunction.vonMangoldt_apply_prime hp, Nat.cast_pow,
    Real.sqrt_sq (Nat.cast_nonneg p), Real.log_pow]
  norm_num

/-- Exact reindexing of the source prime-square sector as a strict prime-root sum. -/
theorem primeSquareContribution_eq_strict (A : ℝ) :
    primeSquareContribution A = ∑ p ∈ strictPrimeRoots A,
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ)) := by
  classical
  rw [primeSquareContribution, primeSquareIndices_eq_image,
    Finset.sum_image (fun a _ b _ hab => Nat.pow_left_injective (by norm_num : (2 : ℕ) ≠ 0) hab)]
  apply Finset.sum_congr rfl
  intro p hp
  exact prime_square_summand A p ((mem_strictPrimeRoots_iff A p).mp hp).1

/-- Any closed-root endpoint removed by the strict cutoff has zero actual correlation. -/
theorem prime_root_endpoint_summand_zero (A : ℝ) (hA : 1 ≤ A) (p : ℕ)
    (hp : p ∈ closedPrimeRoots A) (hnot : p ∉ strictPrimeRoots A) :
    Real.log (p : ℝ) / (p : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ)) = 0 := by
  obtain ⟨hp, hle⟩ := (mem_closedPrimeRoots_iff A p).mp hp
  have heq : (p : ℝ) = Real.exp A := by
    apply le_antisymm hle
    by_contra h
    exact hnot ((mem_strictPrimeRoots_iff A p).mpr ⟨hp, lt_of_not_ge h⟩)
  rw [heq, Real.log_exp]
  rw [CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A)
    (by linarith) (le_abs_self (2 * A)), mul_zero]

/-- Closing the root cutoff preserves the actual source because the precise boundary value vanishes. -/
theorem primeSquareContribution_eq_closed (A : ℝ) (hA : 1 ≤ A) :
    primeSquareContribution A = ∑ p ∈ closedPrimeRoots A,
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ)) := by
  rw [primeSquareContribution_eq_strict]
  exact Finset.sum_subset (Finset.filter_subset _ _)
    (fun p hp hnot => prime_root_endpoint_summand_zero A hA p hp hnot)

end
end PrimeSquareSourceScratch

set_option pp.universes true
#print PrimeSquareSourceScratch.IsPrimeSquare
#print axioms PrimeSquareSourceScratch.IsPrimeSquare
#print PrimeSquareSourceScratch.primeSquareIndices
#print axioms PrimeSquareSourceScratch.primeSquareIndices
#print PrimeSquareSourceScratch.closedPrimeRoots
#print axioms PrimeSquareSourceScratch.closedPrimeRoots
#print PrimeSquareSourceScratch.strictPrimeRoots
#print axioms PrimeSquareSourceScratch.strictPrimeRoots
#print PrimeSquareSourceScratch.primeSquareContribution
#print axioms PrimeSquareSourceScratch.primeSquareContribution
#print PrimeSquareSourceScratch.mem_closedPrimeRoots_iff
#print axioms PrimeSquareSourceScratch.mem_closedPrimeRoots_iff
#print PrimeSquareSourceScratch.mem_strictPrimeRoots_iff
#print axioms PrimeSquareSourceScratch.mem_strictPrimeRoots_iff
#print PrimeSquareSourceScratch.prime_square_cutoff_iff
#print axioms PrimeSquareSourceScratch.prime_square_cutoff_iff
#print PrimeSquareSourceScratch.primeSquareIndices_eq_image
#print axioms PrimeSquareSourceScratch.primeSquareIndices_eq_image
#print PrimeSquareSourceScratch.four_mem_primeSquareIndices_iff
#print axioms PrimeSquareSourceScratch.four_mem_primeSquareIndices_iff
#print PrimeSquareSourceScratch.prime_square_summand
#print axioms PrimeSquareSourceScratch.prime_square_summand
#print PrimeSquareSourceScratch.primeSquareContribution_eq_strict
#print axioms PrimeSquareSourceScratch.primeSquareContribution_eq_strict
#print PrimeSquareSourceScratch.prime_root_endpoint_summand_zero
#print axioms PrimeSquareSourceScratch.prime_root_endpoint_summand_zero
#print PrimeSquareSourceScratch.primeSquareContribution_eq_closed
#print axioms PrimeSquareSourceScratch.primeSquareContribution_eq_closed
