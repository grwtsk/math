-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HalfHarmonicFractionalTail.Variant79d89ab7f07be760952f57e8edee5b5df4b24a3a51ca2f104a624cee88ced91d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79d89ab7f07be760952f57e8edee5b5df4b24a3a51ca2f104a624cee88ced91d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HalfHarmonicFractionalTail.Variant79d89ab7f07be760952f57e8edee5b5df4b24a3a51ca2f104a624cee88ced91d","mathematical_subject":"Analysis.Calculus","original_sha256":"79d89ab7f07be760952f57e8edee5b5df4b24a3a51ca2f104a624cee88ced91d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-half-harmonic-zeta/attempt01-source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCenteredHalfHarmonic
import SourceActualEarlyFractionalZeta
import Mathlib.NumberTheory.AbelSummation

/-!
The genuine finite half harmonic has its original fractional-part zeta
calibration. The closed unit and natural endpoint stay in the finite Abel sum,
and the upper fractional tail is genuinely integrable before its estimation.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HalfHarmonicFractionalTail.Variant79d89ab7f07be760952f57e8edee5b5df4b24a3a51ca2f104a624cee88ced91d

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualHalfHarmonicZeta
open MeasureTheory Set
open scoped BigOperators
open SourceActualCenteredHalfHarmonic SourceActualEarlyFractionalLimit
open SourceActualEarlyFractionalZeta
noncomputable section

/-- The true upper fractional tail retains the finite natural endpoint. -/
def halfHarmonicFractionalTail (L : ℕ) : ℝ :=
  (1 / 2 : ℝ) * ∫ x in Ioi (L : ℝ), earlyFractionalDensity x

private def positiveUnit (n : ℕ) : ℝ := if n = 0 then 0 else 1

private theorem positiveUnit_sum (M : ℕ) :
    (∑ n ∈ Finset.Icc 0 M, positiveUnit n) = (M : ℝ) := by
  rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
  simp only [positiveUnit, ite_true, zero_add]
  have he : (∑ n ∈ Finset.Ioc 0 M, if n = 0 then (0 : ℝ) else 1) =
      ∑ n ∈ Finset.Ioc 0 M, (1 : ℝ) := by
    apply Finset.sum_congr rfl
    intro n hn
    rw [if_neg (by have := (Finset.mem_Ioc.mp hn).1; omega)]
  rw [he]
  simp

private theorem positiveUnit_weighted_sum (L : ℕ) :
    (∑ n ∈ Finset.Icc 0 L, (1 / Real.sqrt (n : ℝ)) * positiveUnit n) =
      finiteHalfHarmonic L := by
  rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
  simp only [positiveUnit, ite_true, mul_zero, zero_add]
  unfold finiteHalfHarmonic
  rw [← Finset.Icc_add_one_left_eq_Ioc]
  apply Finset.sum_congr rfl
  intro n hn
  simp only [Nat.zero_add] at hn
  rw [if_neg (by have := (Finset.mem_Icc.mp hn).1; omega), mul_one]

