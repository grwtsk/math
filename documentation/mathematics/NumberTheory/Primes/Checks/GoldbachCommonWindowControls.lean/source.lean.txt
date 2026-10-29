/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachCommonWindowBoundary
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for the Goldbach common singular window

These source controls retain the exact periodization, the distinction between
the intrinsic circle window and the ordinary symmetric real interval, the
strict safe-radius premise for the latter, and the fact that common-window
bookkeeping is not a Goldbach lower bound.

The controls have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachCommonWindowControls

open scoped Real
open Set Metric AddCircle MeasureTheory
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
open GRWTSK.NumberTheory.Primes.GoldbachCircleWindowGeometry
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary
open GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
open GRWTSK.NumberTheory.Primes.GoldbachCommonWindowBoundary

noncomputable section

local instance unitPeriodPositive : Fact (0 < (1 : ℝ)) := ⟨zero_lt_one⟩

/-- The local offset of a rational center is zero on the additive circle. -/
theorem offset_circle_center_control :
    goldbachOffsetCircle 1 3
        (goldbachRationalArcCenter 1 3) = 0 := by
  simp [goldbachOffsetCircle, goldbachRationalArcOffset]

/-- The inherited safe scale gives the exact small radius `1/19` in a
representative denominator-three case. -/
theorem safe_radius_control :
    goldbachRationalArcRadius 3 18 3 = (1 / 19 : ℝ) ∧
      goldbachRationalArcRadius 3 18 3 < (1 / 2 : ℝ) := by
  constructor <;>
    norm_num [goldbachRationalArcRadius]

/-- The boundary `2 Q^2 = N + 1` is not accepted by the strict safe-scale
premise. -/
theorem strict_scale_boundary_rejected :
    ¬ 2 * 3 ^ 2 < 17 + 1 := by
  norm_num

/-- The common circle-window theorem itself does not require the small-radius
condition. -/
theorem large_radius_circle_window_control :
    goldbachProgressionArcSingularIntegral 1 0 (0, 1) =
      goldbachCommonCircleSingularIntegral 1 0 1 := by
  exact goldbachProgressionArcSingularIntegral_eq_common
    (by decide)

/-- Outside the safe regime, the ordinary symmetric real interval is not
silently identified with the saturated circle window. -/
theorem large_radius_not_small_control :
    goldbachRationalArcRadius 1 0 1 = (1 : ℝ) ∧
      ¬ goldbachRationalArcRadius 1 0 1 < (1 / 2 : ℝ) := by
  constructor <;>
    norm_num [goldbachRationalArcRadius]

/-- At `N = 0`, the finite singular kernel is the constant one function. -/
theorem finite_singular_kernel_zero
    (β : ℝ) :
    goldbachFiniteSingularKernel 0 β = 1 := by
  simp [goldbachFiniteSingularKernel,
    goldbachIntegerExponentialKernel]

/-- The circle version of the zero-target singular kernel is also constant
one. -/
theorem finite_singular_kernelCircle_zero
    (z : AddCircle (1 : ℝ)) :
    goldbachFiniteSingularKernelCircle 0 z = 1 := by
  simp [goldbachFiniteSingularKernelCircle]

/-- At radius one the unit-circle window is saturated. -/
theorem circle_window_radius_one_univ :
    goldbachCircleWindow 1 0 1 =
      (Set.univ : Set (AddCircle (1 : ℝ))) := by
  unfold goldbachCircleWindow
  norm_num only [goldbachRationalArcRadius, Nat.cast_one, Nat.cast_zero, zero_add, mul_one, div_one]
  exact AddCircle.closedBall_eq_univ_of_half_period_le
    (1 : ℝ) one_ne_zero (0 : AddCircle (1 : ℝ))
    (by norm_num)

/-- The saturated circle integral has mass one at `N = 0`. -/
theorem common_circle_integral_zero :
    goldbachCommonCircleSingularIntegral 1 0 1 = 1 := by
  unfold goldbachCommonCircleSingularIntegral
  rw [circle_window_radius_one_univ, setIntegral_univ]
  simp [finite_singular_kernelCircle_zero, Measure.real,
    AddCircle.measure_univ]

/-- The naive real interval of radius one has length two. This is why the
small-radius premise is required before replacing the intrinsic circle window
by a symmetric real interval. -/
theorem symmetric_real_integral_zero :
    goldbachSymmetricRealSingularIntegral 1 0 1 = 2 := by
  unfold goldbachSymmetricRealSingularIntegral
  norm_num [goldbachRationalArcRadius,
    finite_singular_kernel_zero,
    Real.volume_real_Icc_of_le]

/-- Concrete hostile control: a large circle window and the naive symmetric
real interval are not equal as integrals. -/
theorem large_radius_symmetric_replacement_rejected :
    goldbachCommonCircleSingularIntegral 1 0 1 ≠
      goldbachSymmetricRealSingularIntegral 1 0 1 := by
  rw [common_circle_integral_zero,
    symmetric_real_integral_zero]
  norm_num

/-- Two reduced numerators at denominator three have the same clipped
singular integral in the inherited safe regime. -/
theorem denominator_three_common_window_control :
    goldbachProgressionArcSingularIntegral 3 18 (1, 3) =
      goldbachProgressionArcSingularIntegral 3 18 (2, 3) := by
  rw [goldbachProgressionArcSingularIntegral_eq_symmetric
      (by decide) (by norm_num),
    goldbachProgressionArcSingularIntegral_eq_symmetric
      (by decide) (by norm_num)]

/-- The full denominator-three block collapses to its arithmetic coefficient
times the common symmetric singular integral. -/
theorem denominator_three_block_control :
    goldbachProgressionDenominatorMajorBlock 3 18 3 =
      goldbachProgressionDenominatorCoefficient 3 18 *
        goldbachSymmetricRealSingularIntegral 3 18 3 := by
  exact goldbachProgressionDenominatorMajorBlock_eq_symmetric
    (by norm_num) (by norm_num) (by norm_num)

/-- Exact common-window bookkeeping can coexist with a zero exact Goldbach
count. -/
theorem common_window_not_goldbach_witness :
    goldbachCount 2 = 0 ∧
      goldbachProgressionArcSingularIntegral 1 2 (0, 1) =
        goldbachCommonCircleSingularIntegral 1 2 1 := by
  exact ⟨by decide,
    goldbachProgressionArcSingularIntegral_eq_common
      (by decide)⟩

end
end GRWTSK.NumberTheory.Primes.Checks.GoldbachCommonWindowControls
