/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
import Mathlib.Data.Finset.NatAntidiagonal
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite pair expansion of the Goldbach singular kernel

The finite singular kernel is expanded into the complete ordered box
`0 ≤ u,v ≤ N`. Its zero-frequency part is exactly the natural antidiagonal
`u + v = N`, with cardinality `N + 1`; every other pair is retained as an
explicit oscillatory frequency.

This is a finite identity. No estimate for the resulting oscillatory terms,
prime-progression estimate, minor-arc bound, or Goldbach theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularExpansion

open scoped BigOperators Real
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow

noncomputable section

/-- The complete ordered pair box underlying the square of the finite integer
exponential kernel. -/
def goldbachSingularPairBox (N : ℕ) : Finset (ℕ × ℕ) :=
  (Finset.range (N + 1)).product (Finset.range (N + 1))

/-- Exact membership in the ordered pair box. -/
theorem mem_goldbachSingularPairBox {N u v : ℕ} :
    (u, v) ∈ goldbachSingularPairBox N ↔
      u ≤ N ∧ v ≤ N := by
  simp [goldbachSingularPairBox]

/-- The integer frequency contributed by one ordered pair after the negative
Goldbach target phase has been attached. -/
def goldbachSingularPairFrequency
    (N : ℕ) (uv : ℕ × ℕ) : ℤ :=
  (uv.1 : ℤ) + (uv.2 : ℤ) - (N : ℤ)

/-- The exact zero-frequency antidiagonal. -/
def goldbachSingularDiagonalPairs (N : ℕ) : Finset (ℕ × ℕ) :=
  Finset.antidiagonal N

/-- Every remaining pair is retained in the off-diagonal finite source. -/
def goldbachSingularOffDiagonalPairs (N : ℕ) : Finset (ℕ × ℕ) :=
  goldbachSingularPairBox N \ goldbachSingularDiagonalPairs N

/-- Antidiagonal membership is the literal natural equation `u + v = N`. -/
theorem mem_goldbachSingularDiagonalPairs {N u v : ℕ} :
    (u, v) ∈ goldbachSingularDiagonalPairs N ↔
      u + v = N := by
  simp [goldbachSingularDiagonalPairs]

/-- Every diagonal pair already lies in the complete pair box. -/
theorem goldbachSingularDiagonalPairs_subset_pairBox (N : ℕ) :
    goldbachSingularDiagonalPairs N ⊆
      goldbachSingularPairBox N := by
  intro uv huv
  have hsum :
      uv.1 + uv.2 = N := by
    simpa [goldbachSingularDiagonalPairs] using huv
  exact mem_goldbachSingularPairBox.mpr
    ⟨by omega, by omega⟩

/-- Off-diagonal membership retains both coordinate bounds and rejects exactly
the natural additive diagonal. -/
theorem mem_goldbachSingularOffDiagonalPairs {N u v : ℕ} :
    (u, v) ∈ goldbachSingularOffDiagonalPairs N ↔
      u ≤ N ∧ v ≤ N ∧ u + v ≠ N := by
  simp only [goldbachSingularOffDiagonalPairs,
    Finset.mem_sdiff, mem_goldbachSingularPairBox,
    mem_goldbachSingularDiagonalPairs]
  tauto

/-- Inside the pair box, vanishing integer frequency is equivalent to the
literal natural equation `u + v = N`. -/
theorem goldbachSingularPairFrequency_eq_zero_iff
    {N : ℕ} {uv : ℕ × ℕ}
    (_huv : uv ∈ goldbachSingularPairBox N) :
    goldbachSingularPairFrequency N uv = 0 ↔
      uv.1 + uv.2 = N := by
  unfold goldbachSingularPairFrequency
  omega

/-- Every off-diagonal pair has a nonzero integer frequency. -/
theorem goldbachSingularPairFrequency_ne_zero_of_offDiagonal
    {N : ℕ} {uv : ℕ × ℕ}
    (huv : uv ∈ goldbachSingularOffDiagonalPairs N) :
    goldbachSingularPairFrequency N uv ≠ 0 := by
  have hbox : uv ∈ goldbachSingularPairBox N :=
    (Finset.mem_sdiff.mp huv).1
  have hoff :
      uv.1 + uv.2 ≠ N :=
    (mem_goldbachSingularOffDiagonalPairs.mp huv).2.2
  exact fun hzero =>
    hoff ((goldbachSingularPairFrequency_eq_zero_iff hbox).mp hzero)

