/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFourierEnergy
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Complete higher-prime-power witness residual is O(1/X)

The higher-prime-power contribution has three pieces in the explicit witness:

* the mass0 endpoint contribution;
* the mass1 endpoint contribution;
* the complete Fourier-mode correction.

The first endpoint contribution is exactly the weighted non-prime octave mass.
The second is bounded by the same mass because every source location lies in
[0,1]. The previous module bounds the full Fourier energy by a universal
constant times the square of that mass.

Pinned Chebyshev gives the mass as O(X^(-1/2)). Hence the complete
higher-prime-power witness residual is bounded by K/X.

This removes higher prime powers from the hard RH-G01 supplier at the full
finite-energy level, not merely mode by mode.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
HIGHER_PRIME_POWER_FULL_WITNESS_RESIDUAL_INV_BOUND.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Higher-prime-power contribution to the first endpoint moment. -/
def higherPrimePowerMass0Contribution (X : ℕ) : ℝ :=
  higherPrimePowerWindowMass X

/-- Higher-prime-power contribution to the second endpoint moment. -/
def higherPrimePowerMass1Contribution (X : ℕ) : ℝ :=
  ∑ n ∈ (window X).filter (fun n => ¬ n.Prime),
    coefficient n * location X n

theorem higherPrimePowerMass0Contribution_nonnegative
    (X : ℕ) :
    0 ≤ higherPrimePowerMass0Contribution X :=
  higherPrimePowerWindowMass_nonnegative X

theorem higherPrimePowerMass1Contribution_nonnegative
    {X : ℕ} (hX : 0 < X) :
    0 ≤ higherPrimePowerMass1Contribution X := by
  unfold higherPrimePowerMass1Contribution
  exact Finset.sum_nonneg (fun n hn => by
    have hmem := (Finset.mem_filter.mp hn).1
    exact mul_nonneg (coefficient_nonnegative n)
      (location_mem hX hmem).1)

theorem higherPrimePowerMass1Contribution_le_mass
    {X : ℕ} (hX : 0 < X) :
    higherPrimePowerMass1Contribution X ≤
      higherPrimePowerWindowMass X := by
  unfold higherPrimePowerMass1Contribution
    higherPrimePowerWindowMass
  apply Finset.sum_le_sum
  intro n hn
  have hmem := (Finset.mem_filter.mp hn).1
  have hloc := location_mem hX hmem
  exact mul_le_of_le_one_right
    (coefficient_nonnegative n) hloc.2

/-- Complete higher-prime-power residual energy in the recovered witness
coordinates. -/
def higherPrimePowerFullWitnessEnergy (X : ℕ) : ℝ :=
  (higherPrimePowerMass0Contribution X)^2 +
    (higherPrimePowerMass1Contribution X)^2 +
    ∑' k : ℤ, higherPrimePowerFourierModeEnergy X k

theorem higherPrimePowerFullWitnessEnergy_nonnegative
    {X : ℕ} (_hX : 0 < X) :
    0 ≤ higherPrimePowerFullWitnessEnergy X := by
  unfold higherPrimePowerFullWitnessEnergy
  have hFourier :
      0 ≤ ∑' k : ℤ, higherPrimePowerFourierModeEnergy X k :=
    tsum_nonneg (higherPrimePowerFourierModeEnergy_nonnegative X)
  nlinarith [
    sq_nonneg (higherPrimePowerMass0Contribution X),
    sq_nonneg (higherPrimePowerMass1Contribution X)]

/-- Complete residual is controlled by one universal multiplier of the weighted
higher-prime-power mass squared. -/
theorem higherPrimePowerFullWitnessEnergy_le_mass_sq
    {X : ℕ} (hX : 0 < X) :
    higherPrimePowerFullWitnessEnergy X ≤
      (2 + higherPrimePowerFrequencyConstant) *
        (higherPrimePowerWindowMass X)^2 := by
  have hM0 :
      (higherPrimePowerMass0Contribution X)^2 =
        (higherPrimePowerWindowMass X)^2 := rfl
  have hM1 := higherPrimePowerMass1Contribution_le_mass hX
  have hM10 := higherPrimePowerMass1Contribution_nonnegative hX
  have hM0nonneg := higherPrimePowerWindowMass_nonnegative X
  have hM1sq :
      (higherPrimePowerMass1Contribution X)^2 ≤
        (higherPrimePowerWindowMass X)^2 := by
    exact (sq_le_sq₀ hM10 hM0nonneg).2 hM1
  have hFourier := higherPrimePowerFourierEnergy_le_mass_sq X
  unfold higherPrimePowerFullWitnessEnergy
  rw [hM0]
  nlinarith [higherPrimePowerFrequencyConstant_nonnegative]

/-- Algebraic square-root ratio identity used to convert the Chebyshev mass
bound into a 1/X energy bound. -/
theorem sqrt_two_mul_nat_div_sq
    {X : ℕ} (hX : 0 < X) :
    (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ))^2 =
      2 / (X : ℝ) := by
  have hX0 : (X : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hX)
  rw [div_pow, Real.sq_sqrt (by positivity)]
  push_cast
  field_simp [hX0]

/-- Unconditional inverse-scale bound for the COMPLETE higher-prime-power
witness residual. -/
theorem higherPrimePowerFullWitnessEnergy_inv_bound :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ X : ℕ, 0 < X →
      higherPrimePowerFullWitnessEnergy X ≤
        K / (X : ℝ) := by
  obtain ⟨C, hC⟩ := higherPrimePowerWindowMass_sqrt_bound
  let A : ℝ := |C|
  let F : ℝ := 2 + higherPrimePowerFrequencyConstant
  let K : ℝ := 2 * F * A^2
  have hA : 0 ≤ A := abs_nonneg _
  have hF : 0 ≤ F := by
    unfold F
    nlinarith [higherPrimePowerFrequencyConstant_nonnegative]
  have hK : 0 ≤ K := by
    unfold K
    positivity
  refine ⟨K, hK, ?_⟩
  intro X hX
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hb :
      0 ≤ Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ) := by
    positivity
  have hmass0 := higherPrimePowerWindowMass_nonnegative X
  have hmass := hC X hX
  have hmass' :
      higherPrimePowerWindowMass X ≤
        C * (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ)) := by
    simpa [mul_div_assoc] using hmass
  have hCA : C ≤ A := by
    unfold A
    exact le_abs_self C
  have hmassA :
      higherPrimePowerWindowMass X ≤
        A * (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ)) := by
    exact hmass'.trans
      (mul_le_mul_of_nonneg_right hCA hb)
  have hmassSq :
      (higherPrimePowerWindowMass X)^2 ≤
        A^2 *
          (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ))^2 := by
    have hrhs :
        0 ≤ A *
          (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ)) := by
      positivity
    have hs :=
      (sq_le_sq₀ hmass0 hrhs).2 hmassA
    simpa [mul_pow] using hs
  have henergy := higherPrimePowerFullWitnessEnergy_le_mass_sq hX
  calc
    higherPrimePowerFullWitnessEnergy X
        ≤ F * (higherPrimePowerWindowMass X)^2 := by
      simpa [F] using henergy
    _ ≤ F * (A^2 *
          (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ))^2) :=
      mul_le_mul_of_nonneg_left hmassSq hF
    _ = K / (X : ℝ) := by
      rw [sqrt_two_mul_nat_div_sq hX]
      unfold K
      ring

end GRWTSK.RiemannHypothesis