private theorem inv_sqrt_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun x : ℝ => 1 / Real.sqrt x) (-1 / (2 * x * Real.sqrt x)) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  change HasDerivAt (fun x : ℝ => (Real.sqrt x)⁻¹) _ x
  apply ((Real.hasDerivAt_sqrt hx.ne').inv hs).congr_deriv
  have hss := Real.sq_sqrt hx.le
  field_simp
  nlinarith

private theorem inv_sqrt_deriv_integrable (L : ℕ) :
    IntegrableOn (deriv (fun x : ℝ => 1 / Real.sqrt x)) (Icc (1 : ℝ) (L : ℝ)) := by
  have hc : ContinuousOn (fun x : ℝ => -1 / (2 * x * Real.sqrt x))
      (Icc (1 : ℝ) (L : ℝ)) := by
    intro x hx
    have hx0 : 0 < x := by linarith [hx.1]
    exact (continuousAt_const.div
      ((continuousAt_const.mul continuousAt_id).mul Real.continuous_sqrt.continuousAt)
      (by positivity)).continuousWithinAt
  apply hc.integrableOn_Icc.congr_fun
  · intro x hx
    exact (inv_sqrt_hasDerivAt (by linarith [hx.1])).deriv.symm
  · exact measurableSet_Icc

/-- Exact finite harmonic calibration with the original signed zeta constant and true tail. -/
theorem finiteHalfHarmonic_eq_sqrt_zeta_tail (L : ℕ) (hL : 1 ≤ L) :
    finiteHalfHarmonic L = 2 * Real.sqrt (L : ℝ) +
      (riemannZeta (1 / 2 : ℂ)).re + halfHarmonicFractionalTail L := by
  have hLR : (1 : ℝ) ≤ (L : ℝ) := by exact_mod_cast hL
  have ha := sum_mul_eq_sub_integral_mul₀' positiveUnit (by rfl) L
    (fun x hx => (inv_sqrt_hasDerivAt (by linarith [hx.1])).differentiableAt)
    (inv_sqrt_deriv_integrable L)
  rw [positiveUnit_weighted_sum, positiveUnit_sum] at ha
  have hi : (∫ x in Ioc (1 : ℝ) (L : ℝ),
      deriv (fun x : ℝ => 1 / Real.sqrt x) x *
        ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, positiveUnit n) =
      ∫ x in Ioc (1 : ℝ) (L : ℝ), earlyUnitFloorDensity x := by
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    rw [(inv_sqrt_hasDerivAt (by linarith [hx.1])).deriv, positiveUnit_sum]
    unfold earlyUnitFloorDensity
    ring
  rw [hi, earlyUnitFloorDensity_integral hLR] at ha
  have he : (1 / Real.sqrt (L : ℝ)) * (L : ℝ) = Real.sqrt (L : ℝ) := by
    have hs : Real.sqrt (L : ℝ) ≠ 0 := by positivity
    have hss := Real.sq_sqrt (Nat.cast_nonneg L)
    field_simp
    nlinarith
  rw [he] at ha
  have hz := earlyFractionalConstant_add_zeta_half_eq_zero
  unfold earlyFractionalConstant at hz
  have ht := earlyFractionalDensity_split hLR
  unfold halfHarmonicFractionalTail
  linarith

/-- Genuine upper fractional L1 gives a positive endpoint defect with inverse-square-root cost. -/
theorem halfHarmonicFractionalTail_bounds (L : ℕ) (hL : 1 ≤ L) :
    0 ≤ halfHarmonicFractionalTail L ∧
      halfHarmonicFractionalTail L ≤ 1 / Real.sqrt (L : ℝ) := by
  have hLR : (1 : ℝ) ≤ (L : ℝ) := by exact_mod_cast hL
  have ht := earlyFractionalDensity_tail_bounds hLR
  unfold halfHarmonicFractionalTail
  constructor <;> linarith

/-- The actual finite half harmonic has a quantitative calibrated zeta remainder. -/
theorem finiteHalfHarmonic_sub_sqrt_zeta_abs_le (L : ℕ) (hL : 1 ≤ L) :
    |finiteHalfHarmonic L - 2 * Real.sqrt (L : ℝ) -
      (riemannZeta (1 / 2 : ℂ)).re| ≤ 1 / Real.sqrt (L : ℝ) := by
  rw [finiteHalfHarmonic_eq_sqrt_zeta_tail L hL]
  have ht := halfHarmonicFractionalTail_bounds L hL
  have he : 2 * Real.sqrt (L : ℝ) + (riemannZeta (1 / 2 : ℂ)).re +
      halfHarmonicFractionalTail L - 2 * Real.sqrt (L : ℝ) -
      (riemannZeta (1 / 2 : ℂ)).re = halfHarmonicFractionalTail L := by ring
  rw [he, abs_of_nonneg ht.1]
  exact ht.2

end
end FormalResearch.RiemannHypothesis.SourceActualHalfHarmonicZeta