/-- The complete ordered pair box contains exactly `(N + 1)^2` pairs. -/
theorem card_goldbachSingularPairBox (N : ℕ) :
    (goldbachSingularPairBox N).card = (N + 1) ^ 2 := by
  simp [goldbachSingularPairBox, pow_two]

/-- The exact diagonal contains `N + 1` ordered pairs. -/
theorem card_goldbachSingularDiagonalPairs (N : ℕ) :
    (goldbachSingularDiagonalPairs N).card = N + 1 := by
  simp [goldbachSingularDiagonalPairs]

/-- The off-diagonal source contains exactly `N * (N + 1)` ordered pairs. -/
theorem card_goldbachSingularOffDiagonalPairs (N : ℕ) :
    (goldbachSingularOffDiagonalPairs N).card =
      N * (N + 1) := by
  rw [goldbachSingularOffDiagonalPairs,
    Finset.card_sdiff_of_subset
      (goldbachSingularDiagonalPairs_subset_pairBox N),
    card_goldbachSingularPairBox,
    card_goldbachSingularDiagonalPairs]
  have h : (N + 1) ^ 2 = N * (N + 1) + (N + 1) := by ring
  rw [h, Nat.add_sub_cancel_right]

/-- Exact ordered-pair expansion of the finite singular kernel. -/
theorem goldbachFiniteSingularKernel_eq_pairSum
    (N : ℕ) (β : ℝ) :
    goldbachFiniteSingularKernel N β =
      ∑ uv ∈ goldbachSingularPairBox N,
        unitCharacter
          (goldbachSingularPairFrequency N uv) β := by
  unfold goldbachFiniteSingularKernel
    goldbachIntegerExponentialKernel
    goldbachSingularPairBox
  rw [Finset.product_eq_sprod, Finset.sum_product]
  simp_rw [Finset.sum_mul, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro u hu
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro v hv
  simp only [goldbachSingularPairFrequency,
    sub_eq_add_neg, ← unitCharacter_add]

/-- The pair box is the disjoint union of its exact diagonal and all remaining
pairs. -/
theorem goldbachSingularPairBox_eq_diagonal_union_offDiagonal
    (N : ℕ) :
    goldbachSingularPairBox N =
      goldbachSingularDiagonalPairs N ∪
        goldbachSingularOffDiagonalPairs N := by
  symm
  exact Finset.union_sdiff_of_subset
    (goldbachSingularDiagonalPairs_subset_pairBox N)

/-- The exact diagonal and off-diagonal sources are disjoint. -/
theorem goldbachSingularDiagonalPairs_disjoint_offDiagonal
    (N : ℕ) :
    Disjoint
      (goldbachSingularDiagonalPairs N)
      (goldbachSingularOffDiagonalPairs N) := by
  exact Finset.disjoint_sdiff

/-- The complete diagonal character sum is exactly `N + 1`. -/
theorem goldbachSingularDiagonalCharacterSum
    (N : ℕ) (β : ℝ) :
    (∑ uv ∈ goldbachSingularDiagonalPairs N,
        unitCharacter
          (goldbachSingularPairFrequency N uv) β) =
      (N + 1 : ℂ) := by
  calc
    (∑ uv ∈ goldbachSingularDiagonalPairs N,
        unitCharacter
          (goldbachSingularPairFrequency N uv) β) =
      ∑ _uv ∈ goldbachSingularDiagonalPairs N, (1 : ℂ) := by
        apply Finset.sum_congr rfl
        intro uv huv
        have hfreq :
            goldbachSingularPairFrequency N uv = 0 :=
          (goldbachSingularPairFrequency_eq_zero_iff
            ((goldbachSingularDiagonalPairs_subset_pairBox N) huv)).2
            (mem_goldbachSingularDiagonalPairs.mp huv)
        rw [hfreq, unitCharacter_zero]
    _ = (N + 1 : ℂ) := by
      simp [goldbachSingularDiagonalPairs]

/-- Exact diagonal/off-diagonal decomposition of the finite singular kernel. -/
theorem goldbachFiniteSingularKernel_eq_diagonal_add_offDiagonal
    (N : ℕ) (β : ℝ) :
    goldbachFiniteSingularKernel N β =
      (N + 1 : ℂ) +
        ∑ uv ∈ goldbachSingularOffDiagonalPairs N,
          unitCharacter
            (goldbachSingularPairFrequency N uv) β := by
  rw [goldbachFiniteSingularKernel_eq_pairSum,
    goldbachSingularPairBox_eq_diagonal_union_offDiagonal,
    Finset.sum_union
      (goldbachSingularDiagonalPairs_disjoint_offDiagonal N),
    goldbachSingularDiagonalCharacterSum]

end
end GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularExpansion
