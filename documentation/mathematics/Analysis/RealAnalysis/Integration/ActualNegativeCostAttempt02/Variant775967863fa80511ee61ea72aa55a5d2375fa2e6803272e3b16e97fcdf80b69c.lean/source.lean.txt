import NegativeCostFatou
import ActualCumulativeIntercept
import FixedCurvatureLimit
import ActualSecondAbel

/-! Actual obstruction to the optional uncentered negative-curvature budget.
Only the genuine unweighted centered-Mangoldt positive-axis L1 hypothesis is supplied.
This is not a failure of the original signed bound, and no RH consumer is applied.
Research direction grwtsk contributors; scratch construction OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualNegativeCost
open MeasureTheory Set Filter
open scoped Topology Interval
open ContinuousResearch.NegativeCostFatou ContinuousResearch.ActualCumulativeIntercept
open ContinuousResearch.ActualPrimeIntercept ContinuousResearch.SourceRemainderLaplace
open ContinuousResearch.ProperPowerMoments ContinuousResearch.ActualSecondAbel
open ContinuousResearch.FixedCurvatureLimit
open FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy

/-- The literal finite-source negative part, zero outside its actual source interval. -/
def actualNegativeDensity (A : ℝ) : ℝ → ℝ :=
  (Ioc (0:ℝ) (2*A)).indicator (fun u =>
    max (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) 0)

/-- Independent fixed-position limit profile; its positive axis is not truncated. -/
def actualNegativeLimit : ℝ → ℝ := (Ioi (0:ℝ)).indicator (fun u =>
  max ((criticalDiscrepancyPrimitive u-actualAffineSlope*u)*(Real.exp (u/2)/4)) 0)

theorem actual_negative_density_nonneg (A u : ℝ) : 0 ≤ actualNegativeDensity A u := by
  unfold actualNegativeDensity
  by_cases h : u ∈ Ioc (0:ℝ) (2*A)
  · rw [indicator_of_mem h]
    exact le_max_right _ _
  · rw [indicator_of_notMem h]

theorem actual_negative_density_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (actualNegativeDensity A) := by
  have hi := (intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith : 0 ≤ 2*A)).mp
    (negativeCurvatureWork_integrand_intervalIntegrable hA)
  exact hi.integrable_indicator measurableSet_Ioc

theorem actual_negative_density_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ u, actualNegativeDensity A u) = negativeCurvatureWork A := by
  rw [actualNegativeDensity,integral_indicator measurableSet_Ioc,negativeCurvatureWork,
    intervalIntegral.integral_of_le (by linarith : 0 ≤ 2*A)]

theorem actual_negative_density_fixed_tendsto
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) (u : ℝ) :
    Tendsto (fun A : ℝ => actualNegativeDensity A u) atTop (𝓝 (actualNegativeLimit u)) := by
  by_cases hu : 0 < u
  · have he : (fun A : ℝ => actualNegativeDensity A u) =ᶠ[atTop]
        (fun A => max (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) 0) := by
      filter_upwards [eventually_ge_atTop (u/2)] with A hA
      exact indicator_of_mem (show u ∈ Ioc (0:ℝ) (2*A) from ⟨hu,by linarith⟩) _
    have h := (((actual_bridge_fixed_coordinate_tendsto hI u).mul
      (paired_curvature_fixed_tendsto u)).neg).max (tendsto_const_nhds (x:=(0:ℝ)))
    unfold actualNegativeLimit
    rw [indicator_of_mem (show u ∈ Ioi (0:ℝ) from hu)]
    convert h.congr' he.symm using 1
    simp only [pairedTailCurvature,mul_neg,neg_neg]
  · have he : (fun A : ℝ => actualNegativeDensity A u) = fun _ => (0:ℝ) := by
      funext A
      exact indicator_of_notMem (fun h => hu h.1) _
    rw [he,actualNegativeLimit,indicator_of_notMem (show u ∉ Ioi (0:ℝ) from hu)]
    exact tendsto_const_nhds

/-- Its independent actual intercept is strictly positive under the same sole actual L1 premise. -/
theorem actual_prime_intercept_pos
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) : 0 < actualPrimeIntercept := by
  rw [actual_prime_intercept_eq hI]
  linarith [arithmeticConstant_gt_one_five_hundred]

theorem actual_negative_limit_not_integrable
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) : ¬ Integrable actualNegativeLimit := by
  have hc := actual_prime_intercept_pos hI
  have htail := (actual_primitive_affine_intercept hI).eventually
    (eventually_gt_nhds (by linarith : actualPrimeIntercept/2 < actualPrimeIntercept))
  obtain ⟨R,hR⟩ := eventually_atTop.mp htail
  have hnot : ¬ IntegrableOn actualNegativeLimit (Ioi (0:ℝ)) := by
    apply not_integrableOn_of_positive_tail
      (d:=actualPrimeIntercept/8) (R:=max 0 R) (by positivity) (le_max_left _ _)
    intro u hu
    have hu0 : 0 < u := lt_of_le_of_lt (le_max_left _ _) hu
    have hj := hR u ((le_max_right _ _).trans hu.le)
    have he : 1 ≤ Real.exp (u/2) := Real.one_le_exp_iff.mpr (by linarith)
    rw [actualNegativeLimit,indicator_of_mem (show u ∈ Ioi (0:ℝ) from hu0)]
    have hm := le_max_left
      ((criticalDiscrepancyPrimitive u-actualAffineSlope*u)*(Real.exp (u/2)/4)) (0:ℝ)
    nlinarith
  exact fun hi => hnot hi.integrableOn

/-- The older sufficient negative-part certificate is too strong for this actual source,
under only genuine arithmetic L1. This leaves the original signed target unresolved. -/
theorem actual_negative_curvature_budget_false
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) : ¬ NegativeCurvatureTailBudget := by
  rintro ⟨B,_hB,R,hR,hcost⟩
  let G : ℕ → ℝ → ℝ := fun n => actualNegativeDensity (R+(n:ℝ))
  have hA (n : ℕ) : 1 ≤ R+(n:ℝ) := by
    have hn : 0 ≤ (n:ℝ) := Nat.cast_nonneg n
    linarith
  have hs : Tendsto (fun n : ℕ => R+(n:ℝ)) atTop atTop :=
    tendsto_atTop_add_const_left atTop R
      (tendsto_natCast_atTop_atTop : Tendsto (fun n : ℕ => (n:ℝ)) atTop atTop)
  apply no_uniform_nonnegative_integrals_of_nonintegrable_limit
    (G:=G) (f:=actualNegativeLimit)
    (fun n => actual_negative_density_integrable (hA n))
    (fun n => ae_of_all volume (actual_negative_density_nonneg _))
    (ae_of_all volume (fun u => (actual_negative_density_fixed_tendsto hI u).comp hs))
    (actual_negative_limit_not_integrable hI)
  refine ⟨B,fun n => ?_⟩
  change (∫ u, actualNegativeDensity (R+(n:ℝ)) u) ≤ B
  rw [actual_negative_density_integral (hA n)]
  exact hcost _ (by positivity)

end ContinuousResearch.ActualNegativeCost
