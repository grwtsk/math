import SourceActualXiLaplaceMellin
import Mathlib.Analysis.Complex.RemovableSingularity

/-!
The pole at one cancels locally in the complete actual closed-seven return.
The regularization uses the actual completed zeta and Gamma factors, preserves
the full finite head and gamma correction, and states no critical zero-free
region or arithmetic average witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiSevenPoleCancellation
open MeasureTheory Set Filter Complex
open scoped Topology
open SourceActualXiMellinSeven SourceActualXiLaplaceMellin RootActualXiComplexLaplaceBudget
noncomputable section

/-- The actual completed-zeta formula clears its pole without inventing Laurent data. -/
def actualZetaPoleCleared (s : ℂ) : ℂ :=
  ((s - 1) * (completedRiemannZeta₀ s - 1 / s) + 1) * (Gammaℝ s)⁻¹

/-- The genuine continuous source pole has this independently literal numerator. -/
def actualContinuousSevenPoleNumerator (s : ℂ) : ℂ := 1 - s * (7 : ℂ) ^ (1 - s)

/-- The true difference quotient is assigned its derivative at the touching pole. -/
def actualContinuousSevenPoleRegularization : ℂ → ℂ :=
  dslope actualContinuousSevenPoleNumerator 1

/-- Every original lower-seven, gamma and continuous term remains in the actual return. -/
def actualXiSevenReturn (s : ℂ) : ℂ :=
  -deriv riemannZeta s / riemannZeta s - actualClosedMangoldtMellinHeadSeven s +
    ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
      (7 : ℂ) ^ (-s) - s * (7 : ℂ) ^ (1 - s) / (s - 1)

/-- The same complete return is regularized at one using authentic source derivatives. -/
def actualXiSevenReturnRegularization (s : ℂ) : ℂ :=
  actualContinuousSevenPoleRegularization s - deriv actualZetaPoleCleared s /
    actualZetaPoleCleared s - actualClosedMangoldtMellinHeadSeven s +
      ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
        (7 : ℂ) ^ (-s)

/-- The genuine zeta residue is exactly one in this analytic source formula. -/
theorem actualZetaPoleCleared_at_one : actualZetaPoleCleared 1 = 1 := by
  simp [actualZetaPoleCleared, Gammaℝ_one]

/-- Only the genuine zero and one exceptions are needed to recover the original zeta. -/
theorem actualZetaPoleCleared_eq {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    actualZetaPoleCleared s = (s - 1) * riemannZeta s := by
  rw [riemannZeta_def_of_ne_zero hs0, completedRiemannZeta_eq]
  have hn : 1 - s ≠ 0 := sub_ne_zero.mpr hs1.symm
  have he : (s - 1) * (completedRiemannZeta₀ s - 1 / s) + 1 =
      (s - 1) * (completedRiemannZeta₀ s - 1 / s - 1 / (1 - s)) := by
    field_simp
    ring
  unfold actualZetaPoleCleared
  rw [he, div_eq_mul_inv]
  ring

/-- Actual entire completed zeta and inverse Gamma give local analyticity at one. -/
theorem actualZetaPoleCleared_analyticAt_one : AnalyticAt ℂ actualZetaPoleCleared 1 := by
  have hc : AnalyticAt ℂ completedRiemannZeta₀ 1 :=
    (differentiable_completedZeta₀.differentiableOn.analyticOnNhd isOpen_univ) 1 (mem_univ _)
  have hg : AnalyticAt ℂ (fun s => (Gammaℝ s)⁻¹) 1 :=
    (differentiable_Gammaℝ_inv.differentiableOn.analyticOnNhd isOpen_univ) 1 (mem_univ _)
  exact (((analyticAt_id.sub analyticAt_const).mul
    (hc.sub (analyticAt_const.div analyticAt_id one_ne_zero))).add analyticAt_const).mul hg

private theorem numerator_differentiable : Differentiable ℂ actualContinuousSevenPoleNumerator := by
  unfold actualContinuousSevenPoleNumerator
  simp_rw [cpow_def_of_ne_zero (by norm_num : (7 : ℂ) ≠ 0)]
  fun_prop

/-- The prescribed continuous pole numerator has its true touching zero. -/
theorem actualContinuousSevenPoleNumerator_at_one : actualContinuousSevenPoleNumerator 1 = 0 := by
  simp [actualContinuousSevenPoleNumerator]

/-- Genuine complex difference-quotient regularity gives an analytic continuous correction. -/
theorem actualContinuousSevenPoleRegularization_analyticAt_one :
    AnalyticAt ℂ actualContinuousSevenPoleRegularization 1 := by
  have hd := (Complex.differentiableOn_dslope (Filter.univ_mem : (Set.univ : Set ℂ) ∈ 𝓝 1)).mpr
    numerator_differentiable.differentiableOn
  exact (hd.analyticOnNhd isOpen_univ) 1 (mem_univ _)

private theorem seven_power_hasDerivAt (s : ℂ) :
    HasDerivAt (fun s : ℂ => (7 : ℂ) ^ (1 - s))
      (-Complex.log 7 * (7 : ℂ) ^ (1 - s)) s := by
  simp_rw [cpow_def_of_ne_zero (by norm_num : (7 : ℂ) ≠ 0)]
  convert (((hasDerivAt_const s (Complex.log 7)).mul
    ((hasDerivAt_const s (1 : ℂ)).sub (hasDerivAt_id s))).cexp) using 1 <;> simp [mul_comm]

/-- The continuous pole correction has the exact finite value log seven minus one. -/
theorem actualContinuousSevenPoleRegularization_at_one :
    actualContinuousSevenPoleRegularization 1 = Complex.log 7 - 1 := by
  unfold actualContinuousSevenPoleRegularization
  rw [dslope_same]
  have hd := (hasDerivAt_const (1 : ℂ) (1 : ℂ)).fun_sub
    ((hasDerivAt_id (1 : ℂ)).fun_mul (seven_power_hasDerivAt 1))
  unfold actualContinuousSevenPoleNumerator
  convert hd.deriv using 1 <;> simp [id_eq] <;> ring

private theorem poleCleared_deriv {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    deriv actualZetaPoleCleared s = riemannZeta s + (s - 1) * deriv riemannZeta s := by
  have he : actualZetaPoleCleared =ᶠ[𝓝 s] (fun s => (s - 1) * riemannZeta s) := by
    filter_upwards [eventually_ne_nhds hs0, eventually_ne_nhds hs1] with t ht0 ht1
    exact actualZetaPoleCleared_eq ht0 ht1
  rw [he.deriv_eq]
  have hd := ((hasDerivAt_id s).sub_const 1).mul
    (differentiableAt_riemannZeta hs1).hasDerivAt
  simpa only [Pi.mul_apply, sub_zero, one_mul] using! hd.deriv

/-- The logarithmic derivative removes its genuine pole with the explicit actual nonzero guard. -/
theorem actualZeta_logDerivative_pole_identity {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1)
    (hsz : riemannZeta s ≠ 0) :
    -deriv riemannZeta s / riemannZeta s = 1 / (s - 1) -
      deriv actualZetaPoleCleared s / actualZetaPoleCleared s := by
  rw [poleCleared_deriv hs0 hs1, actualZetaPoleCleared_eq hs0 hs1]
  field_simp
  ring

private theorem closedHead_analyticAt (s : ℂ) :
    AnalyticAt ℂ actualClosedMangoldtMellinHeadSeven s := by
  unfold actualClosedMangoldtMellinHeadSeven
  apply Finset.analyticAt_fun_sum
  intro n _
  rcases eq_or_ne n 0 with rfl | hn
  · simp
    exact analyticAt_const
  · simp_rw [cpow_def_of_ne_zero (by exact_mod_cast hn : (n : ℂ) ≠ 0)]
    fun_prop

/-- The full return has its exact local analytic regularization, with every source head retained. -/
theorem actualXiSevenReturnRegularization_analyticAt_one :
    AnalyticAt ℂ actualXiSevenReturnRegularization 1 := by
  have hr := actualZetaPoleCleared_analyticAt_one
  have hz : actualZetaPoleCleared 1 ≠ 0 := by rw [actualZetaPoleCleared_at_one]; norm_num
  have h7 : AnalyticAt ℂ (fun s : ℂ => (7 : ℂ) ^ (-s)) 1 := by
    simp_rw [cpow_def_of_ne_zero (by norm_num : (7 : ℂ) ≠ 0)]
    fun_prop
  exact ((actualContinuousSevenPoleRegularization_analyticAt_one.sub
    (hr.deriv.div hr hz)).sub (closedHead_analyticAt 1)).add (analyticAt_const.mul h7)

/-- Away from genuine source exceptions, the regularized and original full returns agree. -/
theorem actualXiSevenReturn_eq_regularization {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1)
    (hsz : riemannZeta s ≠ 0) :
    actualXiSevenReturn s = actualXiSevenReturnRegularization s := by
  unfold actualXiSevenReturn actualXiSevenReturnRegularization
  rw [actualZeta_logDerivative_pole_identity hs0 hs1 hsz]
  unfold actualContinuousSevenPoleRegularization
  rw [dslope_of_ne _ hs1, slope_def_field, actualContinuousSevenPoleNumerator_at_one]
  unfold actualContinuousSevenPoleNumerator
  field_simp
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiSevenPoleCancellation
