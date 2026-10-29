-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.P.Variant13396cdae62bc2b1032a1e18ac2eb869bd1ba48f4387f44ed0d70156c5e3d270","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13396cdae62bc2b1032a1e18ac2eb869bd1ba48f4387f44ed0d70156c5e3d270","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.P.Variant13396cdae62bc2b1032a1e18ac2eb869bd1ba48f4387f44ed0d70156c5e3d270","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"13396cdae62bc2b1032a1e18ac2eb869bd1ba48f4387f44ed0d70156c5e3d270","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass8/real_mode/attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.Expansion
import Mathlib.Analysis.SpecialFunctions.Exp


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.P.Variant13396cdae62bc2b1032a1e18ac2eb869bd1ba48f4387f44ed0d70156c5e3d270

set_option autoImplicit false
namespace ContinuousResearch.ActualRealMode
open Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets
open FormalResearch.RiemannHypothesis.Laplace.Algebra
open FormalResearch.RiemannHypothesis.Laplace.Expansion
noncomputable section

def p (x : ℝ) : ℝ := x^4-10*x^3+45*x^2-105*x+105

def normalizedSquare (A z : ℝ) : ℝ :=
  ((bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2).re

theorem p_coe (x : ℝ) : transformPolynomial (x : ℂ) = (p x : ℂ) := by
  simp [p,transformPolynomial]

theorem actual_scaled_square_real (A : ℝ) (hA : 0 < A) (z : ℝ) (hz : z ≠ 0) :
  A^17 * sourceNormalization A * normalizedSquare A z =
    (384^2 * (z^2-1/4)^2/z^18) *
      (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 := by
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr hZ).ne'
  have hsq : (Real.sqrt (sourceNormalization A) : ℂ)^2 = (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZ.le
  have he := actual_scaled_square A hA (z : ℂ) (by exact_mod_cast hz)
  have hc : ((A^17 * sourceNormalization A : ℝ) : ℂ) *
      (bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2 =
      ((384^2*(z^2-1/4)^2/z^18) *
        (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 : ℝ) := by
    calc
      _ = (A : ℂ)^17 * bilateralTransform A (z : ℂ)^2 := by
        push_cast; rw [div_pow,hsq]; field_simp [show (sourceNormalization A : ℂ) ≠ 0 by exact_mod_cast hZ.ne']
      _ = _ := he
      _ = _ := by
        unfold modeCoefficient
        rw [← Complex.ofReal_mul,← Complex.ofReal_neg,← Complex.ofReal_exp,
          ← Complex.ofReal_exp,p_coe,p_coe]
        push_cast; rfl
  rw [← Complex.ofReal_pow, ← Complex.ofReal_mul] at hc
  have hr := congrArg Complex.re hc
  simpa only [normalizedSquare, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using hr

#check actual_scaled_square_real
#print axioms actual_scaled_square_real
end
end ContinuousResearch.ActualRealMode
