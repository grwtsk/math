import FormalResearch.RiemannHypothesis.Conversation.MixtureBinomialWitness

/-!
# Binomial witness bounds the actual Euclidean least gain

Written conditioning direction 2026-10-09: grwtsk contributors. Local unit
witness and variational consumer: OpenAI Codex. Least gain is defined on the
actual finite measurement operator; no claimed zeta-zero identification or
unproved arithmetic cancellation enters this upper bound.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.MixtureLeastGain
open MixtureBinomialWitness
noncomputable section

def leastGain (m : ℕ) : ℝ := sInf {b : ℝ | ∃ v : EuclideanSpace ℂ (Fin (m + 1)),
  ‖v‖ = 1 ∧ b = ‖response m v‖}

theorem response_smul (m : ℕ) (a : ℂ) (v : EuclideanSpace ℂ (Fin (m + 1))) :
    response m (a • v) = a • response m v := by
  ext pr
  change (∑ j : Fin (m + 1), entry m pr.1 pr.2 j * (a * v j)) =
    a * ∑ j : Fin (m + 1), entry m pr.1 pr.2 j * v j
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem leastGain_le_unit_response (m : ℕ) (v : EuclideanSpace ℂ (Fin (m + 1)))
    (hv : ‖v‖ = 1) : leastGain m ≤ ‖response m v‖ := by
  apply csInf_le
  · refine ⟨0, ?_⟩
    rintro b ⟨w, _, rfl⟩
    exact norm_nonneg _
  · exact ⟨v, hv, rfl⟩

theorem leastGain_le_ratio (m : ℕ) (v : EuclideanSpace ℂ (Fin (m + 1))) (hv : v ≠ 0) :
    leastGain m ≤ ‖response m v‖ / ‖v‖ := by
  have hnorm : 0 < ‖v‖ := norm_pos_iff.mpr hv
  have hu : ‖((‖v‖⁻¹ : ℝ) : ℂ) • v‖ = 1 := by
    rw [norm_smul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity),
      inv_mul_cancel₀ hnorm.ne']
  have h := leastGain_le_unit_response m _ hu
  rw [response_smul, norm_smul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (by positivity)] at h
  simpa [div_eq_mul_inv, mul_comm] using h

theorem binomial_least_gain_bound {m : ℕ} (hm : 2 ≤ m) :
    leastGain m ≤ Real.sqrt (2 * (m + 1 : ℝ)) /
      Real.sqrt ((2 * m).choose m : ℝ) * (Real.log 3 / m) ^ m := by
  have hn : ‖witness m‖ = Real.sqrt ((2 * m).choose m : ℝ) := by
    have h := congrArg Real.sqrt (witness_norm_sq m)
    rw [Real.sqrt_sq (norm_nonneg _)] at h
    exact h
  have h := leastGain_le_ratio m (witness m) (witness_nonzero m)
  have hb := div_le_div_of_nonneg_right (response_norm_bound hm) (norm_nonneg (witness m))
  exact h.trans (by simpa [hn, div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using hb)

end
end GRWTSK.RiemannHypothesis.Conversation.MixtureLeastGain
