/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound

/-!
# Equivalence of Mertens pointwise and square-energy power savings

The positive Mertens-square energy route is exactly calibrated against a
classical pointwise Mertens power saving.  The forward implication is the
finite power-sum estimate.  Conversely, the endpoint term in the energy gives
`M(n)^2 ≤ n E(n)`; taking square roots recovers a pointwise exponent strictly
between `1/2` and `1`.

Thus this particular positive-energy reduction is structurally transparent
but does not weaken the outstanding arithmetic power-saving obligation.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy
open GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound

/-- Existence of a pointwise Mertens bound at some exponent strictly between
the square-root and linear scales. -/
def MertensPointwisePowerSaving : Prop :=
  ∃ C β : ℝ, 0 ≤ C ∧ 1 / 2 < β ∧ β < 1 ∧
    ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β

/-- Positive square-energy power saving recovers a pointwise Mertens power
saving.  The recovered exponent is capped in `[3/4,1)` so no assumption on
the size of the energy saving parameter is needed. -/
theorem mertensPointwisePowerSaving_of_squareEnergyPowerSaving
    (h : MertensSquareEnergyPowerSaving) :
    MertensPointwisePowerSaving := by
  obtain ⟨C, δ, hC, hδ, hE⟩ := h
  let ε : ℝ := min (δ / 2) (1 / 4)
  let β : ℝ := 1 - ε
  have hε : 0 < ε := by
    dsimp [ε]
    exact lt_min (by linarith) (by norm_num)
  have hεupper : ε ≤ 1 / 4 := by
    dsimp [ε]
    exact min_le_right _ _
  have hεδ : 2 * ε ≤ δ := by
    have hle : ε ≤ δ / 2 := by
      dsimp [ε]
      exact min_le_left _ _
    linarith
  have hβlower : 1 / 2 < β := by dsimp [β]; linarith
  have hβupper : β < 1 := by dsimp [β]; linarith
  refine ⟨Real.sqrt C, β, Real.sqrt_nonneg C, hβlower, hβupper, ?_⟩
  intro n hn
  have hn0 : (0 : ℝ) ≤ n := by positivity
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hvariation : reciprocalPrefixVariationSquare n = mertensSquareEnergy n :=
    reciprocalPrefixVariationSquare_eq_mertensSquareEnergy n
  have hMsq : pickupMertensPrefix n ^ 2 ≤ C * (n : ℝ) ^ (2 - δ) := by
    calc
      pickupMertensPrefix n ^ 2 ≤
          (n : ℝ) * reciprocalPrefixVariationSquare n :=
        pickupMertensPrefix_sq_le_mul_variation hn
      _ = (n : ℝ) * mertensSquareEnergy n := by rw [hvariation]
      _ ≤ (n : ℝ) * (C * (n : ℝ) ^ (1 - δ)) :=
        mul_le_mul_of_nonneg_left (hE n hn) hn0
      _ = C * (n : ℝ) ^ (2 - δ) := by
        have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
        calc
          (n : ℝ) * (C * (n : ℝ) ^ (1 - δ)) =
              C * ((n : ℝ) ^ (1 : ℝ) * (n : ℝ) ^ (1 - δ)) := by
            simp
            ring
          _ = C * (n : ℝ) ^ (1 + (1 - δ)) := by
            rw [Real.rpow_add hnpos]
          _ = C * (n : ℝ) ^ (2 - δ) := by ring
  have hpow : (n : ℝ) ^ (2 - δ) ≤ (n : ℝ) ^ (2 * β) := by
    apply Real.rpow_le_rpow_of_exponent_le hn1
    dsimp [β]
    linarith
  have hsq : pickupMertensPrefix n ^ 2 ≤ C * (n : ℝ) ^ (2 * β) :=
    hMsq.trans (mul_le_mul_of_nonneg_left hpow hC)
  have htarget : 0 ≤ Real.sqrt C * (n : ℝ) ^ β :=
    mul_nonneg (Real.sqrt_nonneg C) (Real.rpow_nonneg hn0 _)
  apply (sq_le_sq₀ (abs_nonneg (pickupMertensPrefix n)) htarget).mp
  rw [sq_abs, mul_pow, Real.sq_sqrt hC]
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  rw [show ((n : ℝ) ^ β) ^ 2 = (n : ℝ) ^ (2 * β) by
    calc
      _ = ((n : ℝ) ^ β) ^ (2 : ℝ) := (Real.rpow_natCast _ 2).symm
      _ = (n : ℝ) ^ (β * 2) := (Real.rpow_mul hnpos.le β 2).symm
      _ = _ := by ring]
  exact hsq

/-- A pointwise Mertens power saving pays the exact positive square energy. -/
theorem squareEnergyPowerSaving_of_mertensPointwisePowerSaving
    (h : MertensPointwisePowerSaving) :
    MertensSquareEnergyPowerSaving := by
  obtain ⟨C, β, _hC, hβ0, hβ1, hM⟩ := h
  exact mertensSquareEnergyPowerSaving_of_mertensPowerBound hβ0 hβ1 hM

/-- The positive Mertens-square energy criterion is equivalent to existence of
a classical pointwise Mertens power saving. -/
theorem mertensSquareEnergyPowerSaving_iff_pointwisePowerSaving :
    MertensSquareEnergyPowerSaving ↔ MertensPointwisePowerSaving :=
  ⟨mertensPointwisePowerSaving_of_squareEnergyPowerSaving,
    squareEnergyPowerSaving_of_mertensPointwisePowerSaving⟩

/-- The pointwise-power proposition reaches the completed critical boundary
through the equivalent positive-energy interface. -/
theorem criticalBoundary_of_mertensPointwisePowerSaving
    (h : MertensPointwisePowerSaving) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_mertensSquareEnergyPowerSaving
    (mertensSquareEnergyPowerSaving_iff_pointwisePowerSaving.mpr h)

end GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence

#print axioms GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence.mertensPointwisePowerSaving_of_squareEnergyPowerSaving
#print axioms GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence.squareEnergyPowerSaving_of_mertensPointwisePowerSaving
#print axioms GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence.mertensSquareEnergyPowerSaving_iff_pointwisePowerSaving
#print axioms GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence.criticalBoundary_of_mertensPointwisePowerSaving
