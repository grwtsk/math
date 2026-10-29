import FormalResearch.RiemannHypothesis.SourceBoundaryLayer
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.Analysis.Meromorphic.Order

/-!
# Exact algebraic Riesz kernels for the native source

The polynomial extension agrees with the physical boundary kernel only on its
proved source interval. Its independently defined complex rational transform
does not assert convergence of any integral outside the right half-plane.
No Perron inversion, contour displacement, zero summability, or arithmetic
estimate is assumed here.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.BoundaryRieszKernel

open MeasureTheory Filter Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceScaledKernel SourceBoundaryLayer PoleDifferentialCorrelation

noncomputable section

/-- The algebraic polynomial extension of the actual finite-radius boundary kernel. -/
def extendedBoundaryKernel (A y : ℝ) : ℝ :=
  (y ^ 9 / 16 * endpointPolynomialZero (y / A) +
    y ^ 7 / 2 * endpointPolynomialOne (y / A) +
      y ^ 5 * endpointPolynomialTwo (y / A)) / sourceNormalization A

/-- The extension agrees with the actual physical kernel on its proved source interval. -/
theorem extended_boundary_kernel_eq_boundary_kernel (A y : ℝ) (hA : 1 ≤ A)
    (hy : 0 ≤ y) (hyA : y ≤ 2 * A) :
    extendedBoundaryKernel A y = boundaryKernel A y := by
  exact (boundary_kernel_exact A y hA hy hyA).symm

/-- Native differentiation gives the exact limiting squared-pole factorization. -/
theorem boundary_profile_eq_pole_operator_monomial (y : ℝ) :
    boundaryProfile y = (2431 / 224 : ℝ) *
      poleSquaredDifferentialOperator (fun t : ℝ ↦ t ^ 9) y := by
  unfold boundaryProfile poleSquaredDifferentialOperator
  rw [iteratedDeriv_pow, iteratedDeriv_pow]
  norm_num [Nat.descFactorial]
  ring

/-- The base endpoint polynomial before applying the squared pole operator. -/
def boundaryRieszBase (A y : ℝ) : ℝ :=
  y ^ 9 * endpointPolynomialZero (y / A)

/-- The exact rational coefficient of degree `j` in the native endpoint residual. -/
def rieszCoefficient (j : ℕ) : ℝ :=
  match j with
  | 0 => 128 / 315
  | 1 => -256 / 315
  | 2 => 2432 / 3465
  | 3 => -1184 / 3465
  | 4 => 4624 / 45045
  | 5 => -16 / 819
  | 6 => 8 / 3465
  | 7 => -1 / 6435
  | 8 => 1 / 218790
  | _ => 0

/-- The rational continuation is defined independently of a convergent integral. -/
def boundaryRieszTransform (A : ℝ) (s : ℂ) : ℂ :=
  ((s ^ 2 - 1 / 4) ^ 2 / (sourceNormalization A : ℂ)) *
    ∑ j ∈ Finset.range 9,
      (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
        ((A : ℂ) ^ j * s ^ (j + 10))

/-- The base polynomial has its exact finite monomial expansion. -/
theorem boundary_riesz_base_eq_monomial_sum (A y : ℝ) :
    boundaryRieszBase A y =
      ∑ j ∈ Finset.range 9, rieszCoefficient j / A ^ j * y ^ (j + 9) := by
  unfold boundaryRieszBase endpointPolynomialZero
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, rieszCoefficient]
  simp only [div_pow]
  ring

/-- Every native derivative of the base is the derivative of its finite monomial sum. -/
theorem boundary_riesz_base_iterated_deriv (A y : ℝ) (n : ℕ) :
    iteratedDeriv n (boundaryRieszBase A) y =
      ∑ j ∈ Finset.range 9, rieszCoefficient j / A ^ j *
        ((j + 9).descFactorial n : ℝ) * y ^ (j + 9 - n) := by
  have he : boundaryRieszBase A =
      fun t ↦ ∑ j ∈ Finset.range 9, rieszCoefficient j / A ^ j * t ^ (j + 9) := by
    funext t
    exact boundary_riesz_base_eq_monomial_sum A t
  rw [he, iteratedDeriv_fun_sum (fun j _ ↦ by fun_prop)]
  simp only [iteratedDeriv_const_mul_field, iteratedDeriv_pow, mul_assoc]

/-- All nine initial jets of the base vanish at the half-line boundary. -/
theorem boundary_riesz_base_zero_jets (A : ℝ) (n : ℕ) (hn : n ≤ 8) :
    iteratedDeriv n (boundaryRieszBase A) 0 = 0 := by
  rw [boundary_riesz_base_iterated_deriv]
  apply Finset.sum_eq_zero
  intro j hj
  have hz : (0 : ℝ) ^ (j + 9 - n) = 0 := zero_pow (by omega)
  rw [hz, mul_zero]

