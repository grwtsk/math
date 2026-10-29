import FormalResearch.RiemannHypothesis.ThetaTailLogSlope
import FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula

/-!
# Source coefficient log-concavity from the actual theta-tail hierarchy

The proved logarithmic-slope inheritance of the literal theta tails gives
log-concavity in the tail-order index. The exact factorial normalization then
transfers the even-index inequality to every actual xi coefficient. This is a
source-specific order-two inequality, not an all-orders positivity criterion.
-/

namespace FormalResearch.RiemannHypothesis.XiJensenTrace
open ThetaPositiveLift XiToeplitz
open MeasureTheory Set
noncomputable section

/-- Each adjacent triple of literal tails has the indicated order-index sign. -/
theorem thetaTail_index_logConcave (r : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail r t * thetaTail (r + 2) t ≤ thetaTail (r + 1) t ^ 2 := by
  have h := integralTail_logSlope_nonnegative
    (differentiable_thetaTail (r + 1)) (thetaTail_integrableOn (r + 1))
    (deriv_thetaTail_integrableOn (r + 1)) (thetaTail_tendsto_atTop (r + 1))
    (fun u hu => thetaTail_positive (r + 1) hu)
    (thetaTail_logSlope_antitone (r + 1)) ht
  rw [(hasDerivAt_thetaTail_succ r t).deriv] at h
  change 0 ≤ thetaTail (r + 1) t ^ 2 +
    (∫ u in Ici t, thetaTail (r + 1) u) * (-thetaTail r t) at h
  rw [← thetaTail_succ_eq_integral (r + 1) ht] at h
  nlinarith only [h]

/-- Positivity propagates adjacent order log-concavity to the even subsequence. -/
theorem thetaTail_even_index_logConcave (r : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail r t * thetaTail (r + 4) t ≤ thetaTail (r + 2) t ^ 2 := by
  have h0 := thetaTail_index_logConcave r ht
  have h1 := thetaTail_index_logConcave (r + 1) ht
  have h2 := thetaTail_index_logConcave (r + 2) ht
  simp only [Nat.add_assoc] at h1 h2
  have hp1 := thetaTail_positive (r + 1) ht
  have hp2 := thetaTail_positive (r + 2) ht
  have hp3 := thetaTail_positive (r + 3) ht
  have hp4 := thetaTail_positive (r + 4) ht
  have h03 : thetaTail r t * thetaTail (r + 3) t ≤
      thetaTail (r + 1) t * thetaTail (r + 2) t := by
    have ha := mul_le_mul_of_nonneg_right h0 hp3.le
    have hb := mul_le_mul_of_nonneg_right h1 hp1.le
    nlinarith only [ha, hb, hp2]
  have h14 : thetaTail (r + 1) t * thetaTail (r + 4) t ≤
      thetaTail (r + 2) t * thetaTail (r + 3) t := by
    have ha := mul_le_mul_of_nonneg_right h1 hp4.le
    have hb := mul_le_mul_of_nonneg_right h2 hp2.le
    nlinarith only [ha, hb, hp3]
  have ha := mul_le_mul_of_nonneg_right h03 hp4.le
  have hb := mul_le_mul_of_nonneg_right h14 hp2.le
  nlinarith only [ha, hb, hp3]

/-- The unchanged actual coefficient equals this factorial-normalized tail value. -/
theorem coefficient_eq_thetaTail (n : ℕ) :
    coefficient n = 8 * (4 : ℝ) ^ n * thetaTail (2 * n + 1) 0 := by
  rw [thetaCoefficientFormula n]
  unfold thetaTail
  simp only [sub_zero, evenBasis, mul_pow, ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with t
  rw [show (4 : ℝ) ^ n = 2 ^ (2 * n) by rw [show (4 : ℝ) = 2^2 by norm_num, pow_mul]]
  ring

/-- An unconditional Turán inequality for all actual xi coefficients. -/
theorem coefficient_logConcave (n : ℕ) :
    coefficient n * coefficient (n + 2) ≤ coefficient (n + 1) ^ 2 := by
  have h := thetaTail_even_index_logConcave (2 * n + 1) (t := 0) le_rfl
  rw [coefficient_eq_thetaTail n, coefficient_eq_thetaTail (n + 1),
    coefficient_eq_thetaTail (n + 2)]
  have hn1 : 2 * (n + 1) + 1 = (2 * n + 1) + 2 := by omega
  have hn2 : 2 * (n + 2) + 1 = (2 * n + 1) + 4 := by omega
  rw [hn1, hn2, pow_add, pow_add]
  norm_num
  have hmul := mul_le_mul_of_nonneg_left h (show 0 ≤ 1024 * ((4 : ℝ) ^ n) ^ 2 by positivity)
  nlinarith only [hmul]
end
end FormalResearch.RiemannHypothesis.XiJensenTrace
