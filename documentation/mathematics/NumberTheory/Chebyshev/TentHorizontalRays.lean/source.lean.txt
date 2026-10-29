/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.HorizontalLogDerivative
import GRWTSK.Analysis.Complex.TentHorizontalRayMajorant
import GRWTSK.NumberTheory.Chebyshev.TentLeftDecay
import Mathlib.Tactic.LinearCombination

set_option autoImplicit false

/-!
# Absolute horizontal rays for the actual tent/zeta integrand

At each nonzero avoided height, both horizontal rays exist separately as
absolutely integrable functions. The left-first residue formula has these
literal rays as its correction. Their growth is reduced to the FULL source
on the FIXED strip [-3,2], not an expanding horizontal segment. No rate for
that strip bound, infinite zero sum, or prime margin is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentHorizontalRays

open MeasureTheory Filter Set
open scoped Topology Interval BigOperators
open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.TentMellinInversion
open GRWTSK.Analysis.Complex.TentContourMajorants
open GRWTSK.Analysis.Complex.TentHorizontalRayMajorant
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.RiemannHypothesis.HorizontalLogDerivative
open GRWTSK.NumberTheory.Chebyshev.TentPerronLine
open GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours
open GRWTSK.NumberTheory.Chebyshev.TentLeftDecay
open GRWTSK.Analysis.Real.TentRationalCorrection

noncomputable section

/-- Literal left-to-right improper horizontal integral, with no hidden residue definition. -/
def horizontalRay (x h y : ℝ) : ℂ :=
  ∫ σ in Iic (2 : ℝ), integrand x h ((σ : ℂ) + (y : ℂ) * Complex.I)

theorem continuous_horizontal_integrand (x h y : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hy : y ≠ 0) (havoid : ∀ z : ZeroPoint, height z ≠ |y|) :
    Continuous (fun σ : ℝ => integrand x h ((σ : ℂ) + (y : ℂ) * Complex.I)) :=
  (continuous_horizontal_logDeriv y hy havoid).mul
    ((continuous_tentKernel x h hh ha).comp (by fun_prop))

/-- Actual multiplier transport; the core premise concerns only real parts in [-3,2]. -/
theorem norm_horizontal_integrand_le (x h y B : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hy : y ≠ 0) (hB : 0 ≤ B)
    (hcore : ∀ σ ∈ Icc (-3 : ℝ) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ B)
    (σ : ℝ) (hσ : σ ≤ 2) :
    ‖integrand x h ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      (B + 2 * mangoldtLineMass + (2 - σ) / 2) * numeratorProfile x h σ / (h * y ^ 2) := by
  have hq : 0 ≤ B + 2 * mangoldtLineMass + (2 - σ) / 2 := by
    linarith [mangoldtLineMass_nonneg]
  unfold integrand
  rw [norm_mul]
  calc
    _ ≤ (B + 2 * mangoldtLineMass + (2 - σ) / 2) *
        (numeratorProfile x h σ / (h * y ^ 2)) :=
      mul_le_mul (norm_horizontal_le_of_strip_bound y B hy hcore σ hσ)
        (norm_kernel_horizontal_le x h σ y hh ha hy) (norm_nonneg _) hq
    _ = _ := by ring

/-- Absolute convergence of EACH horizontal ray is derived, not inferred from cancellation. -/
theorem integrable_horizontal_ray (x h y : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hy : y ≠ 0) (havoid : ∀ z : ZeroPoint, height z ≠ |y|) :
    IntegrableOn (fun σ : ℝ => integrand x h ((σ : ℂ) + (y : ℂ) * Complex.I)) (Iic 2) := by
  obtain ⟨B, hB, hcore⟩ := exists_horizontal_strip_bound y hy havoid
  exact integrableOn_Iic_of_affine_envelope _
    (continuous_horizontal_integrand x h y hh ha hy havoid)
    x h (B + 2 * mangoldtLineMass) y hh ha
    (by linarith [mangoldtLineMass_nonneg]) hy
    (norm_horizontal_integrand_le x h y B hh ha hy hB hcore)

/-- A supplied fixed-strip bound gives an explicit FULL-ray norm-mass budget. -/
theorem integral_norm_horizontal_ray_le (x h y B : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hy : y ≠ 0) (havoid : ∀ z : ZeroPoint, height z ≠ |y|) (hB : 0 ≤ B)
    (hcore : ∀ σ ∈ Icc (-3 : ℝ) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ B) :
    (∫ σ in Iic (2 : ℝ), ‖integrand x h ((σ : ℂ) + (y : ℂ) * Complex.I)‖) ≤
      affineRayBudget x h (B + 2 * mangoldtLineMass) / y ^ 2 := by
  exact integral_norm_Iic_le_of_affine_envelope _
    (continuous_horizontal_integrand x h y hh ha hy havoid)
    x h (B + 2 * mangoldtLineMass) y hh ha
    (by linarith [mangoldtLineMass_nonneg]) hy
    (norm_horizontal_integrand_le x h y B hh ha hy hB hcore)

