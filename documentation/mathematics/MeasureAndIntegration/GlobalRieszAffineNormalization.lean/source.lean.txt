/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.RieszCorrectionNormalization
import GRWTSK.NumberTheory.Zeta.Riemann.RieszZeroContinuity
import GRWTSK.Analysis.Real.ContinuousMidpointAffine

/-! # Actual global affine normalization by two arithmetic values

Continuity of the actual zero series and correction primitive discharges the
regularity gate in the midpoint argument. The resulting source equality has
explicit coefficients determined by the canonical zero values at 2 and 3 and
the independently defined correction integrals. Identification of these
coefficients with the classical zeta special-value constants remains separate.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Interval
namespace GRWTSK.NumberTheory.Chebyshev.GlobalRieszAffineNormalization
open GRWTSK.Analysis.Real.RationalRieszPrimitive
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.Analysis.Real.ContinuousMidpointAffine
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
open GRWTSK.NumberTheory.Zeta.Riemann.RieszZeroContinuity
open TentSource RieszSourceSecondDifference RieszCorrectionNormalization

theorem primitive_eq_moments (a x : ℝ) (ha : 1 < a) (hax : a ≤ x) :
    rationalRieszPrimitive a x = -x * (∫ t in a..x, rationalDensity t) +
      (∫ t in a..x, t * rationalDensity t) := by
  have hf : IntervalIntegrable rationalDensity volume a x :=
    ContinuousOn.intervalIntegrable_of_Icc hax (rationalDensity_continuousOn ha)
  have htf : IntervalIntegrable (fun t => t * rationalDensity t) volume a x :=
    ContinuousOn.intervalIntegrable_of_Icc hax
      (continuous_id.continuousOn.mul (rationalDensity_continuousOn ha))
  have he : (∫ t in a..x, (x - t) * rationalDensity t) =
      x * (∫ t in a..x, rationalDensity t) - (∫ t in a..x, t * rationalDensity t) := by
    calc
      _ = ∫ t in a..x, (x * rationalDensity t - t * rationalDensity t) := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        ring
      _ = _ := by rw [intervalIntegral.integral_sub (hf.const_mul x) htf,
        intervalIntegral.integral_const_mul]
  unfold rationalRieszPrimitive
  rw [he]
  ring

theorem rationalRieszPrimitive_continuousOn (a b : ℝ) (ha : 1 < a) (hab : a ≤ b) :
    ContinuousOn (rationalRieszPrimitive a) (Icc a b) := by
  have hf : IntegrableOn rationalDensity (uIcc a b) volume := by
    rw [uIcc_of_le hab]
    exact (rationalDensity_continuousOn ha).integrableOn_Icc
  have htf : IntegrableOn (fun t => t * rationalDensity t) (uIcc a b) volume := by
    rw [uIcc_of_le hab]
    exact (continuous_id.continuousOn.mul (rationalDensity_continuousOn ha)).integrableOn_Icc
  have hJ := intervalIntegral.continuousOn_primitive_interval hf
  have hK := intervalIntegral.continuousOn_primitive_interval htf
  rw [uIcc_of_le hab] at hJ hK
  apply ContinuousOn.congr ((continuousOn_id.mul hJ).neg.add hK)
  intro x hx
  simpa only [Pi.add_apply, Pi.neg_apply, Pi.mul_apply, id_eq, neg_mul] using
    primitive_eq_moments a x ha hx.1

theorem correctedRieszSourceDefect_continuousOn (N : ℕ) (a : ℝ)
    (ha : 1 < a) (haN : a ≤ N) :
    ContinuousOn (correctedRieszSourceDefect N a) (Icc a (N : ℝ)) := by
  have hs : Continuous (firstRieszPrefix N) := by unfold firstRieszPrefix; fun_prop
  have hp : Continuous (fun x : ℝ => (x : ℂ) ^ 2 / 2) := by fun_prop
  unfold correctedRieszSourceDefect firstRieszSourceDefect
  exact ((Complex.continuous_ofReal.comp hs).continuousOn.sub
    (hp.continuousOn.add (fullRieszZeroValue_continuousOn a N ha))).sub
      (Complex.continuous_ofReal.comp_continuousOn (rationalRieszPrimitive_continuousOn a N ha haN))

/-- The actual corrected source is affine. No regularity or affine-defect
hypothesis remains; only the arithmetic interval and prefix bounds are required. -/
theorem correctedRieszSourceDefect_affine (N : ℕ) (a x : ℝ)
    (ha : 1 < a) (ha2 : a ≤ 2) (hN : 3 ≤ N) (hax : a ≤ x) (hxN : x ≤ N) :
    correctedRieszSourceDefect N a x = correctedRieszSourceDefect N a 2 +
      ((x - 2 : ℝ) : ℂ) *
        (correctedRieszSourceDefect N a 3 - correctedRieszSourceDefect N a 2) := by
  have hNR : (3 : ℝ) ≤ N := by exact_mod_cast hN
  apply affine_from_two (correctedRieszSourceDefect N a) a N (by linarith)
    (correctedRieszSourceDefect_continuousOn N a ha (by linarith)) ?_
    ⟨ha2, by linarith⟩ ⟨by linarith, hNR⟩ x ⟨hax, hxN⟩
  intro u hu v hv huv
  exact correctedRieszSourceDefect_midpoint N a u v ha hu.1 huv hv.2

def normalizationAtTwo (a : ℝ) : ℂ :=
  -2 - fullRieszZeroValue 2 - (rationalRieszPrimitive a 2 : ℂ)

