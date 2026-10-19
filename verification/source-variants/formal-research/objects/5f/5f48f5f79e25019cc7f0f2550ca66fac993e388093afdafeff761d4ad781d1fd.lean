import ThetaMomentMeasure
import Mathlib.MeasureTheory.Function.L2Space
import FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain

set_option autoImplicit false

/-!
# Actual theta polynomial vectors and mass normalization

Review-only adapter over the recorded unmerged PR151 positive tail measure.
No infinite Jacobi basis, unitary transport or RH covariance is assumed.
-/

namespace FormalResearch.RiemannHypothesis.ThetaMultiplicationAdapter

open MeasureTheory Polynomial Filter
open scoped Topology ComplexConjugate InnerProductSpace
open ThetaMomentMeasure
open ThetaMultiplicationDomain

noncomputable section

/-- Actual real polynomials embedded as complex observables belong to L². -/
theorem polynomial_memLp (p : ℝ[X]) {t : ℝ} (ht : 0 ≤ t) :
    MemLp (fun x : ℝ => ((p.eval x : ℝ) : ℂ)) 2 (momentMeasure t) := by
  have hc : Continuous (fun x : ℝ => ((p.eval x : ℝ) : ℂ)) :=
    Complex.continuous_ofReal.comp p.continuous
  apply (memLp_two_iff_integrable_sq_norm hc.aestronglyMeasurable).mpr
  simpa using polynomial_square_integrable p ht

/-- The actual polynomial L² vector, with the measure's original mass. -/
def polynomialVector (t : ℝ) (ht : 0 ≤ t) (p : ℝ[X]) : Lp ℂ 2 (momentMeasure t) :=
  (polynomial_memLp p ht).toLp (fun x : ℝ => ((p.eval x : ℝ) : ℂ))

/-- Its representative agrees almost everywhere with exact evaluation. -/
theorem polynomialVector_ae (p : ℝ[X]) {t : ℝ} (ht : 0 ≤ t) :
    polynomialVector t ht p =ᵐ[momentMeasure t] fun x : ℝ => ((p.eval x : ℝ) : ℂ) :=
  MemLp.coeFn_toLp (polynomial_memLp p ht)

/-- The constant polynomial vector is unnormalized. -/
def constantVector (t : ℝ) (ht : 0 ≤ t) : Lp ℂ 2 (momentMeasure t) :=
  polynomialVector t ht 1

