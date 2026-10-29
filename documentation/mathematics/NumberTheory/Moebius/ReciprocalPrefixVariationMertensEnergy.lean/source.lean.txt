/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence

/-!
# Reciprocal-prefix variation as positive Mertens energy

The signed correlation-plus-diagonal increment of reciprocal-prefix variation
is a normalized difference of consecutive Mertens squares.  A second discrete
partial summation converts the full variation into an exact positive weighted
Mertens-square energy.

This eliminates the signed correlation from the final arithmetic interface:
a power saving for this positive Mertens energy is exactly the reciprocal
variation power saving used by the critical-boundary consumer.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence

/-- Positive endpoint-plus-history energy of Mertens squares. -/
def mertensSquareEnergy (n : ℕ) : ℝ :=
  pickupMertensPrefix n ^ 2 / (n : ℝ) +
    ∑ k ∈ Finset.range n,
      pickupMertensPrefix k ^ 2 / ((k : ℝ) * (k + 1 : ℕ))

/-- The reciprocal-variation increment is a normalized consecutive difference
of Mertens squares. -/
theorem reciprocalPrefixVariationSquare_succ_eq_mertensSquareIncrement (n : ℕ) :
    reciprocalPrefixVariationSquare (n + 1) =
      reciprocalPrefixVariationSquare n +
        (pickupMertensPrefix (n + 1) ^ 2 - pickupMertensPrefix n ^ 2) /
          (n + 1 : ℕ) := by
  rw [reciprocalPrefixVariationSquare_succ, pickupMertensPrefix_succ]
  have hne : (((n + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
  field_simp
  ring

/-- Exact positive-energy representation of endpoint-centered reciprocal-prefix
square variation. -/
theorem reciprocalPrefixVariationSquare_eq_mertensSquareEnergy (n : ℕ) :
    reciprocalPrefixVariationSquare n = mertensSquareEnergy n := by
  induction n with
  | zero => simp [reciprocalPrefixVariationSquare, mertensSquareEnergy]
  | succ n ih =>
      rw [reciprocalPrefixVariationSquare_succ_eq_mertensSquareIncrement, ih]
      unfold mertensSquareEnergy
      rw [Finset.sum_range_succ]
      rcases n with _ | n
      · simp [pickupMertensPrefix]
      · have hn : (((n + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
        have hns : (((n + 2 : ℕ) : ℝ)) ≠ 0 := by positivity
        norm_num [Nat.cast_add, Nat.cast_one]
        field_simp
        ring

theorem mertensSquareEnergy_nonneg (n : ℕ) : 0 ≤ mertensSquareEnergy n := by
  unfold mertensSquareEnergy
  positivity

/-- The terminal Mertens square is controlled by reciprocal-prefix variation. -/
theorem pickupMertensPrefix_sq_le_mul_variation {n : ℕ} (hn : 1 ≤ n) :
    pickupMertensPrefix n ^ 2 ≤
      (n : ℝ) * reciprocalPrefixVariationSquare n := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hhistory :
      0 ≤ ∑ k ∈ Finset.range n,
        pickupMertensPrefix k ^ 2 / ((k : ℝ) * (k + 1 : ℕ)) := by
    positivity
  have hend :
      pickupMertensPrefix n ^ 2 / (n : ℝ) ≤
        reciprocalPrefixVariationSquare n := by
    rw [reciprocalPrefixVariationSquare_eq_mertensSquareEnergy]
    unfold mertensSquareEnergy
    linarith
  calc
    pickupMertensPrefix n ^ 2 =
        (n : ℝ) * (pickupMertensPrefix n ^ 2 / (n : ℝ)) := by
      field_simp
    _ ≤ (n : ℝ) * reciprocalPrefixVariationSquare n :=
      mul_le_mul_of_nonneg_left hend hnpos.le

/-- A positive power saving for the exact Mertens-square energy. -/
def MertensSquareEnergyPowerSaving : Prop :=
  ∃ C δ : ℝ, 0 ≤ C ∧ 0 < δ ∧
    ∀ n : ℕ, 1 ≤ n →
      mertensSquareEnergy n ≤ C * (n : ℝ) ^ (1 - δ)

theorem reciprocalVariationPowerSaving_iff_mertensSquareEnergyPowerSaving :
    ReciprocalVariationPowerSaving ↔ MertensSquareEnergyPowerSaving := by
  constructor
  · rintro ⟨C, δ, hC, hδ, hbound⟩
    refine ⟨C, δ, hC, hδ, ?_⟩
    intro n hn
    rw [← reciprocalPrefixVariationSquare_eq_mertensSquareEnergy]
    exact hbound n hn
  · rintro ⟨C, δ, hC, hδ, hbound⟩
    refine ⟨C, δ, hC, hδ, ?_⟩
    intro n hn
    rw [reciprocalPrefixVariationSquare_eq_mertensSquareEnergy]
    exact hbound n hn

/-- A power saving for the positive weighted Mertens-square energy implies the
completed critical vertical-line estimate. -/
theorem criticalBoundary_of_mertensSquareEnergyPowerSaving
    (h : MertensSquareEnergyPowerSaving) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_reciprocalPrefixVariationPowerSaving
    (reciprocalVariationPowerSaving_iff_mertensSquareEnergyPowerSaving.mpr h)

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy.reciprocalPrefixVariationSquare_succ_eq_mertensSquareIncrement
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy.reciprocalPrefixVariationSquare_eq_mertensSquareEnergy
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy.mertensSquareEnergy_nonneg
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy.pickupMertensPrefix_sq_le_mul_variation
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy.reciprocalVariationPowerSaving_iff_mertensSquareEnergyPowerSaving
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy.criticalBoundary_of_mertensSquareEnergyPowerSaving
