import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeDiophantine

/-!
# Polynomial lower deficit on every complete two-frequency prefix

The fixed badly approximable frequency and positive initial time give one
positive constant for every horizon T>=1 and every t in [t0,T]. The zero
nearest-period case is paid by the actual compact initial-prefix deficit;
all remaining times retain the full Diophantine price. This is the lower
bound needed by the energy obstruction, not a golden-ratio certificate or
an arithmetic regulator instance. Human uniform-prefix direction: grwtsk contributors. Local complete-prefix consumer: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeDeficit
open CriticalTwoModeBasic CriticalTwoModeDiophantine Set
noncomputable section

theorem weighted_pair_square_price (a x y : ℝ) :
    (a*x+y)^2 ≤ 2*(a^2+1)*(x^2+y^2) := by
  nlinarith [sq_nonneg (a*x-y), mul_nonneg (sq_nonneg a) (sq_nonneg y), sq_nonneg x]

theorem literal_nonzero_period_deficit_lower {α c t T : ℝ} (hc : 0 < c)
    (hbad : ∀ m : ℤ, m ≠ 0 → ∀ n : ℤ, c / |(m : ℝ)| ≤ |α * (m : ℝ) - (n : ℝ)|)
    (ht : 0 ≤ t) (htT : t ≤ T) (hT : 1 ≤ T) (hm : nearestPeriod t ≠ 0) :
    (4*c^2/(α^2+1)) / T^2 ≤ 2 - twoMode α t := by
  have hp := literal_nonzero_period_diophantine_price hbad ht htT hT hm
  have hp2 := pow_le_pow_left₀ (by positivity : (0 : ℝ) ≤ 2*Real.pi*c) hp 2
  have hs : (|α| * |periodResidual t| + |periodResidual (α*t)|)^2 ≤
      2*(α^2+1)*(periodResidual t^2+periodResidual (α*t)^2) := by
    simpa only [sq_abs] using
      weighted_pair_square_price |α| |periodResidual t| |periodResidual (α*t)|
  simp only [mul_pow] at hp2
  have hall := hp2.trans (mul_le_mul_of_nonneg_left hs (sq_nonneg T))
  have hr := literal_two_mode_residual_deficit α t
  rw [div_mul_eq_mul_div] at hr
  have hrpaid := (div_le_iff₀ (sq_pos_of_pos Real.pi_pos)).mp hr
  have ha : 0 < α^2+1 := by positivity
  have hTpos : 0 < T := by linarith
  have hrscaled := mul_le_mul_of_nonneg_left hrpaid (mul_nonneg ha.le (sq_nonneg T))
  have hpi : Real.pi^2 * (4*c^2) ≤
      Real.pi^2 * ((α^2+1)*T^2*(2-twoMode α t)) := by nlinarith
  have hcpaid := le_of_mul_le_mul_left hpi (sq_pos_of_pos Real.pi_pos)
  rw [div_div]
  apply (div_le_iff₀ (mul_pos ha (sq_pos_of_pos hTpos))).mpr
  nlinarith

theorem literal_badly_approximable_prefix_deficit {α t₀ : ℝ}
    (hα : BadlyApproximable α) (ht₀ : 0 < t₀) :
    ∃ k : ℝ, 0 < k ∧ ∀ T : ℝ, 1 ≤ T →
      ∀ t : ℝ, t ∈ Icc t₀ T → k/T^2 ≤ 2-twoMode α t := by
  obtain ⟨c, hc, hbad⟩ := hα
  have hi : Irrational α := badly_approximable_is_irrational ⟨c,hc,hbad⟩
  obtain ⟨δ,hδ,hd⟩ := literal_compact_prefix_has_positive_deficit hi ht₀
    (le_max_left t₀ (2*Real.pi))
  let k : ℝ := min (4*c^2/(α^2+1)) δ
  have hk : 0 < k := lt_min (by positivity) hδ
  refine ⟨k,hk,?_⟩
  intro T hT t ht
  by_cases hm : nearestPeriod t = 0
  · have hr := literal_period_residual_abs_le_pi t
    have he : periodResidual t = t := by simp [periodResidual,hm]
    rw [he,abs_of_pos (ht₀.trans_le ht.1)] at hr
    have htU : t ∈ Icc t₀ (max t₀ (2*Real.pi)) :=
      ⟨ht.1, hr.trans (by linarith [le_max_right t₀ (2*Real.pi),Real.pi_pos])⟩
    have hd' := hd t htU
    have hkδ : k ≤ δ := min_le_right _ _
    have hdiv : k/T^2 ≤ k := div_le_self hk.le (one_le_pow₀ hT)
    linarith
  · have hl := literal_nonzero_period_deficit_lower hc hbad
      (ht₀.trans_le ht.1).le ht.2 hT hm
    have hcomp : k/T^2 ≤ (4*c^2/(α^2+1))/T^2 :=
      div_le_div_of_nonneg_right (min_le_left _ _) (sq_nonneg T)
    exact hcomp.trans hl

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeDeficit
