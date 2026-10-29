-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LogPower.Variant20861dbe97508d9379d9e22b223daf73a043f6b23f3b87a5e6299961f31f81aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20861dbe97508d9379d9e22b223daf73a043f6b23f3b87a5e6299961f31f81aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LogPower.Variant20861dbe97508d9379d9e22b223daf73a043f6b23f3b87a5e6299961f31f81aa","mathematical_subject":"Analysis.Integration","original_sha256":"20861dbe97508d9379d9e22b223daf73a043f6b23f3b87a5e6299961f31f81aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass13/higher_power/LogPowerTail-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.Complex.ExponentialBounds

/-! An explicit integral-test budget for the genuine logarithmic 3/2 tail.
Direction: grwtsk contributors. Scratch proof construction: OpenAI Codex.
The integral-test strategy also appears in the PrimeNumberTheoremAnd Mertens
proof by its contributors; this different exponent is proved here. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.LogPower.Variant20861dbe97508d9379d9e22b223daf73a043f6b23f3b87a5e6299961f31f81aa

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.LogPowerTail
open MeasureTheory Set Filter Real
open scoped Topology

def logPower (x : ℝ) : ℝ := Real.log x * x ^ (-(3:ℝ)/2)
def logPowerPrimitive (x : ℝ) : ℝ := -2*(Real.log x+2)*x^(-(1:ℝ)/2)

theorem logPower_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt logPower ((1-(3/2:ℝ)*Real.log x)*x^(-(5:ℝ)/2)) x := by
  have hh := (Real.hasDerivAt_log hx.ne').mul
    (Real.hasDerivAt_rpow_const (p:=-(3:ℝ)/2) (Or.inl hx.ne'))
  have he : x⁻¹*x^(-(3:ℝ)/2) = x^(-(5:ℝ)/2) := by
    rw [← Real.rpow_neg_one, ← Real.rpow_add hx]
    norm_num
  convert hh using 1
  · simp only [logPower]
  · norm_num only at *
    rw [he]
    ring

theorem primitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt logPowerPrimitive (logPower x) x := by
  have hh := (((Real.hasDerivAt_log hx.ne').add_const 2).const_mul (-2)).mul
    (Real.hasDerivAt_rpow_const (p:=-(1:ℝ)/2) (Or.inl hx.ne'))
  have he : x⁻¹*x^(-(1:ℝ)/2) = x^(-(3:ℝ)/2) := by
    rw [← Real.rpow_neg_one, ← Real.rpow_add hx]
    norm_num
  convert hh using 1
  · simp only [logPowerPrimitive]
  · norm_num only at *
    unfold logPower
    rw [mul_assoc (-2),he]
    ring

theorem logPower_nonneg {x : ℝ} (hx : 2 ≤ x) : 0 ≤ logPower x := by
  unfold logPower
  exact mul_nonneg (Real.log_nonneg (by linarith)) (Real.rpow_nonneg (by linarith) _)

theorem logPower_antitone : AntitoneOn logPower (Ici 2) := by
  apply antitoneOn_of_deriv_nonpos (convex_Ici 2)
  · intro x hx
    exact (logPower_hasDerivAt (by linarith [hx.1])).continuousAt.continuousWithinAt
  · intro x hx
    exact (logPower_hasDerivAt (by simp only [interior_Ici, mem_Ioi] at hx; linarith)).differentiableAt.differentiableWithinAt
  · intro x hx
    simp only [interior_Ici, mem_Ioi] at hx
    rw [(logPower_hasDerivAt (by linarith : 0<x)).deriv]
    have hl : Real.log 2 ≤ Real.log x := Real.log_le_log (by norm_num) (by linarith)
    have hn : 1-(3/2:ℝ)*Real.log x ≤ 0 := by linarith [Real.log_two_gt_d9]
    exact mul_nonpos_of_nonpos_of_nonneg hn (Real.rpow_nonneg (by linarith) _)

theorem primitive_tendsto_zero : Tendsto logPowerPrimitive atTop (𝓝 0) := by
  have hl := (Real.isLittleO_log_rpow_atTop (by norm_num : (0:ℝ)<1/2)).tendsto_div_nhds_zero
  have hr := Real.tendsto_rpow_neg_atTop (by norm_num : (0:ℝ)<1/2)
  have hm : Tendsto (fun x : ℝ => Real.log x*x^(-(1:ℝ)/2)) atTop (𝓝 0) := by
    apply hl.congr'
    filter_upwards [eventually_gt_atTop (0:ℝ)] with x hx
    simp only [Real.rpow_neg hx.le, div_eq_mul_inv]
  have hh := (hm.add (hr.const_mul 2)).const_mul (-2)
  convert hh using 1
  · funext x
    unfold logPowerPrimitive
    ring
  · norm_num

theorem logPower_integrable : IntegrableOn logPower (Ioi 2) := by
  exact integrableOn_Ioi_deriv_of_nonneg'
    (fun x hx => primitive_hasDerivAt (by linarith [hx.1]))
    (fun x hx => logPower_nonneg hx.le) primitive_tendsto_zero

theorem logPower_integral :
    (∫ x : ℝ in Ioi 2, logPower x) = 2*(Real.log 2+2)/Real.sqrt 2 := by
  rw [integral_Ioi_of_hasDerivAt_of_nonneg'
    (fun x hx => primitive_hasDerivAt (by linarith [hx.1]))
    (fun x hx => logPower_nonneg hx.le) primitive_tendsto_zero]
  unfold logPowerPrimitive
  rw [Real.rpow_neg (by norm_num : (0:ℝ)≤2), ← Real.sqrt_eq_rpow]
  ring

theorem logPower_summable : Summable (fun n : ℕ => logPower n) :=
  logPower_antitone.summable_of_integrableOn_Ioi logPower_integrable
    (fun x hx => logPower_nonneg hx.le)

theorem tail_summable : Summable (fun n : ℕ => logPower (n+3)) := by
  convert (summable_nat_add_iff 3).mpr logPower_summable using 1
  simp only [Nat.cast_add, Nat.cast_ofNat]

theorem tail_le_integral :
    (∑' n : ℕ, logPower (n+3)) ≤ 2*(Real.log 2+2)/Real.sqrt 2 := by
  have hh := logPower_antitone.tsum_comp_add_le_integral 2 logPower_integrable
    (fun x hx => logPower_nonneg hx.le)
  rw [logPower_integral] at hh
  convert hh using 1
  congr 1
  funext n
  push_cast
  ring

theorem tail_le_rational : (∑' n : ℕ, logPower (n+3)) ≤ (27/7:ℝ) := by
  apply tail_le_integral.trans
  have hs : (7/5:ℝ) ≤ Real.sqrt 2 := by
    have hn := Real.sqrt_nonneg 2
    have he := Real.sq_sqrt (by norm_num : (0:ℝ)≤2)
    nlinarith
  apply (div_le_iff₀ (by positivity : 0<Real.sqrt 2)).mpr
  nlinarith [Real.log_two_lt_d9]

#print axioms logPower
#print axioms logPowerPrimitive
#print axioms logPower_hasDerivAt
#print axioms primitive_hasDerivAt
#print axioms logPower_nonneg
#print axioms logPower_antitone
#print axioms primitive_tendsto_zero
#print axioms logPower_integrable
#print axioms logPower_integral
#print axioms logPower_summable
#print axioms tail_summable
#print axioms tail_le_integral
#print axioms tail_le_rational
end ContinuousResearch.LogPowerTail