theorem norm_horizontalRay_le (x h y B : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hy : y ≠ 0) (havoid : ∀ z : ZeroPoint, height z ≠ |y|) (hB : 0 ≤ B)
    (hcore : ∀ σ ∈ Icc (-3 : ℝ) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ B) :
    ‖horizontalRay x h y‖ ≤ affineRayBudget x h (B + 2 * mangoldtLineMass) / y ^ 2 :=
  (norm_integral_le_integral_norm _).trans
    (integral_norm_horizontal_ray_le x h y B hh ha hy havoid hB hcore)

/-- The maintained negative-odd sequence exhausts the left endpoint of each ray. -/
theorem leftEdge_tendsto_atBot : Tendsto leftEdge atTop atBot := by
  apply tendsto_atBot.mpr
  intro b
  obtain ⟨K, hK⟩ := exists_nat_gt (-b)
  filter_upwards [eventually_ge_atTop K] with N hN
  have hcast : (K : ℝ) ≤ N := by exact_mod_cast hN
  unfold leftEdge
  linarith [Nat.cast_nonneg (α := ℝ) N]

/-- Separate absolute convergence identifies each finite-edge limit with its literal ray. -/
theorem horizontal_tendsto_ray (x h y : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hy : y ≠ 0) (havoid : ∀ z : ZeroPoint, height z ≠ |y|) :
    Tendsto (fun N : ℕ => horizontal (integrand x h) (leftEdge N) 2 y) atTop
      (𝓝 (horizontalRay x h y)) :=
  intervalIntegral_tendsto_integral_Iic 2
    (integrable_horizontal_ray x h y hh ha hy havoid) leftEdge_tendsto_atBot

/-- An exact left-first formula at fixed height; the remaining correction is NOT defined by subtraction. -/
theorem right_eq_residues_add_horizontalRays (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hT : 0 < T) (havoid : ∀ z : ZeroPoint, height z ≠ T) :
    vertical (integrand x h) 2 T / ((2 * Real.pi : ℝ) : ℂ) =
      ((h : ℂ) - (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
        (rationalTentCorrection x h : ℂ)) +
      (horizontalRay x h T - horizontalRay x h (-T)) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  have hp : ∀ z : ZeroPoint, height z ≠ |T| := by simpa [abs_of_pos hT] using havoid
  have hm : ∀ z : ZeroPoint, height z ≠ |-T| := by simpa [abs_of_pos hT] using havoid
  have hnew := ((horizontal_tendsto_ray x h T hh ha (ne_of_gt hT) hp).sub
    (horizontal_tendsto_ray x h (-T) hh ha (neg_ne_zero.mpr (ne_of_gt hT)) hm)).div_const
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I)
  have hold := horizontal_difference_tendsto_at_fixed_height x h T hh ha hT havoid
  have he := tendsto_nhds_unique hnew hold
  linear_combination -he

/-- Both signs are charged; the positive real normalization is pi*T^2. -/
theorem norm_combined_horizontalRays_le (x h T B : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hT : 0 < T) (havoid : ∀ z : ZeroPoint, height z ≠ T) (hB : 0 ≤ B)
    (hcore : ∀ y : ℝ, |y| = T → ∀ σ ∈ Icc (-3 : ℝ) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ B) :
    ‖(horizontalRay x h T - horizontalRay x h (-T)) /
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I)‖ ≤
      affineRayBudget x h (B + 2 * mangoldtLineMass) / (Real.pi * T ^ 2) := by
  have hp : ∀ z : ZeroPoint, height z ≠ |T| := by simpa [abs_of_pos hT] using havoid
  have hm : ∀ z : ZeroPoint, height z ≠ |-T| := by simpa [abs_of_pos hT] using havoid
  have hu := norm_horizontalRay_le x h T B hh ha (ne_of_gt hT) hp hB
    (hcore T (abs_of_pos hT))
  have hb := norm_horizontalRay_le x h (-T) B hh ha (neg_ne_zero.mpr (ne_of_gt hT)) hm hB
    (hcore (-T) (by simp [abs_of_pos hT]))
  rw [neg_sq] at hb
  have hq : ‖(((2 * Real.pi : ℝ) : ℂ) * Complex.I)‖ = 2 * Real.pi := by
    rw [norm_mul, Complex.norm_I, mul_one, Complex.norm_of_nonneg (by positivity)]
  rw [norm_div, hq]
  calc
    _ ≤ (affineRayBudget x h (B + 2 * mangoldtLineMass) / T ^ 2 +
        affineRayBudget x h (B + 2 * mangoldtLineMass) / T ^ 2) / (2 * Real.pi) :=
      div_le_div_of_nonneg_right ((norm_sub_le _ _).trans (add_le_add hu hb)) (by positivity)
    _ = _ := by field_simp [Real.pi_ne_zero, ne_of_gt hT]; ring

end
end GRWTSK.NumberTheory.Chebyshev.TentHorizontalRays
