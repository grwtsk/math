/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenArithmeticFourierCoordinate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Literal weighted DFT form of the arithmetic Fourier coordinate

The source location is n/X-1. On the unit additive circle this differs from
n/X by exactly one period. Therefore the nonzero Fourier primitive at a source
atom is determined by the literal phase at n/X.

For k != 0:

  phi_k(location(X,n))
    = (exp(-2*pi*i*k*n/X)-1)/(-2*pi*i*k).

Consequently the finite prime coordinate is the weighted DFT discrepancy

  [sum (Lambda(n)/n) exp(-2*pi*i*k*n/X)
   - sum Lambda(n)/n] / (-2*pi*i*k).

The complete witness coordinate subtracts this finite arithmetic term from the
fixed continuum-background coordinate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
WEIGHTED_DFT_ARITHMETIC_COORDINATE_EXPOSED.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Literal unit-circle phase at the unshifted normalized arithmetic position n/X. -/
def greenDFTPhase (X : ℕ) (k : ℤ) (n : ℕ) : ℂ :=
  fourier (-k) (((n : ℝ) / (X : ℝ)) : AddCircle (1 : ℝ))

/-- The shifted source location and the unshifted normalized arithmetic point
are identical on the unit circle. -/
theorem location_coe_eq_normalized_coe
    (X n : ℕ) :
    (location X n : AddCircle (1 : ℝ)) =
      (((n : ℝ) / (X : ℝ)) : AddCircle (1 : ℝ)) := by
  unfold location
  have hperiod :=
    (AddCircle.coe_add_period (1 : ℝ)
      ((n : ℝ) / (X : ℝ) - 1))
  convert hperiod.symm using 1; ring

theorem fourier_at_location_eq_DFTPhase
    (X : ℕ) (k : ℤ) (n : ℕ) :
    fourier (-k) (location X n : AddCircle (1 : ℝ)) =
      greenDFTPhase X k n := by
  unfold greenDFTPhase
  rw [location_coe_eq_normalized_coe]

/-- The DFT phase is the expected complex exponential. -/
theorem greenDFTPhase_eq_exp
    (X : ℕ) (k : ℤ) (n : ℕ) :
    greenDFTPhase X k n =
      Complex.exp
        (-2 * (Real.pi : ℂ) * Complex.I * (k : ℂ) *
          ((n : ℝ) / (X : ℝ))) := by
  unfold greenDFTPhase
  rw [fourier_coe_apply]
  congr 1
  push_cast
  ring

/-- Exact nonzero-mode source atom coordinate in literal DFT phase form. -/
theorem fourierModeValue_location_eq_DFT
    {k : ℤ} (hk : k ≠ 0)
    (X n : ℕ) :
    fourierModeValue k (location X n) =
      (greenDFTPhase X k n - 1) /
        (-2 * Real.pi * Complex.I * k) := by
  rw [fourierModeValue_eq_phase_difference hk]
  rw [fourier_at_location_eq_DFTPhase]

def greenWeightedDFTPhaseSum
    (X : ℕ) (k : ℤ) : ℂ :=
  ∑ n ∈ window X,
    (coefficient n : ℂ) * greenDFTPhase X k n

def greenWindowCoefficientMassComplex
    (X : ℕ) : ℂ :=
  ∑ n ∈ window X, (coefficient n : ℂ)

/-- The finite von Mangoldt prime coordinate is exactly a weighted DFT
difference divided by the frequency scale. -/
theorem greenFourierPrimeCoordinate_eq_weightedDFT
    {k : ℤ} (hk : k ≠ 0)
    (X : ℕ) :
    greenFourierPrimeCoordinate X k =
      (greenWeightedDFTPhaseSum X k -
        greenWindowCoefficientMassComplex X) /
        (-2 * Real.pi * Complex.I * k) := by
  unfold greenFourierPrimeCoordinate
    greenWeightedDFTPhaseSum
    greenWindowCoefficientMassComplex
  simp_rw [fourierModeValue_location_eq_DFT hk]
  rw [← Finset.sum_sub_distrib, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro n _hn
  ring

/-- Full witness coordinate with the arithmetic term now in literal DFT form. -/
theorem greenArithmeticFourierCoordinate_eq_background_sub_weightedDFT
    {k : ℤ} (hk : k ≠ 0)
    (X : ℕ) :
    greenArithmeticFourierCoordinate X k =
      greenFourierBackgroundCoordinate k -
        (greenWeightedDFTPhaseSum X k -
          greenWindowCoefficientMassComplex X) /
          (-2 * Real.pi * Complex.I * k) := by
  unfold greenArithmeticFourierCoordinate
  rw [greenFourierPrimeCoordinate_eq_weightedDFT hk X]

end GRWTSK.RiemannHypothesis