/-- The second derivative of the base is the native second endpoint polynomial. -/
theorem boundary_riesz_base_second_deriv (A y : ℝ) :
    iteratedDeriv 2 (boundaryRieszBase A) y =
      -y ^ 7 * endpointPolynomialOne (y / A) := by
  rw [boundary_riesz_base_iterated_deriv]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, rieszCoefficient]
  norm_num [Nat.descFactorial, endpointPolynomialOne, div_pow]
  ring

/-- The fourth derivative of the base is the native fourth endpoint polynomial. -/
theorem boundary_riesz_base_fourth_deriv (A y : ℝ) :
    iteratedDeriv 4 (boundaryRieszBase A) y =
      y ^ 5 * endpointPolynomialTwo (y / A) := by
  rw [boundary_riesz_base_iterated_deriv]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, rieszCoefficient]
  norm_num [Nat.descFactorial, endpointPolynomialTwo, div_pow]
  ring

/-- The finite extension is exactly the native squared pole operator applied to the base. -/
theorem extended_boundary_kernel_eq_pole_operator (A y : ℝ) :
    extendedBoundaryKernel A y =
      poleSquaredDifferentialOperator (boundaryRieszBase A) y / sourceNormalization A := by
  unfold poleSquaredDifferentialOperator
  rw [boundary_riesz_base_second_deriv, boundary_riesz_base_fourth_deriv]
  unfold extendedBoundaryKernel boundaryRieszBase
  ring

