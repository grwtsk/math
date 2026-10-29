import GRWTSK.Analysis.Complex.MeromorphicLogOrderDetector
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic

/-! Actual completion-pole units and logarithmic coefficients for the Riemann
specialization of B3/E5. Pole coefficients of −logDeriv are +1; these are not
residues of the completed function itself. No high-rank source is identified. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector
open GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
open Filter
open scoped Topology

/-- Analytic extension of sΛ(s) at zero. -/
noncomputable def zeroPoleUnit (s : ℂ) : ℂ :=
  s * completedRiemannZeta₀ s - 1 - s / (1 - s)

/-- Analytic extension of (s−1)Λ(s) at one. -/
noncomputable def onePoleUnit (s : ℂ) : ℂ :=
  (s - 1) * completedRiemannZeta₀ s - (s - 1) / s + 1

/-- The zero-pole multiplier is analytic and has actual value −1. -/
theorem zeroPoleUnit_analytic_value : AnalyticAt ℂ zeroPoleUnit 0 ∧ zeroPoleUnit 0 = -1 := by
  constructor
  · exact ((analyticAt_id.mul (differentiable_completedZeta₀.analyticAt 0)).sub
      analyticAt_const).sub (analyticAt_id.div (analyticAt_const.sub analyticAt_id) (by norm_num))
  · simp [zeroPoleUnit]

/-- The one-pole multiplier is analytic and has actual value +1. -/
theorem onePoleUnit_analytic_value : AnalyticAt ℂ onePoleUnit 1 ∧ onePoleUnit 1 = 1 := by
  constructor
  · exact (((analyticAt_id.sub analyticAt_const).mul
      (differentiable_completedZeta₀.analyticAt 1)).sub
      ((analyticAt_id.sub analyticAt_const).div analyticAt_id (by norm_num))).add analyticAt_const
  · simp [onePoleUnit]

/-- Exact local order −1 at zero, independently of the function's center value. -/
theorem completed_zero_pole_factorization :
    completedRiemannZeta =ᶠ[𝓝[≠] (0 : ℂ)] fun s => (s - 0) ^ (-1 : ℤ) * zeroPoleUnit s := by
  have hn : ∀ᶠ s in 𝓝 (0 : ℂ), s ≠ 1 := by
    change ({1}ᶜ : Set ℂ) ∈ 𝓝 (0 : ℂ)
    exact compl_singleton_mem_nhds (by norm_num : (0 : ℂ) ≠ 1)
  have hother : ∀ᶠ s in 𝓝[≠] (0 : ℂ), s ≠ 1 := hn.filter_mono nhdsWithin_le_nhds
  filter_upwards [self_mem_nhdsWithin, hother] with s hs hs1
  have hs0 : s ≠ 0 := by simpa using hs
  rw [completedRiemannZeta_eq, zpow_neg_one]
  unfold zeroPoleUnit
  field_simp [hs0, sub_ne_zero.mpr (Ne.symm hs1)]
  ring

/-- Exact local order −1 at one, after excluding the other completion pole. -/
theorem completed_one_pole_factorization :
    completedRiemannZeta =ᶠ[𝓝[≠] (1 : ℂ)] fun s => (s - 1) ^ (-1 : ℤ) * onePoleUnit s := by
  have hn : ∀ᶠ s in 𝓝 (1 : ℂ), s ≠ 0 := by
    change ({0}ᶜ : Set ℂ) ∈ 𝓝 (1 : ℂ)
    exact compl_singleton_mem_nhds (by norm_num : (1 : ℂ) ≠ 0)
  have hother : ∀ᶠ s in 𝓝[≠] (1 : ℂ), s ≠ 0 := hn.filter_mono nhdsWithin_le_nhds
  filter_upwards [self_mem_nhdsWithin, hother] with s hs hs0
  have hs1 : s ≠ 1 := by simpa using hs
  rw [completedRiemannZeta_eq, zpow_neg_one]
  unfold onePoleUnit
  field_simp [hs0, sub_ne_zero.mpr hs1, sub_ne_zero.mpr (Ne.symm hs1)]
  ring

/-- The actual completed source is meromorphic of signed order −1 at zero. -/
theorem completed_zero_pole_meromorphic_order : MeromorphicAt completedRiemannZeta 0 ∧
    meromorphicOrderAt completedRiemannZeta 0 = (-1 : WithTop ℤ) :=
  meromorphic_order_of_local_factorization completedRiemannZeta zeroPoleUnit 0 (-1)
    zeroPoleUnit_analytic_value.1 (by rw [zeroPoleUnit_analytic_value.2]; norm_num)
    completed_zero_pole_factorization

/-- The actual completed source is meromorphic of signed order −1 at one. -/
theorem completed_one_pole_meromorphic_order : MeromorphicAt completedRiemannZeta 1 ∧
    meromorphicOrderAt completedRiemannZeta 1 = (-1 : WithTop ℤ) :=
  meromorphic_order_of_local_factorization completedRiemannZeta onePoleUnit 1 (-1)
    onePoleUnit_analytic_value.1 (by rw [onePoleUnit_analytic_value.2]; norm_num)
    completed_one_pole_factorization

/-- Negative logarithmic coefficient at zero is +1, opposite the zero-multiplicity sign. -/
theorem completed_zero_pole_scaled_coefficient :
    Tendsto (fun s => s * (-logDeriv completedRiemannZeta s))
      (𝓝[≠] (0 : ℂ)) (𝓝 (1 : ℂ)) := by
  simpa using tendsto_scaled_neg_logDeriv_of_factorization completedRiemannZeta zeroPoleUnit
    0 (-1) zeroPoleUnit_analytic_value.1 (by rw [zeroPoleUnit_analytic_value.2]; norm_num)
    completed_zero_pole_factorization

/-- Negative logarithmic coefficient at one is also +1. -/
theorem completed_one_pole_scaled_coefficient :
    Tendsto (fun s => (s - 1) * (-logDeriv completedRiemannZeta s))
      (𝓝[≠] (1 : ℂ)) (𝓝 (1 : ℂ)) := by
  simpa using tendsto_scaled_neg_logDeriv_of_factorization completedRiemannZeta onePoleUnit
    1 (-1) onePoleUnit_analytic_value.1 (by rw [onePoleUnit_analytic_value.2]; norm_num)
    completed_one_pole_factorization

/-- A continuous logarithmic derivative extension is impossible at the zero pole. -/
theorem completed_zero_pole_no_continuous_extension :
    ¬ ∃ H : ℂ → ℂ, ContinuousAt H 0 ∧ H =ᶠ[𝓝[≠] (0 : ℂ)] logDeriv completedRiemannZeta := by
  exact no_continuous_extension_of_nonzero_order completedRiemannZeta zeroPoleUnit 0 (-1)
    zeroPoleUnit_analytic_value.1 (by rw [zeroPoleUnit_analytic_value.2]; norm_num)
    completed_zero_pole_factorization (by norm_num)

/-- The same obstruction holds at the one pole. -/
theorem completed_one_pole_no_continuous_extension :
    ¬ ∃ H : ℂ → ℂ, ContinuousAt H 1 ∧ H =ᶠ[𝓝[≠] (1 : ℂ)] logDeriv completedRiemannZeta := by
  exact no_continuous_extension_of_nonzero_order completedRiemannZeta onePoleUnit 1 (-1)
    onePoleUnit_analytic_value.1 (by rw [onePoleUnit_analytic_value.2]; norm_num)
    completed_one_pole_factorization (by norm_num)
end GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector
