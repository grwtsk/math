import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceKernelAnchor
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
# An exact polynomial adapter for the actual source correlation

The compactly supported correlation is restricted to its true overlap interval
before scaling and polynomial integration. No polynomial is used outside its
stated support domain.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceCorrelationPolynomial

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeNormalization
open PrimePowerDescent EstimatePrimeSmoothDefect EstimateMertensResidual

noncomputable section

/-- The pole-annihilated unit polynomial at inverse square scale `r`. -/
def unitDilation (r x : ℝ) : ℝ := r * unitSecond x - unitBump x / 4

/-- The normalized interior carries exactly the actual source normalization. -/
theorem normalizedInterior_eq_unitDilation (A x : ℝ) :
    normalizedInterior A x =
      unitDilation (1 / A ^ 2) (x / A) /
        (Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  dsimp [normalizedInterior, unitDilation, secondInterior, bumpInterior, unitSecond, unitBump]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- Positive displacements restrict the actual integral to the overlap of its supports. -/
theorem sourceCorrelation_eq_overlap (A v : ℝ) (hA : 1 ≤ A)
    (hv : 0 ≤ v) (hv2 : v ≤ 2) :
    sourceCorrelation explicitSecondDerivative A (A * v) =
      ∫ x in (A * v - A)..A, normalizedInterior A x * normalizedInterior A (x - A * v) := by
  have hA0 : 0 < A := by linarith
  have ht : 0 ≤ A * v := mul_nonneg hA0.le hv
  have ht2 : A * v ≤ 2 * A := by nlinarith
  unfold sourceCorrelation
  rw [normalizedTest_eq_indicator A hA0]
  have he : (fun x ↦ (Icc (-A) A).indicator (normalizedInterior A) x *
      (Icc (-A) A).indicator (normalizedInterior A) (x - A * v)) =
      (Icc (A * v - A) A).indicator
        (fun x ↦ normalizedInterior A x * normalizedInterior A (x - A * v)) := by
    funext x
    by_cases hx : x ∈ Icc (-A) A
    · by_cases hy : x - A * v ∈ Icc (-A) A
      · have hz : x ∈ Icc (A * v - A) A := ⟨by linarith [hy.1], hx.2⟩
        simp only [indicator_of_mem hx, indicator_of_mem hy, indicator_of_mem hz]
      · have hz : x ∉ Icc (A * v - A) A := by
          intro hz
          exact hy ⟨by linarith [hz.1], by linarith [hz.2]⟩
        simp only [indicator_of_notMem hy, mul_zero, indicator_of_notMem hz]
    · have hz : x ∉ Icc (A * v - A) A := by
        intro hz
        exact hx ⟨by linarith [hz.1], hz.2⟩
      simp only [indicator_of_notMem hx, zero_mul, indicator_of_notMem hz]
  rw [he, zeroExtension_integral _ _ _ (by linarith)]

/-- Scaling the true overlap removes precisely the Jacobian factor `A`. -/
theorem sourceCorrelation_eq_unit_integral (A v : ℝ) (hA : 1 ≤ A)
    (hv : 0 ≤ v) (hv2 : v ≤ 2) :
    sourceCorrelation explicitSecondDerivative A (A * v) =
      (∫ x in (v - 1)..1, unitDilation (1 / A ^ 2) x *
        unitDilation (1 / A ^ 2) (x - v)) / sourceNormalization A := by
  have hA0 : 0 < A := by linarith
  have hAn : A ≠ 0 := ne_of_gt hA0
  have hZ := source_normalization_pos A hA
  rw [sourceCorrelation_eq_overlap A v hA hv hv2]
  have he : (fun x ↦ normalizedInterior A x * normalizedInterior A (x - A * v)) =
      (fun x ↦ (unitDilation (1 / A ^ 2) (x / A) *
        unitDilation (1 / A ^ 2) (x / A - v)) / (A * sourceNormalization A)) := by
    funext x
    rw [normalizedInterior_eq_unitDilation, normalizedInterior_eq_unitDilation,
      div_mul_div_comm, ← sq, mul_pow, Real.sq_sqrt hA0.le, Real.sq_sqrt hZ.le]
    have hx : (x - A * v) / A = x / A - v := by field_simp
    rw [hx]
  rw [he, intervalIntegral.integral_div,
    intervalIntegral.integral_comp_div
      (fun x ↦ unitDilation (1 / A ^ 2) x * unitDilation (1 / A ^ 2) (x - v)) hAn]
  have hl : (A * v - A) / A = v - 1 := by field_simp
  rw [hl, div_self hAn]
  simp only [smul_eq_mul]
  field_simp

set_option maxHeartbeats 800000 in
-- Degree sixteen in x and degree eight in v require a larger finite ring-normalization budget.
/-- Collecting powers before integration retains the complete signed source polynomial. -/
theorem unitDilation_product_expansion (r v x : ℝ) :
    unitDilation r x * unitDilation r (x - v) =
    (
    (-7168 * r^2 * v^6 + 15360 * r^2 * v^4 - 9216 * r^2 * v^2 + 1024 * r^2 + 32 * r * v^8 - 352 *
      r * v^6 + 672 * r * v^4 - 416 * r * v^2 + 64 * r + v^8 - 4 * v^6 + 6 * v^4 - 4 * v^2 + 1) +
    (43008 * r^2 * v^5 - 61440 * r^2 * v^3 + 18432 * r^2 * v - 256 * r * v^7 + 2112 * r * v^5 -
      2688 * r * v^3 + 832 * r * v - 8 * v^7 + 24 * v^5 - 24 * v^3 + 8 * v) * x +
    (64512 * r^2 * v^6 - 245760 * r^2 * v^4 + 175104 * r^2 * v^2 - 18432 * r^2 - 288 * r * v^8 +
      2944 * r * v^6 - 8928 * r * v^4 + 6336 * r * v^2 - 832 * r - 4 * v^8 + 44 * v^6 - 84 * v^4 +
      52 * v^2 - 8) * x^2 +
    (-387072 * r^2 * v^5 + 696320 * r^2 * v^3 - 227328 * r^2 * v + 2304 * r * v^7 - 14080 * r *
      v^5 + 21632 * r * v^3 - 7296 * r * v + 32 * v^7 - 152 * v^5 + 176 * v^3 - 56 * v) * x^3 +
    (-107520 * r^2 * v^6 + 1198080 * r^2 * v^4 - 1075200 * r^2 * v^2 + 113664 * r^2 + 480 * r *
      v^8 - 11328 * r * v^6 + 38720 * r * v^4 - 30816 * r * v^2 + 3648 * r + 6 * v^8 - 136 * v^6 +
      346 * v^4 - 228 * v^2 + 28) * x^4 +
    (645120 * r^2 * v^5 - 2211840 * r^2 * v^3 + 872448 * r^2 * v - 3840 * r * v^7 + 35712 * r *
      v^5 - 65792 * r * v^3 + 24000 * r * v - 48 * v^7 + 368 * v^5 - 520 * v^3 + 168 * v) * x^5 +
    (50176 * r^2 * v^6 - 1720320 * r^2 * v^4 + 2414592 * r^2 * v^2 - 290816 * r^2 - 224 * r * v^8
      + 15232 * r * v^6 - 72384 * r * v^4 + 68224 * r * v^2 - 8000 * r - 4 * v^8 + 184 * v^6 - 664
      * v^4 + 500 * v^2 - 56) * x^6 +
    (-301056 * r^2 * v^5 + 2580480 * r^2 * v^3 - 1437696 * r^2 * v + 1792 * r * v^7 - 37632 * r *
      v^5 + 94464 * r * v^3 - 39680 * r * v + 32 * v^7 - 432 * v^5 + 800 * v^3 - 280 * v) * x^7 +
    (752640 * r^2 * v^4 - 2257920 * r^2 * v^2 + 359424 * r^2 - 6496 * r * v^6 + 60960 * r * v^4 -
      76896 * r * v^2 + 9920 * r + v^8 - 116 * v^6 + 666 * v^4 - 620 * v^2 + 70) * x^8 +
    (-1003520 * r^2 * v^3 + 1075200 * r^2 * v + 13888 * r * v^5 - 64640 * r * v^3 + 35520 * r * v
      - 8 * v^7 + 248 * v^5 - 680 * v^3 + 280 * v) * x^9 +
    (752640 * r^2 * v^2 - 215040 * r^2 - 19040 * r * v^4 + 43200 * r * v^2 - 7104 * r + 28 * v^6 -
      340 * v^4 + 444 * v^2 - 56) * x^10 +
    (-301056 * r^2 * v + 17024 * r * v^3 - 16512 * r * v - 56 * v^5 + 304 * v^3 - 168 * v) * x^11 +
    (50176 * r^2 - 9632 * r * v^2 + 2752 * r + 70 * v^4 - 172 * v^2 + 28) * x^12 +
    (3136 * r * v - 56 * v^3 + 56 * v) * x^13 +
    (-448 * r + 28 * v^2 - 8) * x^14 +
    (-8 * v) * x^15 +
    (1) * x^16
  ) / 16 := by
  dsimp [unitDilation, unitSecond, unitBump]
  ring

/-- The order-0 polynomial in the unit displacement variable. -/
def bumpCorrelation (v : ℝ) : ℝ :=
  (2 - v)^9 * (7 * v^8 + 126 * v^7 + 988 * v^6 + 4344 * v^5 + 11376 * v^4 + 17376 * v^3 + 15808 *
    v^2 + 8064 * v + 1792) / 1531530

/-- The order-1 polynomial in the unit displacement variable. -/
def bumpCorrelationFirst (v : ℝ) : ℝ :=
  (2 - v)^8 * (-7 * v^8 - 112 * v^7 - 768 * v^6 - 2880 * v^5 - 6144 * v^4 - 6912 * v^3 - 4096 *
    v^2 - 1024 * v) / 90090

/-- The order-2 polynomial in the unit displacement variable. -/
def bumpCorrelationSecond (v : ℝ) : ℝ :=
  (2 - v)^7 * (56 * v^8 + 784 * v^7 + 4592 * v^6 + 14112 * v^5 + 22464 * v^4 + 13440 * v^3 - 256 *
    v^2 - 3584 * v - 1024) / 45045

/-- The order-3 polynomial in the unit displacement variable. -/
def bumpCorrelationThird (v : ℝ) : ℝ :=
  (2 - v)^6 * (-280 * v^8 - 3360 * v^7 - 16240 * v^6 - 38080 * v^5 - 35328 * v^4 + 15104 * v^3 +
    27648 * v^2 + 9216 * v) / 15015

/-- The order-4 polynomial in the unit displacement variable. -/
def bumpCorrelationFourth (v : ℝ) : ℝ :=
  (2 - v)^5 * (3920 * v^8 + 39200 * v^7 + 147840 * v^6 + 224000 * v^5 - 27520 * v^4 - 418560 * v^3
    - 130560 * v^2 + 46080 * v + 18432) / 15015

/-- Exact ordinary differentiation in the unit displacement variable. -/
theorem bumpCorrelation_hasDerivAt (v : ℝ) :
    HasDerivAt bumpCorrelation (bumpCorrelationFirst v) v := by
  have hv := hasDerivAt_id v
  have hq := ((((((((((hv.pow 8).const_mul (7)).add ((hv.pow 7).const_mul (126))).add ((hv.pow
    6).const_mul (988))).add ((hv.pow 5).const_mul (4344))).add ((hv.pow 4).const_mul
    (11376))).add ((hv.pow 3).const_mul (17376))).add ((hv.pow 2).const_mul (15808))).add
    (hv.const_mul (8064))).add (hasDerivAt_const v (1792 : ℝ)))
  have h := ((((hasDerivAt_const v (2 : ℝ)).sub hv).pow 9).mul hq).div_const 1531530
  unfold bumpCorrelation bumpCorrelationFirst
  dsimp at h
  convert h using 1 <;> try rfl
  ring

/-- Exact ordinary differentiation in the unit displacement variable. -/
theorem bumpCorrelationFirst_hasDerivAt (v : ℝ) :
    HasDerivAt bumpCorrelationFirst (bumpCorrelationSecond v) v := by
  have hv := hasDerivAt_id v
  have hq := (((((((((hv.pow 8).const_mul (-7)).add ((hv.pow 7).const_mul (-112))).add ((hv.pow
    6).const_mul (-768))).add ((hv.pow 5).const_mul (-2880))).add ((hv.pow 4).const_mul
    (-6144))).add ((hv.pow 3).const_mul (-6912))).add ((hv.pow 2).const_mul (-4096))).add
    (hv.const_mul (-1024)))
  have h := ((((hasDerivAt_const v (2 : ℝ)).sub hv).pow 8).mul hq).div_const 90090
  unfold bumpCorrelationFirst bumpCorrelationSecond
  dsimp at h
  convert h using 1 <;> try rfl
  · funext x
    ring
  · ring

/-- Exact ordinary differentiation in the unit displacement variable. -/
theorem bumpCorrelationSecond_hasDerivAt (v : ℝ) :
    HasDerivAt bumpCorrelationSecond (bumpCorrelationThird v) v := by
  have hv := hasDerivAt_id v
  have hq := ((((((((((hv.pow 8).const_mul (56)).add ((hv.pow 7).const_mul (784))).add ((hv.pow
    6).const_mul (4592))).add ((hv.pow 5).const_mul (14112))).add ((hv.pow 4).const_mul
    (22464))).add ((hv.pow 3).const_mul (13440))).add ((hv.pow 2).const_mul (-256))).add
    (hv.const_mul (-3584))).add (hasDerivAt_const v (-1024 : ℝ)))
  have h := ((((hasDerivAt_const v (2 : ℝ)).sub hv).pow 7).mul hq).div_const 45045
  unfold bumpCorrelationSecond bumpCorrelationThird
  dsimp at h
  convert h using 1 <;> try rfl
  · funext x
    ring
  · ring

/-- Exact ordinary differentiation in the unit displacement variable. -/
theorem bumpCorrelationThird_hasDerivAt (v : ℝ) :
    HasDerivAt bumpCorrelationThird (bumpCorrelationFourth v) v := by
  have hv := hasDerivAt_id v
  have hq := (((((((((hv.pow 8).const_mul (-280)).add ((hv.pow 7).const_mul (-3360))).add ((hv.pow
    6).const_mul (-16240))).add ((hv.pow 5).const_mul (-38080))).add ((hv.pow 4).const_mul
    (-35328))).add ((hv.pow 3).const_mul (15104))).add ((hv.pow 2).const_mul (27648))).add
    (hv.const_mul (9216)))
  have h := ((((hasDerivAt_const v (2 : ℝ)).sub hv).pow 6).mul hq).div_const 15015
  unfold bumpCorrelationThird bumpCorrelationFourth
  dsimp at h
  convert h using 1 <;> try rfl
  · funext x
    ring
  · ring

/-- The named second polynomial is the literal second ordinary derivative of B. -/
theorem bumpCorrelationSecond_eq_deriv :
    bumpCorrelationSecond = deriv (deriv bumpCorrelation) := by
  have h1 : deriv bumpCorrelation = bumpCorrelationFirst :=
    funext fun v ↦ (bumpCorrelation_hasDerivAt v).deriv
  rw [h1]
  exact funext fun v ↦ (bumpCorrelationFirst_hasDerivAt v).deriv.symm

/-- The named fourth polynomial is the literal fourth ordinary derivative of B. -/
theorem bumpCorrelationFourth_eq_deriv :
    bumpCorrelationFourth = deriv (deriv (deriv (deriv bumpCorrelation))) := by
  rw [← bumpCorrelationSecond_eq_deriv]
  have h3 : deriv bumpCorrelationSecond = bumpCorrelationThird :=
    funext fun v ↦ (bumpCorrelationSecond_hasDerivAt v).deriv
  rw [h3]
  exact funext fun v ↦ (bumpCorrelationThird_hasDerivAt v).deriv.symm

set_option maxHeartbeats 1600000 in
-- The exact degree-seventeen endpoint calculation expands the complete signed polynomial.
/-- Exact integration, with both mixed terms retained before rational cancellation. -/
theorem unitDilation_product_integral (r v : ℝ) :
    (∫ x in (v - 1)..1, unitDilation r x * unitDilation r (x - v)) =
      bumpCorrelation v / 16 - r * bumpCorrelationSecond v / 2 +
        r ^ 2 * bumpCorrelationFourth v := by
  simp_rw [unitDilation_product_expansion]
  rw [intervalIntegral.integral_div]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  rw [intervalIntegral.integral_const_mul, integral_id]
  dsimp [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth]
  ring

/-- The supplied polynomial formula is an adapter from the unchanged actual integral. -/
theorem sourceCorrelation_eq_polynomial (A v : ℝ) (hA : 1 ≤ A)
    (hv : 0 ≤ v) (hv2 : v ≤ 2) :
    sourceCorrelation explicitSecondDerivative A (A * v) =
      (bumpCorrelation v / 16 - (1 / A ^ 2) * bumpCorrelationSecond v / 2 +
        (1 / A ^ 2) ^ 2 * bumpCorrelationFourth v) / sourceNormalization A := by
  rw [sourceCorrelation_eq_unit_integral A v hA hv hv2, unitDilation_product_integral]

/-- The polynomial adapter matches the unit normalized correlation at the origin. -/
theorem polynomial_normalization (A : ℝ) (hA : 1 ≤ A) :
    (bumpCorrelation 0 / 16 - (1 / A ^ 2) * bumpCorrelationSecond 0 / 2 +
      (1 / A ^ 2) ^ 2 * bumpCorrelationFourth 0) / sourceNormalization A = 1 := by
  apply (div_eq_one_iff_eq (ne_of_gt (source_normalization_pos A hA))).2
  norm_num [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth, sourceNormalization]
  ring

/-- All pieces of the displacement formula vanish at the support seam. -/
theorem polynomial_upper_seam :
    bumpCorrelation 2 = 0 ∧ bumpCorrelationSecond 2 = 0 ∧ bumpCorrelationFourth 2 = 0 := by
  norm_num [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth]

/-- Reflection transports the exact formula to the negative displacement half. -/
theorem sourceCorrelation_neg_eq_polynomial (A v : ℝ) (hA : 1 ≤ A)
    (hv : 0 ≤ v) (hv2 : v ≤ 2) :
    sourceCorrelation explicitSecondDerivative A (-(A * v)) =
      (bumpCorrelation v / 16 - (1 / A ^ 2) * bumpCorrelationSecond v / 2 +
        (1 / A ^ 2) ^ 2 * bumpCorrelationFourth v) / sourceNormalization A := by
  rw [sourceCorrelation_even A, sourceCorrelation_eq_polynomial A v hA hv hv2]

/-- Converting a displacement derivative to the original variable retains its factor `1/A`. -/
theorem bumpCorrelation_scaled_hasDerivAt (A t : ℝ) :
    HasDerivAt (fun x ↦ bumpCorrelation (x / A))
      (bumpCorrelationFirst (t / A) / A) t := by
  simpa only [Function.comp_def, id_eq, div_eq_mul_inv, one_mul] using
    (bumpCorrelation_hasDerivAt (t / A)).comp t ((hasDerivAt_id t).div_const A)

/-- The unchanged residual is the complete prime-power sum with the exact source weight. -/
theorem mertensResidual_eq_polynomial_sum (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      ∑ n ∈ primePowerInventory (2 * A),
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          ((bumpCorrelation (Real.log n / A) / 16 -
            (1 / A ^ 2) * bumpCorrelationSecond (Real.log n / A) / 2 +
            (1 / A ^ 2) ^ 2 * bumpCorrelationFourth (Real.log n / A)) /
              sourceNormalization A) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment]
  apply Finset.sum_congr rfl
  intro n hn
  have hA0 : 0 < A := by linarith
  have hn2 : 2 ≤ n := (Finset.mem_Icc.mp hn).1
  have hlog : 0 ≤ Real.log n := Real.log_nonneg (by norm_cast; omega)
  have hv := sourceCorrelation_eq_polynomial A (Real.log n / A) hA
    (div_nonneg hlog hA0.le)
    ((div_le_iff₀ hA0).2 ((inventory_log_bounds (2 * A) n hn).2))
  rw [mul_div_cancel₀ _ (ne_of_gt hA0)] at hv
  rw [exponentialTest_log _ n (by omega), hv]
  ring

/-- At unit scale the actual normalized correlation has a strictly negative value. -/
theorem sourceCorrelation_one_negative :
    sourceCorrelation explicitSecondDerivative 1 1 < 0 := by
  have h := sourceCorrelation_eq_polynomial 1 1 (by norm_num) (by norm_num) (by norm_num)
  norm_num only [one_mul] at h
  rw [h]
  norm_num [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth, sourceNormalization]

/-- A second exact value is positive, protecting the signed nature of the same source. -/
theorem sourceCorrelation_three_halves_positive :
    0 < sourceCorrelation explicitSecondDerivative 1 (3 / 2) := by
  have h := sourceCorrelation_eq_polynomial 1 (3 / 2)
    (by norm_num) (by norm_num) (by norm_num)
  norm_num only [one_mul] at h
  rw [h]
  norm_num [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth, sourceNormalization]

end
end EstimateSourceCorrelationPolynomial
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
