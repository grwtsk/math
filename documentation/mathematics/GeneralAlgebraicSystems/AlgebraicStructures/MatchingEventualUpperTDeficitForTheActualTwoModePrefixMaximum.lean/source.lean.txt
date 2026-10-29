import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeRecords
import Mathlib.Algebra.Order.Floor.Semiring

/-!
# Matching eventual upper T^-2 deficit for the actual two-mode prefix maximum

Dirichlet's period index is chosen below floor(T/(2*pi)), and the fixed
badly-approximable lower price forces it beyond the initial endpoint.
Thus an actual point inside the complete prefix has deficit at most
(2*pi)^4/(2*T^2). Together with the checked lower deficit this proves the
two-sided eventual scale, without replacing the path or its supremum.
Human fixed-source direction: grwtsk contributors. Local quantitative
consumer: OpenAI Codex. Mathlib Dirichlet and cosine estimates remain upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeUpperDeficit
open CriticalTwoModeBasic CriticalTwoModeDiophantine CriticalTwoModeRecords
noncomputable section

theorem literal_prefix_deficit_eventual_upper {α t₀ : ℝ}
    (hα : BadlyApproximable α) :
    ∃ C R : ℝ, 0 < C ∧ 0 < R ∧ ∀ T : ℝ, R ≤ T →
      2-prefixMaximum α t₀ T ≤ C/T^2 := by
  obtain ⟨c,hc,hbad⟩ := hα
  let p : ℝ := 2*Real.pi
  have hp : 0 < p := by dsimp [p]; positivity
  let R := max t₀ (max p (t₀/c))
  refine ⟨p^4/2,R,by positivity,?_,?_⟩
  · exact hp.trans_le ((le_max_left _ _).trans (le_max_right _ _))
  intro T hT
  have hTt : t₀ ≤ T := (le_max_left _ _).trans hT
  have hTp : p ≤ T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
  have hTc : t₀/c ≤ T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
  have hTpos : 0 < T := hp.trans_le hTp
  let N := Nat.floor (T/p)
  have hNp : 0 < N := by
    have hN1 : 1 ≤ N := Nat.le_floor (by simpa using (one_le_div hp).2 hTp)
    omega
  have hNle : (N : ℝ) ≤ T/p := Nat.floor_le (div_nonneg hTpos.le hp.le)
  have hNlt : T/p < (N : ℝ)+1 := Nat.lt_floor_add_one _
  obtain ⟨j,hj,hjN,herr⟩ := Real.exists_nat_abs_mul_sub_round_le α hNp
  have hjR : (0 : ℝ) < (j : ℝ) := by exact_mod_cast hj
  have hjZ : (j : ℤ) ≠ 0 := by exact_mod_cast hj.ne'
  have hb := hbad (j : ℤ) hjZ (round ((j : ℝ)*α))
  simp only [Int.cast_natCast,abs_of_pos hjR] at hb
  rw [mul_comm α] at hb
  have hpaid : c*((N : ℝ)+1) ≤ (j : ℝ) := by
    simpa only [one_mul] using
      (div_le_div_iff₀ hjR (by positivity : (0 : ℝ) < (N : ℝ)+1)).mp (hb.trans herr)
  have hTperiod : T < p*((N : ℝ)+1) := by
    simpa only [mul_comm] using (div_lt_iff₀ hp).mp hNlt
  have hlate : t₀ ≤ p*(j : ℝ) := by
    have hct := (div_le_iff₀ hc).mp hTc
    have h1 := mul_lt_mul_of_pos_left hTperiod hc
    have h2 := mul_le_mul_of_nonneg_left hpaid hp.le
    nlinarith
  have hinside : p*(j : ℝ) ≤ T := by
    have hjNR : (j : ℝ) ≤ (N : ℝ) := by exact_mod_cast hjN
    exact (mul_le_mul_of_nonneg_left hjNR hp.le).trans
      (by simpa only [mul_comm] using (le_div_iff₀ hp).mp hNle)
  let r : ℝ := p*((j : ℝ)*α-(round ((j : ℝ)*α) : ℝ))
  have hcos : Real.cos r = Real.cos (α*(p*(j : ℝ))) := by
    have heq : r = α*(p*(j : ℝ))-(round ((j : ℝ)*α) : ℝ)*(2*Real.pi) := by
      dsimp [r,p]
      ring
    rw [heq,Real.cos_sub_int_mul_two_pi]
  have hvalue : twoMode α (p*(j : ℝ)) = 1+Real.cos r := by
    have h := literal_two_mode_integer_period_value α (j : ℤ)
    simp only [Int.cast_natCast] at h
    calc
      _ = twoMode α ((j : ℝ)*p) := by rw [mul_comm p]
      _ = 1+Real.cos (α*((j : ℝ)*p)) := h
      _ = _ := by rw [mul_comm (j : ℝ) p,← hcos]
  have he2 := pow_le_pow_left₀ (abs_nonneg _) herr 2
  rw [sq_abs,div_pow,one_pow] at he2
  have hr2 : r^2 ≤ p^2/((N : ℝ)+1)^2 := by
    simpa only [r,mul_pow,mul_one_div] using mul_le_mul_of_nonneg_left he2 (sq_nonneg p)
  have hscale : T^2 ≤ p^2*((N : ℝ)+1)^2 := by
    simpa only [mul_pow] using pow_le_pow_left₀ hTpos.le hTperiod.le 2
  have hcost : p^2/(2*((N : ℝ)+1)^2) ≤ p^4/(2*T^2) := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
    calc
      p^2*(2*T^2) = 2*(p^2*T^2) := by ring
      _ ≤ 2*(p^2*(p^2*((N : ℝ)+1)^2)) := by
        exact mul_le_mul_of_nonneg_left
          (mul_le_mul_of_nonneg_left hscale (sq_nonneg p)) (by norm_num)
      _ = p^4*(2*((N : ℝ)+1)^2) := by ring
  have hcoslow := Real.one_sub_sq_div_two_le_cos (x := r)
  have hprefix := literal_prefix_value_le α hTt ⟨hlate,hinside⟩
  rw [hvalue] at hprefix
  have hmid : 2-prefixMaximum α t₀ T ≤ p^2/(2*((N : ℝ)+1)^2) := by
    have h := div_le_div_of_nonneg_right hr2 (by norm_num : (0 : ℝ) ≤ 2)
    rw [div_div] at h
    rw [mul_comm (((N : ℝ)+1)^2) (2 : ℝ)] at h
    linarith
  have heq : p^4/(2*T^2) = (p^4/2)/T^2 := by ring
  exact hmid.trans (by rwa [heq] at hcost)

theorem literal_prefix_deficit_eventual_two_sided {α t₀ : ℝ}
    (hα : BadlyApproximable α) (ht₀ : 0 < t₀) :
    ∃ k C R : ℝ, 0 < k ∧ 0 < C ∧ 0 < R ∧ ∀ T : ℝ, R ≤ T →
      k/T^2 ≤ 2-prefixMaximum α t₀ T ∧ 2-prefixMaximum α t₀ T ≤ C/T^2 := by
  obtain ⟨k,hk,hlow⟩ := literal_prefix_maximum_uniform_deficit hα ht₀
  obtain ⟨C,R,hC,hR,hup⟩ := literal_prefix_deficit_eventual_upper hα
  refine ⟨k,C,max 1 (max t₀ R),hk,hC,?_,?_⟩
  · exact lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) (le_max_left _ _)
  intro T hT
  have hT1 : 1 ≤ T := (le_max_left _ _).trans hT
  have hTt : t₀ ≤ T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
  have hTR : R ≤ T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
  exact ⟨hlow T hT1 hTt,hup T hTR⟩

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeUpperDeficit
