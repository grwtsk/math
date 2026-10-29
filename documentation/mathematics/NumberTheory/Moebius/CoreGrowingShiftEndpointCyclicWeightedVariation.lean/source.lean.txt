/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

This file specializes finite cyclic variation transfer to the authentic
original endpoint coordinates.  It imports no arithmetic endpoint kernel and
does not assert that any Möbius, Liouville, centered-fiber, or squarefree-gcd
coefficient sequence has small variation.
-/
import GRWTSK.NumberTheory.CharacterSums.FiniteCyclicWeightedVariation
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact variation of an arithmetic coefficient after reciprocal weighting,
using the authentic endpoint coordinate range. -/
def coreGrowingShiftEndpointTransverseReciprocalCoefficientVariation
    (a : ℕ → ℂ) (A B R : ℕ) : ℝ :=
  GRWTSK.NumberTheory.CharacterSums.finiteCyclicReciprocalCoefficientVariation
    a A B R

/-- Exact Abel identity for reciprocal-weighted arithmetic coefficients in the
original endpoint phase.  The terminal coefficient, every successor
difference, and every partial character sum remain visible. -/
theorem coreGrowingShiftEndpointTransverseWeightedReciprocal_Ico_eq_abel
    (a : ℕ → ℂ)
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hAB : A < B) :
    (∑ n ∈ Finset.Ico A B,
      a n * coreGrowingShiftEndpointTransverseNatCharacter j u n /
        (((n + R : ℕ) : ℂ))) =
      (a (B - 1) / ((((B - 1) + R : ℕ) : ℂ))) *
          (∑ n ∈ Finset.Ico A B,
            coreGrowingShiftEndpointTransverseNatCharacter j u n) +
        ∑ k ∈ Finset.Ico A (B - 1),
          (a k / (((k + R : ℕ) : ℂ)) -
              a (k + 1) / ((((k + 1) + R : ℕ) : ℂ))) *
            (∑ n ∈ Finset.Ico A (k + 1),
              coreGrowingShiftEndpointTransverseNatCharacter j u n) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter,
    div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using
    GRWTSK.NumberTheory.CharacterSums.sum_mul_stdAddChar_neg_Ico_eq_terminal_add_variation
      (q := coreGrowingShiftEndpointDoubledFourierModulus j)
      (a := fun n => a n / (((n + R : ℕ) : ℂ)))
      u A B hAB

/-- Authentic endpoint variation transfer.  This is valid for empty and
reversed intervals as well as nonempty intervals. -/
theorem coreGrowingShiftEndpointTransverseWeightedReciprocal_Ico_norm_le_variation
    (a : ℕ → ℂ)
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (hu : u ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        a n * coreGrowingShiftEndpointTransverseNatCharacter j u n /
          (((n + R : ℕ) : ℂ))‖ ≤
      ((coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
          (2 *
            (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ))) *
        coreGrowingShiftEndpointTransverseReciprocalCoefficientVariation
          a A B R := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter,
    coreGrowingShiftEndpointTransverseCircularDistance,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicCircularDistance,
    coreGrowingShiftEndpointTransverseReciprocalCoefficientVariation] using
    GRWTSK.NumberTheory.CharacterSums.norm_sum_mul_stdAddChar_neg_div_nat_add_Ico_le_variation
      (q := coreGrowingShiftEndpointDoubledFourierModulus j)
      a u A B R hA hu

/-- Literal affine-tail form matching the interval and denominator in
`coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier`, but allowing
an arbitrary arithmetic coefficient.  Empty literal intervals require no
special premise because their variation is defined to be zero. -/
theorem coreGrowingShiftEndpointTransverseTailHarmonicWeighted_norm_le_variation
    (a : ℕ → ℂ)
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hu : u ≠ 0) :
    ‖∑ n ∈ Finset.Ico (A + 1) B,
        a n * coreGrowingShiftEndpointTransverseNatCharacter j u n *
          (((n + R : ℕ) : ℂ))⁻¹‖ ≤
      ((coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
          (2 *
            (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ))) *
        coreGrowingShiftEndpointTransverseReciprocalCoefficientVariation
          a (A + 1) B R := by
  simpa [div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using
    coreGrowingShiftEndpointTransverseWeightedReciprocal_Ico_norm_le_variation
      a j (A + 1) B R u (by omega) hu

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
