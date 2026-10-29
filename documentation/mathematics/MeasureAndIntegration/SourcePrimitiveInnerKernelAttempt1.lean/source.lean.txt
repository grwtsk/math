import SourceRawPsiPrimitiveAdapter
import SourceCesaroKernelBudget
import FormalResearch.RiemannHypothesis.SourcePositiveSampling

/-! Exact inner contraction for the complete finite Xi primitive kernel.
This supplies no arithmetic bound or outer finite Fubini exchange.
Research direction: grwtsk contributors. Formal derivation: OpenAI Codex. -/
set_option autoImplicit false
namespace RH16PrimitiveInnerKernel
noncomputable section
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceRawPsiPrimitiveAdapter
open FormalResearch.RiemannHypothesis.SourcePositiveSampling
open RH16CesaroKernel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open RH16IndependentChallengeNext

/-- The literal time derivative; the positive-axis power remains unchanged. -/
def timeFirst (t y : ℝ) : ℝ :=
  2 * Real.exp (t / 2) / y ^ 2 - 1 / y ^ (3 / 2 : ℝ)

def innerPrimitive (A y t : ℝ) : ℝ :=
  literalXiWeight t y * deriv (cesaroWeight A) t - timeFirst t y * cesaroWeight A t +
    Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t / y ^ 2

theorem literalXiWeight_time_hasDerivAt (t y : ℝ) :
    HasDerivAt (fun u => literalXiWeight u y) (timeFirst t y) t := by
  have he := (Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)
  exact ((he.const_mul 4).div_const (y ^ 2) |>.sub
    ((((hasDerivAt_id t).sub_const (Real.log y)).add_const 4).div_const
      (y ^ (3 / 2 : ℝ)))).congr_deriv (by
        dsimp only [literalXiWeight, timeFirst]
        ring)

theorem timeFirst_hasDerivAt (t y : ℝ) :
    HasDerivAt (fun u => timeFirst u y) (Real.exp (t / 2) / y ^ 2) t := by
  have he := (Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)
  exact (((he.const_mul 2).div_const (y ^ 2)).sub_const
    (1 / y ^ (3 / 2 : ℝ))).congr_deriv (by dsimp only [timeFirst]; ring)

private theorem actual_kprime_differentiable (A t : ℝ) (hA : 0 < A) :
    DifferentiableAt ℝ (deriv (cesaroWeight A)) t := by
  have he : deriv (cesaroWeight A) = fun u =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
        deriv (sourceCorrelation explicitSecondDerivative A) u / 2 :=
    funext fun u => (cesaroWeight_hasDerivAt A u hA).deriv
  rw [he]
  exact ((actual_correlation_third_derivative A hA t).add
    (((sourceCorrelation_deriv_contDiff hA).differentiable
      (by norm_num) t).hasDerivAt.div_const 2)).differentiableAt

theorem innerPrimitive_hasDerivAt (A y t : ℝ) (hA : 0 < A) :
    HasDerivAt (innerPrimitive A y)
      (literalXiWeight t y * deriv (deriv (cesaroWeight A)) t) t := by
  have hw := literalXiWeight_time_hasDerivAt t y
  have hw1 := timeFirst_hasDerivAt t y
  have hk := (cesaroWeight_hasDerivAt A t hA).differentiableAt.hasDerivAt
  have hk1 := (actual_kprime_differentiable A t hA).hasDerivAt
  have he := (Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt
  exact (((hw.mul hk1).sub (hw1.mul hk)).add ((he.mul hc).div_const (y ^ 2))).congr_deriv
    (by dsimp only [innerPrimitive, cesaroWeight]; ring)

theorem actual_upper_traces (A : ℝ) (hA : 0 < A) :
    cesaroWeight A (2 * A) = 0 ∧ deriv (cesaroWeight A) (2 * A) = 0 ∧
      sourceCorrelation explicitSecondDerivative A (2 * A) = 0 := by
  have ht := actual_correlation_three_upper_traces A hA
  have hc := sourceCorrelation_upper_endpoint A hA
  refine ⟨?_, ?_, hc⟩
  · simp only [cesaroWeight, ht.1, hc, zero_div, add_zero]
  · rw [(cesaroWeight_hasDerivAt A (2 * A) hA).deriv]
    simp only [ht.1, ht.2.1, zero_div, add_zero]

private theorem positive_power_coefficient (y : ℝ) (hy : 0 < y) :
    1 / y ^ (3 / 2 : ℝ) = Real.exp (Real.log y / 2) / y ^ 2 := by
  have hy2 : y ^ 2 = Real.exp (2 * Real.log y) := by
    calc
      y ^ 2 = Real.exp (Real.log y) * Real.exp (Real.log y) := by rw [Real.exp_log hy]; ring
      _ = Real.exp (Real.log y + Real.log y) := (Real.exp_add _ _).symm
      _ = Real.exp (2 * Real.log y) := by congr 1; ring
  calc
    1 / y ^ (3 / 2 : ℝ) = Real.exp (-(Real.log y * (3 / 2))) := by
      rw [Real.rpow_def_of_pos hy, Real.exp_neg]
      rfl
    _ = Real.exp (Real.log y / 2) / y ^ 2 := by
      rw [hy2, ← Real.exp_sub]
      congr 1
      ring

theorem literal_lower_traces (y : ℝ) (hy : 0 < y) :
    literalXiWeight (Real.log y) y = 0 ∧
      timeFirst (Real.log y) y = Real.exp (Real.log y / 2) / y ^ 2 := by
  have hc := positive_power_coefficient y hy
  constructor
  · unfold literalXiWeight
    simp only [sub_self, zero_add]
    linear_combination -4 * hc
  · unfold timeFirst
    linear_combination -hc

private theorem plain_prefactor_eq (y : ℝ) (hy : 0 < y) :
    Real.exp (Real.log y / 2) / y ^ 2 = Real.exp (-Real.log y / 2) / y := by
  have hh : Real.exp (Real.log y / 2) * Real.exp (Real.log y / 2) = y := by
    rw [← Real.exp_add, show Real.log y / 2 + Real.log y / 2 = Real.log y by ring,
      Real.exp_log hy]
  rw [neg_div, Real.exp_neg]
  field_simp
  nlinarith

/-- Full inner integral, with both lower traces and all actual source upper jets. -/
theorem inner_kernel_eq_actual_plain_derivative (A y : ℝ) (hA : 0 < A) (hy : 0 < y) :
    (∫ t in Real.log y..2 * A,
      literalXiWeight t y * deriv (deriv (cesaroWeight A)) t) =
        deriv (plainProfile A 1) y := by
  have hw : Continuous (fun t => literalXiWeight t y) :=
    (show Differentiable ℝ (fun t => literalXiWeight t y) from
      fun t => (literalXiWeight_time_hasDerivAt t y).differentiableAt).continuous
  have hi := (hw.mul (cesaroWeight_second_deriv_continuous A hA)).intervalIntegrable
    (Real.log y) (2 * A)
  have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => innerPrimitive_hasDerivAt A y t hA) hi
  have hu := actual_upper_traces A hA
  have hl := literal_lower_traces y hy
  rw [hf]
  unfold innerPrimitive
  rw [hu.1, hu.2.1, hu.2.2, hl.1, hl.2]
  rw [(plainProfile_hasDerivAt hA 1 hy).deriv]
  simp only [Real.log_one, zero_add]
  rw [← plain_prefactor_eq y hy]
  unfold cesaroWeight
  ring
end
end RH16PrimitiveInnerKernel