/-- The finite extension has its exact real monomial sum, with both derivative terms retained. -/
theorem extended_boundary_kernel_eq_monomial_sum (A y : ℝ) :
    extendedBoundaryKernel A y =
      (∑ j ∈ Finset.range 9, (rieszCoefficient j / A ^ j) *
        (((j + 9).descFactorial 4 : ℝ) * y ^ (j + 5) -
          ((j + 9).descFactorial 2 : ℝ) * y ^ (j + 7) / 2 + y ^ (j + 9) / 16)) /
        sourceNormalization A := by
  rw [extended_boundary_kernel_eq_pole_operator]
  unfold poleSquaredDifferentialOperator
  rw [boundary_riesz_base_iterated_deriv, boundary_riesz_base_iterated_deriv,
    boundary_riesz_base_eq_monomial_sum]
  simp only [Finset.sum_div, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  congr 1
  funext j
  have h4 : j + 9 - 4 = j + 5 := by omega
  have h2 : j + 9 - 2 = j + 7 := by omega
  rw [h4, h2]
  ring

/-- The meromorphic rational formula retains its explicit double factors at both pole parameters. -/
theorem boundary_riesz_transform_double_factor (A : ℝ) (s : ℂ) :
    boundaryRieszTransform A s = (s - 1 / 2) ^ 2 * (s + 1 / 2) ^ 2 *
      ((∑ j ∈ Finset.range 9,
        (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
          ((A : ℂ) ^ j * s ^ (j + 10))) / (sourceNormalization A : ℂ)) := by
  unfold boundaryRieszTransform
  ring

/-- The rational continuation vanishes at the right pole parameter for every radius. -/
theorem boundary_riesz_transform_at_right_pole (A : ℝ) :
    boundaryRieszTransform A (1 / 2) = 0 := by
  rw [boundary_riesz_transform_double_factor]
  norm_num

/-- The rational continuation vanishes at the left pole parameter without asserting an integral. -/
theorem boundary_riesz_transform_at_left_pole (A : ℝ) :
    boundaryRieszTransform A (-1 / 2) = 0 := by
  rw [boundary_riesz_transform_double_factor]
  norm_num

/-- The finite polynomial obtained by multiplying the rational transform by `s¹⁸`. -/
def boundaryRieszNumerator (A : ℝ) (s : ℂ) : ℂ :=
  ((s ^ 2 - 1 / 4) ^ 2 / (sourceNormalization A : ℂ)) *
    ∑ j ∈ Finset.range 9,
      (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) / (A : ℂ) ^ j * s ^ (8 - j)

/-- The exact pole-clearing identity holds away from the rational singularity. -/
theorem boundary_riesz_transform_pole_normalization (A : ℝ) (hA : 1 ≤ A)
    (s : ℂ) (hs : s ≠ 0) :
    s ^ 18 * boundaryRieszTransform A s = boundaryRieszNumerator A s := by
  have hAn : (A : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt (by linarith : 0 < A))
  have hZn : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (source_normalization_pos A hA)
  unfold boundaryRieszTransform boundaryRieszNumerator
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, rieszCoefficient]
  norm_num only [Nat.reduceAdd, Nat.reduceSub]
  field_simp
  ring

/-- The highest Laurent coefficient is the exact nonzero eighteenth-order coefficient. -/
theorem boundary_riesz_numerator_at_zero (A : ℝ) :
    boundaryRieszNumerator A 0 =
      (101606400 : ℂ) / ((sourceNormalization A : ℂ) * (A : ℂ) ^ 8) := by
  norm_num [boundaryRieszNumerator, Finset.sum_range_succ, rieszCoefficient, Nat.factorial]
  ring

/-- The eighteenth-order coefficient cannot vanish at an admitted positive radius. -/
theorem boundary_riesz_numerator_at_zero_ne_zero (A : ℝ) (hA : 1 ≤ A) :
    boundaryRieszNumerator A 0 ≠ 0 := by
  rw [boundary_riesz_numerator_at_zero]
  apply div_ne_zero (by norm_num)
  apply mul_ne_zero
  · exact_mod_cast ne_of_gt (source_normalization_pos A hA)
  · exact pow_ne_zero _ (by exact_mod_cast (ne_of_gt (by linarith : 0 < A)))

/-- The rational numerator is a genuine complex polynomial and is continuous everywhere. -/
theorem boundary_riesz_numerator_continuous (A : ℝ) :
    Continuous (boundaryRieszNumerator A) := by
  unfold boundaryRieszNumerator
  fun_prop

/-- The punctured eighteenth-order normalization has its exact nonzero leading limit. -/
theorem boundary_riesz_transform_pole_limit (A : ℝ) (hA : 1 ≤ A) :
    Tendsto (fun s : ℂ ↦ s ^ 18 * boundaryRieszTransform A s)
      (nhdsWithin 0 ({0}ᶜ))
      (nhds ((101606400 : ℂ) / ((sourceNormalization A : ℂ) * (A : ℂ) ^ 8))) := by
  have h : Tendsto (boundaryRieszNumerator A) (nhdsWithin 0 ({0}ᶜ))
      (nhds (boundaryRieszNumerator A 0)) :=
    (boundary_riesz_numerator_continuous A).continuousAt.tendsto.mono_left
      nhdsWithin_le_nhds
  rw [boundary_riesz_numerator_at_zero] at h
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with s hs
  have hsn : s ≠ 0 := by simpa using hs
  exact (boundary_riesz_transform_pole_normalization A hA s hsn).symm

/-- The independently defined rational transform is meromorphic at every complex parameter. -/
theorem boundary_riesz_transform_meromorphic_at (A : ℝ) (s : ℂ) :
    MeromorphicAt (boundaryRieszTransform A) s := by
  unfold boundaryRieszTransform
  fun_prop

/-- The rational continuation is analytic at every nonzero parameter. -/
theorem boundary_riesz_transform_analytic_at (A : ℝ) (s : ℂ) (hs : s ≠ 0) :
    AnalyticAt ℂ (boundaryRieszTransform A) s := by
  unfold boundaryRieszTransform
  simp only [div_eq_mul_inv, mul_inv_rev]
  fun_prop (disch := exact pow_ne_zero _ hs)

/-- The finite-radius rational continuation has an exact pole of order eighteen at zero. -/
theorem boundary_riesz_transform_order_at_zero (A : ℝ) (hA : 1 ≤ A) :
    meromorphicOrderAt (boundaryRieszTransform A) 0 = (-18 : WithTop ℤ) := by
  apply (meromorphicOrderAt_eq_int_iff (boundary_riesz_transform_meromorphic_at A 0)).2
  refine ⟨boundaryRieszNumerator A, ?_, boundary_riesz_numerator_at_zero_ne_zero A hA, ?_⟩
  · unfold boundaryRieszNumerator
    fun_prop
  · filter_upwards [self_mem_nhdsWithin] with s hs
    have hsn : s ≠ 0 := by simpa using hs
    simp only [sub_zero, smul_eq_mul]
    change boundaryRieszTransform A s = (s ^ (18 : ℕ))⁻¹ * boundaryRieszNumerator A s
    rw [← div_eq_inv_mul]
    apply (eq_div_iff (pow_ne_zero 18 hsn)).2
    simpa only [mul_comm] using boundary_riesz_transform_pole_normalization A hA s hsn

/-- The finite factorial coefficient sum is the square of the canonical source quartic. -/
theorem boundary_riesz_factorial_sum_eq_source_polynomial (A : ℝ) (hA : A ≠ 0)
    (s : ℂ) (hs : s ≠ 0) :
    (∑ j ∈ Finset.range 9,
      (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
        ((A : ℂ) ^ j * s ^ (j + 10))) =
      147456 * (ZeroSideTargets.transformPolynomial ((A : ℂ) * s)) ^ 2 /
        ((A : ℂ) ^ 8 * s ^ 18) := by
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hA
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, rieszCoefficient]
  norm_num [Nat.factorial, ZeroSideTargets.transformPolynomial]
  field_simp
  ring

/-- The finite rational transform retains the exact squared canonical source quartic. -/
theorem boundary_riesz_transform_eq_source_polynomial (A : ℝ) (hA : A ≠ 0)
    (s : ℂ) (hs : s ≠ 0) :
    boundaryRieszTransform A s =
      147456 * (s ^ 2 - 1 / 4) ^ 2 *
        (ZeroSideTargets.transformPolynomial ((A : ℂ) * s)) ^ 2 /
          ((sourceNormalization A : ℂ) * (A : ℂ) ^ 8 * s ^ 18) := by
  unfold boundaryRieszTransform
  rw [boundary_riesz_factorial_sum_eq_source_polynomial A hA s hs]
  ring

end

end FormalResearch.RiemannHypothesis.BoundaryRieszKernel
