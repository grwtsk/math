import scratch.common_mean_20261004.FiveModeEndpointEnvelope

/-!
Pointwise comparison of the original 4*cosh(A/2)^2/A^9 tail envelope with
the proved continuum rational envelope. This is independent of the still
unproved actual zero-transform/counting/Stieltjes tail certificate.
Originating direction: grwtsk contributors. Lean assistance: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch

theorem actual_cosh_envelope_le_endpoint (A : ℝ) (hA : 1 ≤ A) :
    4 * Real.cosh (A/2)^2 / A^9 ≤ endpointEnvelope A := by
  have hpos : 0 < A^9 := by positivity
  unfold endpointEnvelope
  apply (div_le_div_iff₀ hpos hpos).2
  have he : 4 * Real.cosh (A/2)^2 = Real.exp A + 2 + Real.exp (-A) := by
    rw [Real.cosh_eq]
    have hp : Real.exp (A/2)^2 = Real.exp A := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    have hn : Real.exp (-(A/2))^2 = Real.exp (-A) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    have hm : Real.exp (A/2) * Real.exp (-(A/2)) = 1 := by
      rw [← Real.exp_add]
      simp
    nlinarith
  have hn : Real.exp (-A) ≤ 1 := (Real.exp_le_one_iff).2 (by linarith)
  rw [he]
  nlinarith

/-- The original finite envelope is bounded for every real scale, including
both endpoints. It has no all-scale boundedness conclusion. -/
theorem actual_cosh_envelope_le_rational_max (A : ℝ) (hA : 1 ≤ A) (hA160 : A ≤ 160) :
    4 * Real.cosh (A/2)^2 / A^9 ≤
      max (6 : ℝ) (((2719/1000 : ℝ)^160+3)/160^9) :=
  (actual_cosh_envelope_le_endpoint A hA).trans
    (endpointEnvelope_le_rational_max A hA hA160)

end CommonMeanScratch
