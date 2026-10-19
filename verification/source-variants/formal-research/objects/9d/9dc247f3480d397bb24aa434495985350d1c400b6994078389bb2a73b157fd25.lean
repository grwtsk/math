import SourceSignedDivisorSamplingBudget
import SourceSamplingLedger

/-!
Complete short multiples and the divisible diagonal cancel inside the original
signed divisor row, before estimating any sector. The full Mangoldt inventory,
the independent sampling main, natural quotient endpoints and signed sampling
error are retained. No uniform arithmetic witness is assumed as a theorem.
Direction, theorem selection, corrections and evaluation: grwtsk contributors.
Finite algebra and focused formal construction: Codex/ChatGPT assistance.
-/

set_option autoImplicit false
noncomputable section
namespace RH16CompleteDivisorCancellation

open ArithmeticFunction
open scoped BigOperators
open FormalResearch.RiemannHypothesis
open SourceVaughanHankel SourceDivisorCounterterms SourceDivisorClassification
open SourceSignedDivisorSamplingBudget SourceSamplingLedger SourceSamplingPointwise
open SourceShortSamplingInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateVaughanIdentity EstimateBetaCentering
open EstimateVaughanTranslationGate EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateMertensAbel

/-- This cancellation requires the COMPLETE equality-inclusive short divisor sector. -/
theorem complete_short_multiple_sum (U : ℕ) (hU : 1 ≤ U) (f : ℕ → ℝ) :
    (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
      (∑ j ∈ Finset.Icc 1 (U / d), f (d * j))) = f 1 := by
  classical
  have he (d : ℕ) (hd : d ∈ Finset.Icc 1 U) :
      (∑ j ∈ Finset.Icc 1 (U / d), f (d * j)) =
        ∑ n ∈ Finset.Icc 1 U, if d ∣ n then f n else 0 := by
    have h := sum_multiples_eq_quotient_interval 0 U d
      (by have := (Finset.mem_Icc.mp hd).1; omega) f
    have hi : Finset.Ioc 0 U = Finset.Icc 1 U := by
      ext n
      simp only [Finset.mem_Ioc, Finset.mem_Icc]
      omega
    simpa only [Nat.zero_div, zero_add, hi] using h.symm
  have hs (n : ℕ) (hn : n ∈ Finset.Icc 1 U) :
      (∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) =
        if n = 1 then 1 else 0 := by
    have hb := beta_eq_delta_sub_short U n
    rw [beta_zero_of_le U n (Finset.mem_Icc.mp hn).2,
      short_divisor_sum_eq_indicator U n
        (by have := (Finset.mem_Icc.mp hn).1; omega)] at hb
    linarith
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (∑ n ∈ Finset.Icc 1 U, if d ∣ n then f n else 0) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [he d hd]
    _ = ∑ n ∈ Finset.Icc 1 U,
        (∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) * f n := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n _
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro d _
      split_ifs <;> simp
    _ = ∑ n ∈ Finset.Icc 1 U, (if n = 1 then 1 else 0) * f n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [hs n hn]
    _ = f 1 := by
      simp only [ite_mul, one_mul, zero_mul]
      simp [hU]

/-- The outer Mangoldt range remains LONG during the short-multiple collapse. -/
theorem actual_complete_short_multiples (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ m ∈ longInventory A, vonMangoldt m *
        (∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)))) =
      ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A (m : ℝ) := by
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro m _
  have he := complete_short_multiple_sum (vaughanCutoff A)
    (vaughanCutoff_pos A hA)
    (fun n => sourcePlainWeight A ((m * n : ℕ) : ℝ))
  unfold realMoebius
  calc
    _ = vonMangoldt m * (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        (moebius d : ℝ) * (∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d _
      simp_rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      ring
    _ = _ := by rw [he]; simp only [Nat.mul_one]

/-- The divisible diagonal collapses to the OLD uncentered diagonal, at its sign. -/
theorem actual_complete_divisible_diagonal (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ m ∈ longInventory A,
        if d ∣ m then vonMangoldt m *
          sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0)) = -typeTwoDiagonal A := by
  classical
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  unfold typeTwoDiagonal
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hmU := (Finset.mem_Ioc.mp hm).1
  have hU := vaughanCutoff_pos A hA
  have hb := beta_eq_delta_sub_short (vaughanCutoff A) m
  rw [if_neg (by omega), zero_sub,
    short_divisor_sum_eq_indicator (vaughanCutoff A) m (by omega)] at hb
  change _ = -(vonMangoldt m * beta (vaughanCutoff A) m * _)
  rw [hb]
  unfold realMoebius
  rw [mul_neg, neg_mul, neg_neg, Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro d _
  split_ifs
  · ring
  · simp

def fullMangoldtRow (A : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), vonMangoldt m * sourcePlainWeight A (m : ℝ)

def allMangoldtSamplingMain (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
    (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A),
      vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))

def oldDiagonalError (A : ℝ) : ℝ :=
  typeTwoDiagonal A + SourceDiagonalMainTerm.diagonalMainCoefficient A * A -
    Real.log (vaughanCutoff A : ℝ)

/-- All retained independent main rows and the actual signed remainder form ONE block. -/
def completeSignedSamplingBlock (A : ℝ) : ℝ :=
  fullMangoldtRow A + shortLogMainTerm A (sourceLogSamplingMainTerm A) -
    allMangoldtSamplingMain A - actualSignedQuotientSamplingError A

theorem short_add_long_inventory (A : ℝ) (hA : 1 ≤ A) (f : ℕ → ℝ) :
    (∑ m ∈ Finset.Icc 1 (vaughanCutoff A), f m) +
      (∑ m ∈ longInventory A, f m) = ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), f m := by
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hd : Disjoint (Finset.Icc 1 (vaughanCutoff A)) (longInventory A) := by
    apply Finset.disjoint_left.mpr
    intro m hm hn
    have hb := Finset.mem_Icc.mp hm
    have hc := Finset.mem_Ioc.mp hn
    omega
  have hu : Finset.Icc 1 (vaughanCutoff A) ∪ longInventory A =
      Finset.Icc 1 (sourceKernelCutoff A) := by
    ext m
    simp only [longInventory, Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
    omega
  rw [← hu, Finset.sum_union hd]

/-- Exact joint cancellation of complete short multiples, divisible diagonal and baseline. -/
theorem joint_remainder_eq_complete_signed_block (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = completeSignedSamplingBlock A - oldDiagonalError A := by
  rw [jointSignedRemainder_eq_original_sampling_rows A hA]
  simp only [mul_add, mul_sub, mul_neg, Finset.sum_add_distrib,
    Finset.sum_sub_distrib, Finset.sum_neg_distrib]
  rw [actual_complete_short_multiples A hA, actual_complete_divisible_diagonal A hA]
  have hp := short_add_long_inventory A hA
    (fun m => vonMangoldt m * sourcePlainWeight A (m : ℝ))
  have hj : allMangoldtSamplingMain A =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (∑ m ∈ longInventory A, vonMangoldt m *
          sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))) +
      shortPlainMainTerm A (sourcePlainSamplingMainTerm A) := by
    unfold allMangoldtSamplingMain shortPlainMainTerm
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d _
    have hc : (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * vonMangoldt m *
          sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) =
        realMoebius d * (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      ring
    rw [hc, ← mul_add, add_comm, short_add_long_inventory A hA]
  unfold completeSignedSamplingBlock oldDiagonalError fullMangoldtRow
    globalBaseline shortLogMainTerm shortMangoldtSource
  rw [hj]
  unfold shortPlainMainTerm
  simp_rw [Finset.mul_sum]
  simp only [mul_assoc]
  linarith only [hp]

/-- The canceled diagonal block already has an unconditional fixed source budget. -/
theorem oldDiagonalError_uniform_abs_bound :
    ∃ CD : ℝ, 0 ≤ CD ∧ ∀ A : ℝ, 1 ≤ A → |oldDiagonalError A| ≤ CD := by
  obtain ⟨CD, hD0, hD⟩ := VaughanDiagonalMainTermReview.actual_diagonal_main_term_error
  refine ⟨CD, hD0, ?_⟩
  intro A hA
  exact hD A hA

/-- A witness for this COMPLETE block would suffice; no such witness is constructed here. -/
theorem joint_upper_of_complete_block_and_diagonal (A D CD : ℝ) (hA : 1 ≤ A)
    (hb : completeSignedSamplingBlock A ≤ D) (hd : |oldDiagonalError A| ≤ CD) :
    jointSignedRemainder A ≤ D + CD := by
  rw [joint_remainder_eq_complete_signed_block A hA]
  have hm := (abs_le.mp hd).1
  linarith

end RH16CompleteDivisorCancellation
