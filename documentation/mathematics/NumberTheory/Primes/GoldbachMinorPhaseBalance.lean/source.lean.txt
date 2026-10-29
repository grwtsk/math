/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Keeping the two real phase energies together

For target 2n the centered exponential sum is S_(2n)(x)e(-nx).
The real part of its square is Re(Z)^2-Im(Z)^2. Integrating this exact
difference preserves cancellation that separate positive bounds discard.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No phase-balance estimate is supplied.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachMinorPhaseBalance

open scoped BigOperators Real
open Set MeasureTheory
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachTwoArcMinorCalibration
open GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy

noncomputable section

def goldbachCenteredHalfTargetSum (n : ℕ) (x : ℝ) : ℂ :=
  goldbachExponentialSum (2 * n) x * unitCharacter (-(n : ℤ)) x

def goldbachMinorRealPhaseEnergy (Q n : ℕ) : ℝ :=
  ∫ x in goldbachRationalMinorArcSet Q (2 * n),
    (goldbachCenteredHalfTargetSum n x).re ^ 2

def goldbachMinorImagPhaseEnergy (Q n : ℕ) : ℝ :=
  ∫ x in goldbachRationalMinorArcSet Q (2 * n),
    (goldbachCenteredHalfTargetSum n x).im ^ 2

@[continuity, fun_prop]
theorem continuous_goldbachCenteredHalfTargetSum (n : ℕ) :
    Continuous (goldbachCenteredHalfTargetSum n) := by
  unfold goldbachCenteredHalfTargetSum goldbachExponentialSum
  fun_prop

theorem goldbachCenteredHalfTargetSum_sq (n : ℕ) (x : ℝ) :
    goldbachCenteredHalfTargetSum n x ^ 2 = goldbachCircleIntegrand (2 * n) x := by
  have hphase : unitCharacter (-(n : ℤ)) x * unitCharacter (-(n : ℤ)) x =
      unitCharacter (-((2 * n : ℕ) : ℤ)) x := by
    rw [← unitCharacter_add]
    congr 1
    push_cast
    ring
  unfold goldbachCenteredHalfTargetSum goldbachCircleIntegrand
  calc
    (goldbachExponentialSum (2 * n) x * unitCharacter (-(n : ℤ)) x) ^ 2 =
        goldbachExponentialSum (2 * n) x * goldbachExponentialSum (2 * n) x *
          (unitCharacter (-(n : ℤ)) x * unitCharacter (-(n : ℤ)) x) := by ring
    _ = _ := by rw [hphase]

theorem goldbachCircleIntegrand_re_eq_phase_difference (n : ℕ) (x : ℝ) :
    (goldbachCircleIntegrand (2 * n) x).re =
      (goldbachCenteredHalfTargetSum n x).re ^ 2 -
        (goldbachCenteredHalfTargetSum n x).im ^ 2 := by
  rw [← goldbachCenteredHalfTargetSum_sq]
  simp [pow_two, Complex.mul_re]

theorem goldbachEnergy_eq_phase_sum (n : ℕ) (x : ℝ) :
    goldbachExponentialEnergy (2 * n) x =
      (goldbachCenteredHalfTargetSum n x).re ^ 2 +
        (goldbachCenteredHalfTargetSum n x).im ^ 2 := by
  have hn : ‖goldbachCenteredHalfTargetSum n x‖ = ‖goldbachExponentialSum (2 * n) x‖ := by
    simp [goldbachCenteredHalfTargetSum, norm_unitCharacter]
  rw [goldbachExponentialEnergy, ← hn, Complex.sq_norm, Complex.normSq_apply]
  ring

theorem goldbachMinorArcSet_subset_unit (Q N : ℕ) :
    goldbachRationalMinorArcSet Q N ⊆ Set.Ioc 0 1 := by
  exact Set.sdiff_subset

theorem integrableOn_goldbachRealPhaseEnergy_minor (Q n : ℕ) :
    IntegrableOn (fun x => (goldbachCenteredHalfTargetSum n x).re ^ 2)
      (goldbachRationalMinorArcSet Q (2 * n)) := by
  have hcont : Continuous (fun x => (goldbachCenteredHalfTargetSum n x).re ^ 2) :=
    (Complex.continuous_re.comp (continuous_goldbachCenteredHalfTargetSum n)).pow 2
  exact (hcont.intervalIntegrable 0 1).1.mono_set (goldbachMinorArcSet_subset_unit Q (2 * n))

theorem integrableOn_goldbachImagPhaseEnergy_minor (Q n : ℕ) :
    IntegrableOn (fun x => (goldbachCenteredHalfTargetSum n x).im ^ 2)
      (goldbachRationalMinorArcSet Q (2 * n)) := by
  have hcont : Continuous (fun x => (goldbachCenteredHalfTargetSum n x).im ^ 2) :=
    (Complex.continuous_im.comp (continuous_goldbachCenteredHalfTargetSum n)).pow 2
  exact (hcont.intervalIntegrable 0 1).1.mono_set (goldbachMinorArcSet_subset_unit Q (2 * n))

/-- Exact signed difference on the complete minor set, with no norm taken. -/
theorem goldbachMinor_re_eq_phase_difference (Q n : ℕ) :
    (goldbachRationalMinorContribution Q (2 * n)).re =
      goldbachMinorRealPhaseEnergy Q n - goldbachMinorImagPhaseEnergy Q n := by
  have hf : IntegrableOn (goldbachCircleIntegrand (2 * n))
      (goldbachRationalMinorArcSet Q (2 * n)) :=
    integrableOn_goldbachCircleIntegrand_minor (2 * n) (goldbachRationalMajorRegion Q (2 * n))
  have hr : (∫ x in goldbachRationalMinorArcSet Q (2 * n),
      goldbachCircleIntegrand (2 * n) x).re =
        ∫ x in goldbachRationalMinorArcSet Q (2 * n),
          (goldbachCircleIntegrand (2 * n) x).re :=
    (Complex.reCLM.integral_comp_comm hf).symm
  change (∫ x in goldbachRationalMinorArcSet Q (2 * n),
    goldbachCircleIntegrand (2 * n) x).re = _
  rw [hr]
  simp_rw [goldbachCircleIntegrand_re_eq_phase_difference]
  exact integral_sub (integrableOn_goldbachRealPhaseEnergy_minor Q n)
    (integrableOn_goldbachImagPhaseEnergy_minor Q n)

theorem goldbachMinorAbsolute_eq_phase_sum (Q n : ℕ) :
    goldbachMinorAbsoluteIntegral Q (2 * n) =
      goldbachMinorRealPhaseEnergy Q n + goldbachMinorImagPhaseEnergy Q n := by
  rw [goldbachMinorAbsoluteIntegral_eq_energy]
  simp_rw [goldbachEnergy_eq_phase_sum]
  exact integral_add (integrableOn_goldbachRealPhaseEnergy_minor Q n)
    (integrableOn_goldbachImagPhaseEnergy_minor Q n)

/-- Exact formulation of the cancellation to be supplied. Bounding the
imaginary energy alone would be a stronger condition. -/
theorem goldbachMinor_lower_iff_phase_balance (Q n : ℕ) (T : ℝ) :
    -T ≤ (goldbachRationalMinorContribution Q (2 * n)).re ↔
      goldbachMinorImagPhaseEnergy Q n ≤ goldbachMinorRealPhaseEnergy Q n + T := by
  rw [goldbachMinor_re_eq_phase_difference]
  constructor <;> intro h <;> linarith

/-- The needed balance is one-sided: the imaginary component may exceed
half the absolute energy by at most T/2. Large positive signed mass is free. -/
theorem goldbachMinor_lower_iff_imag_energy_half (Q n : ℕ) (T : ℝ) :
    -T ≤ (goldbachRationalMinorContribution Q (2 * n)).re ↔
      goldbachMinorImagPhaseEnergy Q n ≤
        (goldbachMinorAbsoluteIntegral Q (2 * n) + T) / 2 := by
  rw [goldbachMinor_re_eq_phase_difference, goldbachMinorAbsolute_eq_phase_sum]
  constructor <;> intro h <;> linarith

/-- The every-even target is unchanged under the half-target parameter n.
This is a reformulation, not a proof of either supplier. -/
theorem goldbachTwoArcSignedMinorSupplier_iff_phase_balance (N₀ : ℕ) :
    GoldbachTwoArcSignedMinorSupplier N₀ ↔
      ∀ n, N₀ ≤ 2 * n → 2 < 2 * n →
        goldbachMinorImagPhaseEnergy 2 n ≤
          goldbachMinorRealPhaseEnergy 2 n + (2 * (n : ℝ) + 1) := by
  constructor
  · intro h n hn htwo
    have heven : Even (2 * n) := ⟨n, by omega⟩
    have hs : -(2 * (n : ℝ) + 1) ≤
        (goldbachRationalMinorContribution 2 (2 * n)).re := by
      simpa only [Nat.cast_mul, Nat.cast_ofNat] using h (2 * n) hn htwo heven
    exact (goldbachMinor_lower_iff_phase_balance 2 n (2 * (n : ℝ) + 1)).1 hs
  · intro h N hN htwo heven
    rcases heven with ⟨n, hn⟩
    have heq : N = 2 * n := by omega
    rw [heq] at hN htwo ⊢
    have hm := (goldbachMinor_lower_iff_phase_balance 2 n (2 * (n : ℝ) + 1)).2
      (h n hN htwo)
    simpa only [Nat.cast_mul, Nat.cast_ofNat] using hm

end
end GRWTSK.NumberTheory.Primes.GoldbachMinorPhaseBalance
