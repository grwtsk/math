/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.PrimeFactorFilters
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.AbelSummation

/-! A coarse, unconditional logarithmic prime-mass allowance suffices for
scale induction. No sharp Mertens constant or RH premise is needed. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set Real
open scoped BigOperators

def harmonicPrimeMass (P : Finset ℕ) : ℝ := ∑ p ∈ P, (p : ℝ)⁻¹

theorem harmonicPrimeMass_nonneg (P : Finset ℕ) : 0 ≤ harmonicPrimeMass P := by
  apply Finset.sum_nonneg
  intro p _
  positivity

private def massWeight (x : ℝ) : ℝ := (x * log x)⁻¹
private def massDensity (x : ℝ) : ℝ := (x * log x)⁻¹ + (x * log x ^ 2)⁻¹
private def massPrimitive (x : ℝ) : ℝ := log (log x) - (log x)⁻¹

private theorem massWeight_deriv {x : ℝ} (hx : 1 < x) :
    HasDerivAt massWeight (-(log x + 1) / (x * log x)^2) x := by
  have hx0 : x ≠ 0 := by linarith
  have hl0 : log x ≠ 0 := (log_pos hx).ne'
  have h := ((hasDerivAt_id x).mul (hasDerivAt_log hx0)).inv (mul_ne_zero hx0 hl0)
  change HasDerivAt (fun t : ℝ ↦ (t * log t)⁻¹) _ x
  convert! h using 1
  simp only [Pi.mul_apply, id_eq, mul_inv_cancel₀ hx0, one_mul]

private theorem massPrimitive_deriv {x : ℝ} (hx : 1 < x) :
    HasDerivAt massPrimitive (massDensity x) x := by
  have hx0 : x ≠ 0 := by linarith
  have hl0 : log x ≠ 0 := (log_pos hx).ne'
  change HasDerivAt (fun t : ℝ ↦ log (log t) - (log t)⁻¹) _ x
  convert! ((hasDerivAt_log hx0).log hl0).sub ((hasDerivAt_log hx0).inv hl0) using 1
  unfold massDensity
  field_simp
  ring

private theorem prime_mass_abel {x : ℝ} (hx : 2 ≤ x) :
    (∑ p ∈ (Finset.Icc 0 ⌊x⌋₊).filter Nat.Prime, (p : ℝ)⁻¹) =
      massWeight x * Chebyshev.theta x -
        ∫ t in (2 : ℝ)..x, deriv massWeight t * Chebyshev.theta t := by
  let c : ℕ → ℝ := fun n ↦ if n.Prime then log n else 0
  have hid (t : ℝ) : (∑ n ∈ Finset.Icc 0 ⌊t⌋₊, c n) = Chebyshev.theta t := by
    simp [c, Chebyshev.theta_eq_sum_Icc, Finset.sum_filter]
  have hw : ∀ t ∈ Icc 2 x, DifferentiableAt ℝ massWeight t :=
    fun t ht ↦ (massWeight_deriv (by linarith [ht.1])).differentiableAt
  have hd : IntegrableOn (deriv massWeight) (Icc 2 x) := by
    apply ContinuousOn.integrableOn_Icc
    apply ContinuousOn.congr (f := fun t : ℝ ↦ -(log t + 1) / (t * log t)^2)
    · intro t ht
      have ht0 : t ≠ 0 := by linarith [ht.1]
      have hlt : log t ≠ 0 := (log_pos (by linarith [ht.1])).ne'
      exact ContinuousAt.continuousWithinAt (by fun_prop (disch := aesop))
    · intro t ht
      exact (massWeight_deriv (x := t) (by linarith [ht.1])).deriv
  have hab := sum_mul_eq_sub_integral_mul₁ c (by simp [c]) (by simp [c]) x hw hd
  rw [hid, ← intervalIntegral.integral_of_le hx] at hab
  simp_rw [hid] at hab
  rw [← hab, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hn : n.Prime
  · have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast hn.ne_zero
    have hl0 : log (n : ℝ) ≠ 0 := (log_pos (by exact_mod_cast hn.one_lt)).ne'
    simp only [c, if_pos hn, massWeight]
    field_simp
  · simp [c, hn]

private theorem prime_mass_bound {x : ℝ} (hx : 2 ≤ x) :
    (∑ p ∈ (Finset.Icc 0 ⌊x⌋₊).filter Nat.Prime, (p : ℝ)⁻¹) ≤
      log 4 * ((log 2)⁻¹ + log (log x) - log (log 2)) := by
  have hx1 : 1 < x := by linarith
  have hcont : ContinuousOn massDensity (Icc 2 x) := by
    unfold massDensity
    intro t ht
    have ht0 : t ≠ 0 := by linarith [ht.1]
    have hlt : log t ≠ 0 := (log_pos (by linarith [ht.1])).ne'
    exact ContinuousAt.continuousWithinAt (by fun_prop (disch := aesop))
  have hi : IntervalIntegrable massDensity volume 2 x := by
    rw [intervalIntegrable_iff_integrableOn_Icc_of_le hx]
    exact hcont.integrableOn_Icc
  have hint : (∫ t in (2 : ℝ)..x, massDensity t) = massPrimitive x - massPrimitive 2 :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t ht ↦ massPrimitive_deriv (by rw [uIcc_of_le hx] at ht; linarith [ht.1])) hi
  have hdcont : ContinuousOn (deriv massWeight) (Icc 2 x) := by
    apply ContinuousOn.congr (f := fun t : ℝ ↦ -(log t + 1) / (t * log t)^2)
    · intro t ht
      have ht0 : t ≠ 0 := by linarith [ht.1]
      have hlt : log t ≠ 0 := (log_pos (by linarith [ht.1])).ne'
      exact ContinuousAt.continuousWithinAt (by fun_prop (disch := aesop))
    · intro t ht
      exact (massWeight_deriv (x := t) (by linarith [ht.1])).deriv
  have htheta : IntervalIntegrable Chebyshev.theta volume 2 x :=
    Chebyshev.theta_mono.intervalIntegrable
  have hid : IntervalIntegrable (deriv massWeight) volume 2 x := by
    rw [intervalIntegrable_iff_integrableOn_Icc_of_le hx]
    exact hdcont.integrableOn_Icc
  have hprod : IntervalIntegrable (fun t ↦ -(deriv massWeight t * Chebyshev.theta t)) volume 2 x :=
    (htheta.mul_continuousOn (by simpa [uIcc_of_le hx] using hdcont)).neg.congr
      (fun t _ ↦ by change -(Chebyshev.theta t * deriv massWeight t) = _; ring)
  have hle : (∫ t in (2 : ℝ)..x, -(deriv massWeight t * Chebyshev.theta t)) ≤
      log 4 * (massPrimitive x - massPrimitive 2) := by
    rw [← hint, ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_mono_on hx hprod (hi.const_mul _)
    intro t ht
    have ht1 : 1 < t := by linarith [ht.1]
    have ht0 : 0 < t := by linarith
    have hlt : 0 < log t := log_pos ht1
    rw [(massWeight_deriv ht1).deriv]
    have he : -(-(log t + 1) / (t * log t)^2 * Chebyshev.theta t) =
        ((log t + 1) / (t * log t)^2) * Chebyshev.theta t := by ring
    rw [he]
    calc
      _ ≤ ((log t + 1) / (t * log t)^2) * (log 4 * t) :=
        mul_le_mul_of_nonneg_left (Chebyshev.theta_le_log4_mul_x ht0.le) (by positivity)
      _ = log 4 * massDensity t := by unfold massDensity; field_simp
  have hend : massWeight x * Chebyshev.theta x ≤ log 4 * (log x)⁻¹ := by
    calc
      _ ≤ massWeight x * (log 4 * x) :=
        mul_le_mul_of_nonneg_left (Chebyshev.theta_le_log4_mul_x (by linarith)) (by unfold massWeight; have := log_pos hx1; positivity)
      _ = _ := by unfold massWeight; field_simp
  rw [prime_mass_abel hx]
  rw [intervalIntegral.integral_neg] at hle
  unfold massPrimitive at hle
  nlinarith

/-- Explicit coarse constants; the prime harmonic mass costs only log(1+T). -/
theorem harmonicPrimeMass_log_bound {T : ℝ} (hT : 0 ≤ T) :
    harmonicPrimeMass (pickupPrimes T) ≤
      log 4 * ((log 2)⁻¹ + |log (log 2)|) + log 4 * log (1 + T) := by
  have hl4 : 0 ≤ log (4 : ℝ) := log_nonneg (by norm_num)
  by_cases hsmall : Real.exp T < 2
  · have hempty : pickupPrimes T = ∅ := by
      apply Finset.eq_empty_iff_forall_notMem.mpr
      intro p hp
      have hp' := Finset.mem_filter.mp hp
      have hle := (Nat.le_floor_iff (exp_pos T).le).mp (Finset.mem_Icc.mp hp'.1).2
      have ht : (2 : ℝ) ≤ p := by exact_mod_cast hp'.2.two_le
      linarith
    rw [hempty]
    simp only [harmonicPrimeMass, Finset.sum_empty]
    have : 0 ≤ log (1 + T) := log_nonneg (by linarith)
    positivity
  · have hx : 2 ≤ exp T := le_of_not_gt hsmall
    have htpos : 0 < T := by
      have := (log_le_log (by norm_num) hx)
      rw [log_exp] at this
      exact lt_of_lt_of_le (log_pos (by norm_num : (1 : ℝ) < 2)) this
    have hsets : pickupPrimes T = (Finset.Icc 0 ⌊exp T⌋₊).filter Nat.Prime := by
      ext p
      simp only [pickupPrimes, Finset.mem_filter, Finset.mem_Icc]
      constructor
      · intro h; exact ⟨⟨Nat.zero_le _, h.1.2⟩, h.2⟩
      · intro h; exact ⟨⟨h.2.one_le, h.1.2⟩, h.2⟩
    have hb := prime_mass_bound hx
    rw [← hsets, log_exp] at hb
    change harmonicPrimeMass (pickupPrimes T) ≤ _ at hb
    have hlog : log T ≤ log (1 + T) := log_le_log htpos (by linarith)
    have habs := neg_le_abs (log (log (2 : ℝ)))
    nlinarith

end GRWTSK.RiemannHypothesis.CCC
