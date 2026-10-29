import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Function.L1Space.Integrable

/-! Genuine nonnegative Fatou obstruction for a uniform integral budget.
No actual source limit, arithmetic L1, RH or signed estimate is assumed as an axiom.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.NegativeCostFatou
open MeasureTheory Filter
open scoped Topology

/-- Uniform integrals of genuine nonnegative L1 functions force their pointwise
AE limit to be genuine L1. No domination or order-of-limit exchange is supplied. -/
theorem integrable_limit_of_nonnegative_uniform_integrals
    {G : ℕ → ℝ → ℝ} {f : ℝ → ℝ} {μ : Measure ℝ} {B : ℝ}
    (hi : ∀ n, Integrable (G n) μ)
    (hn : ∀ n, ∀ᵐ x ∂μ, 0 ≤ G n x)
    (hb : ∀ n, (∫ x, G n x ∂μ) ≤ B)
    (hl : ∀ᵐ x ∂μ, Tendsto (fun n => G n x) atTop (𝓝 (f x))) :
    Integrable f μ := by
  apply integrable_of_tendsto hl (fun n => (hi n).aestronglyMeasurable)
  have hnorm (n : ℕ) : (∫ x, ‖G n x‖ ∂μ) = ∫ x, G n x ∂μ := by
    apply integral_congr_ae
    filter_upwards [hn n] with x hx
    exact Real.norm_of_nonneg hx
  have hbound (n : ℕ) : (∫⁻ x, ‖G n x‖ₑ ∂μ) ≤ ENNReal.ofReal B := by
    rw [← ofReal_integral_norm_eq_lintegral_enorm (hi n), hnorm n]
    exact ENNReal.ofReal_le_ofReal (hb n)
  exact ne_of_lt ((liminf_le_of_frequently_le' (Filter.Frequently.of_forall hbound)).trans_lt
    ENNReal.ofReal_lt_top)

/-- A nonintegrable genuine pointwise limit rules out a uniform nonnegative budget. -/
theorem no_uniform_nonnegative_integrals_of_nonintegrable_limit
    {G : ℕ → ℝ → ℝ} {f : ℝ → ℝ} {μ : Measure ℝ}
    (hi : ∀ n, Integrable (G n) μ)
    (hn : ∀ n, ∀ᵐ x ∂μ, 0 ≤ G n x)
    (hl : ∀ᵐ x ∂μ, Tendsto (fun n => G n x) atTop (𝓝 (f x)))
    (hf : ¬ Integrable f μ) :
    ¬ ∃ B : ℝ, ∀ n, (∫ x, G n x ∂μ) ≤ B := by
  rintro ⟨B,hB⟩
  exact hf (integrable_limit_of_nonnegative_uniform_integrals hi hn hB hl)

end ContinuousResearch.NegativeCostFatou
#print ContinuousResearch.NegativeCostFatou.integrable_limit_of_nonnegative_uniform_integrals
#print axioms ContinuousResearch.NegativeCostFatou.integrable_limit_of_nonnegative_uniform_integrals
#print ContinuousResearch.NegativeCostFatou.no_uniform_nonnegative_integrals_of_nonintegrable_limit
#print axioms ContinuousResearch.NegativeCostFatou.no_uniform_nonnegative_integrals_of_nonintegrable_limit