def normalizationAtThree (a : ℝ) : ℂ :=
  (Real.log 2 : ℂ) - 9 / 2 - fullRieszZeroValue 3 - (rationalRieszPrimitive a 3 : ℂ)

/-- Boundary-normalized full source equality with the ACTUAL canonical Riesz
zero series. Classical zeta-constant identification and unsmoothing are not asserted. -/
theorem firstRieszPrefix_eq_boundary_normalized (N : ℕ) (a x : ℝ)
    (ha : 1 < a) (ha2 : a ≤ 2) (hN : 3 ≤ N) (hax : a ≤ x) (hxN : x ≤ N) :
    (firstRieszPrefix N x : ℂ) = (x : ℂ) ^ 2 / 2 + fullRieszZeroValue x +
      (rationalRieszPrimitive a x : ℂ) + normalizationAtTwo a +
        ((x - 2 : ℝ) : ℂ) * (normalizationAtThree a - normalizationAtTwo a) := by
  have he := correctedRieszSourceDefect_affine N a x ha ha2 hN hax hxN
  have h2 : correctedRieszSourceDefect N a 2 = normalizationAtTwo a := by
    unfold correctedRieszSourceDefect firstRieszSourceDefect normalizationAtTwo
    rw [firstRieszPrefix_two N (by omega)]
    norm_num
    ring
  have h3 : correctedRieszSourceDefect N a 3 = normalizationAtThree a := by
    unfold correctedRieszSourceDefect firstRieszSourceDefect normalizationAtThree
    rw [firstRieszPrefix_three N hN]
    norm_num
    ring
  rw [h2, h3] at he
  unfold correctedRieszSourceDefect firstRieszSourceDefect at he
  linear_combination he

/-- Oriented base change, including points lying to the left of the new base. -/
theorem primitive_change_base_all (a b x : ℝ) (ha : 1 < a) (hab : a ≤ b) (hax : a ≤ x) :
    rationalRieszPrimitive a x = rationalRieszPrimitive b x -
      x * (∫ t in a..b, rationalDensity t) + (∫ t in a..b, t * rationalDensity t) := by
  by_cases hbx : b ≤ x
  · exact rationalRieszPrimitive_change_base a b x ha hab hbx
  have hxb : x ≤ b := le_of_not_ge hbx
  have hi : IntervalIntegrable (fun t => (x - t) * rationalDensity t) volume a x :=
    ContinuousOn.intervalIntegrable_of_Icc hax
      ((continuous_const.sub continuous_id).continuousOn.mul (rationalDensity_continuousOn ha))
  have hj : IntervalIntegrable (fun t => (x - t) * rationalDensity t) volume x b :=
    ContinuousOn.intervalIntegrable_of_Icc hxb
      ((continuous_const.sub continuous_id).continuousOn.mul
        (rationalDensity_continuousOn (ha.trans_le hax)))
  have hf : IntervalIntegrable rationalDensity volume a b :=
    ContinuousOn.intervalIntegrable_of_Icc hab (rationalDensity_continuousOn ha)
  have htf : IntervalIntegrable (fun t => t * rationalDensity t) volume a b :=
    ContinuousOn.intervalIntegrable_of_Icc hab
      (continuous_id.continuousOn.mul (rationalDensity_continuousOn ha))
  have he : (∫ t in a..b, (x - t) * rationalDensity t) =
      x * (∫ t in a..b, rationalDensity t) - (∫ t in a..b, t * rationalDensity t) := by
    calc
      _ = ∫ t in a..b, (x * rationalDensity t - t * rationalDensity t) := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        ring
      _ = _ := by rw [intervalIntegral.integral_sub (hf.const_mul x) htf,
        intervalIntegral.integral_const_mul]
  have hadd := intervalIntegral.integral_add_adjacent_intervals hi hj
  unfold rationalRieszPrimitive
  rw [intervalIntegral.integral_symm x b]
  linarith

/-- Fixed-base boundary-normalized source identity for EVERY x>1.
The coefficients are explicit canonical zero values and correction integrals;
their classical special-value forms and the unsmoothed identity remain separate. -/
theorem firstRieszPrefix_eq_global_normalized (N : ℕ) (x : ℝ)
    (hx : 1 < x) (hN : 3 ≤ N) (hxN : x ≤ N) :
    (firstRieszPrefix N x : ℂ) = (x : ℂ) ^ 2 / 2 + fullRieszZeroValue x +
      (rationalRieszPrimitive 2 x : ℂ) + normalizationAtTwo 2 +
        ((x - 2 : ℝ) : ℂ) * (normalizationAtThree 2 - normalizationAtTwo 2) := by
  let a : ℝ := min x 2
  have ha : 1 < a := lt_min hx (by norm_num)
  have ha2 : a ≤ 2 := min_le_right _ _
  have hax : a ≤ x := min_le_left _ _
  have he := firstRieszPrefix_eq_boundary_normalized N a x ha ha2 hN hax hxN
  have hp := congrArg (fun t : ℝ => (t : ℂ)) (primitive_change_base_all a 2 x ha ha2 hax)
  have h2 := congrArg (fun t : ℝ => (t : ℂ))
    (primitive_change_base_all a 2 2 ha ha2 ha2)
  have h3 := congrArg (fun t : ℝ => (t : ℂ))
    (primitive_change_base_all a 2 3 ha ha2 (by linarith))
  push_cast at hp h2 h3
  unfold normalizationAtTwo normalizationAtThree at he ⊢
  push_cast at he ⊢
  linear_combination he + hp - (3 - (x : ℂ)) * h2 - ((x : ℂ) - 2) * h3

end GRWTSK.NumberTheory.Chebyshev.GlobalRieszAffineNormalization