/-- The polynomial power trajectory, without a bounded-operator assertion. -/
def powerVector (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : Lp ℂ 2 (momentMeasure t) :=
  polynomialVector t ht (Polynomial.X ^ n)

/-- Literal cyclic coefficients of the polynomial trajectory recover the
unnormalized theta moments. -/
theorem constant_power_inner (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    ⟪constantVector t ht, powerVector t ht n⟫_ℂ = (moment t n : ℂ) := by
  rw [L2.inner_def]
  calc
    _ = ∫ x : ℝ, ((x ^ n : ℝ) : ℂ) ∂momentMeasure t := by
      apply integral_congr_ae
      filter_upwards [polynomialVector_ae 1 ht,
        polynomialVector_ae (Polynomial.X ^ n) ht] with x hc hp
      change ⟪polynomialVector t ht 1 x,
        polynomialVector t ht (Polynomial.X ^ n) x⟫_ℂ = ((x ^ n : ℝ) : ℂ)
      rw [hc, hp]
      simp [RCLike.inner_apply]
    _ = _ := integral_complex_ofReal

/-- The total-mass moment is exactly the constant-vector norm square. -/
theorem constantVector_norm_sq {t : ℝ} (ht : 0 ≤ t) :
    ‖constantVector t ht‖ ^ 2 = moment t 0 := by
  have hp : powerVector t ht 0 = constantVector t ht := by
    simp [powerVector, constantVector]
  have hi := constant_power_inner 0 ht
  rw [hp] at hi
  rw [@norm_sq_eq_re_inner ℂ, hi]
  rfl

/-- Exact theta-tail normalization, preserving T₁ instead of replacing it by one. -/
theorem constantVector_norm_sq_eq_thetaTail_one {t : ℝ} (ht : 0 ≤ t) :
    ‖constantVector t ht‖ ^ 2 = ThetaPositiveLift.thetaTail 1 t := by
  rw [constantVector_norm_sq ht, moment_zero_eq_thetaTail_one ht]

/-- The actual constant-vector norm is the source's cyclic-vector mass factor. -/
theorem constantVector_norm {t : ℝ} (ht : 0 ≤ t) :
    ‖constantVector t ht‖ = cyclicVectorNorm t := by
  rw [cyclicVectorNorm, ← constantVector_norm_sq ht, Real.sqrt_sq (norm_nonneg _)]

/-- Normalize only the vector, leaving the theta measure itself unchanged. -/
def normalizedConstant (t : ℝ) (ht : 0 ≤ t) : Lp ℂ 2 (momentMeasure t) :=
  (cyclicVectorNorm t : ℂ)⁻¹ • constantVector t ht

/-- Its normalizing scalar is positive for every actual parameter t≥0. -/
theorem cyclicVectorNorm_positive {t : ℝ} (ht : 0 ≤ t) : 0 < cyclicVectorNorm t :=
  Real.sqrt_pos.mpr (moment_positive 0 ht)

/-- The normalized constant vector has literal unit norm. -/
theorem normalizedConstant_norm {t : ℝ} (ht : 0 ≤ t) :
    ‖normalizedConstant t ht‖ = 1 := by
  rw [normalizedConstant, norm_smul, norm_inv, Complex.norm_real,
    Real.norm_of_nonneg (cyclicVectorNorm_positive ht).le, constantVector_norm ht]
  exact inv_mul_cancel₀ (cyclicVectorNorm_positive ht).ne'

/-- Restore the exact unnormalized cyclic vector with the source mass factor. -/
theorem mass_smul_normalizedConstant {t : ℝ} (ht : 0 ≤ t) :
    (cyclicVectorNorm t : ℂ) • normalizedConstant t ht = constantVector t ht := by
  rw [normalizedConstant, smul_smul,
    mul_inv_cancel₀ (Complex.ofReal_ne_zero.mpr (cyclicVectorNorm_positive ht).ne'), one_smul]

/-- Every exact theta polynomial is admitted by the maximal multiplication domain. -/
theorem polynomialVector_mem_coordinateDomain (p : ℝ[X]) {t : ℝ} (ht : 0 ≤ t) :
    polynomialVector t ht p ∈ coordinateDomain (momentMeasure t) := by
  rw [mem_coordinateDomain]
  apply (polynomial_memLp (Polynomial.X * p) ht).ae_eq
  filter_upwards [polynomialVector_ae p ht] with x hx
  rw [hx]
  simp

/-- The polynomial vector equipped with its proved exact domain membership. -/
def polynomialDomainVector (t : ℝ) (ht : 0 ≤ t) (p : ℝ[X]) :
    coordinateDomain (momentMeasure t) :=
  ⟨polynomialVector t ht p, polynomialVector_mem_coordinateDomain p ht⟩

/-- Maximal multiplication acts on polynomial vectors by literal X·p. -/
theorem coordinateMultiplication_polynomial (p : ℝ[X]) {t : ℝ} (ht : 0 ≤ t) :
    coordinateMultiplication (momentMeasure t) (polynomialDomainVector t ht p) =
      polynomialVector t ht (Polynomial.X * p) := by
  apply Lp.ext
  filter_upwards [coordinateMultiplication_apply_ae (momentMeasure t) (polynomialDomainVector t ht p),
    polynomialVector_ae p ht, polynomialVector_ae (Polynomial.X * p) ht] with x hm hp hxp
  rw [hm]
  change (x : ℂ) * polynomialVector t ht p x = polynomialVector t ht (Polynomial.X * p) x
  rw [hp, hxp]
  simp

/-- Every power-trajectory step lies in the actual operator domain. -/
theorem powerVector_mem_coordinateDomain (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    powerVector t ht n ∈ coordinateDomain (momentMeasure t) :=
  polynomialVector_mem_coordinateDomain (Polynomial.X ^ n) ht

/-- The exact unbounded-operator trajectory has the frozen successor order. -/
theorem coordinateMultiplication_powerVector (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    coordinateMultiplication (momentMeasure t) (polynomialDomainVector t ht (Polynomial.X ^ n)) =
      powerVector t ht (n + 1) := by
  rw [coordinateMultiplication_polynomial]
  simp [powerVector, pow_succ']

/-- Weighted graph membership is checked for every actual theta polynomial. -/
theorem polynomialVector_graph_memLp (p : ℝ[X]) {t : ℝ} (ht : 0 ≤ t) :
    MemLp (polynomialVector t ht p) 2 (graphMeasure (momentMeasure t)) :=
  (mem_coordinateDomain_iff_graph_memLp (momentMeasure t) (polynomialVector t ht p)).mp
    (polynomialVector_mem_coordinateDomain p ht)

end
end FormalResearch.RiemannHypothesis.ThetaMultiplicationAdapter
