-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RowWeight.Variant449299ec0bb5dd0514a7b15e233bff20e6c12979992d8ac6d1b8e9fff50bdc89","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"449299ec0bb5dd0514a7b15e233bff20e6c12979992d8ac6d1b8e9fff50bdc89","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.RowWeight.Variant449299ec0bb5dd0514a7b15e233bff20e6c12979992d8ac6d1b8e9fff50bdc89","mathematical_subject":"Analysis.Calculus","original_sha256":"449299ec0bb5dd0514a7b15e233bff20e6c12979992d8ac6d1b8e9fff50bdc89","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/449299ec0bb5dd0514a7b15e233bff20e6c12979992d8ac6d1b8e9fff50bdc89.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel

/-! # Literal source weight used in finite weighted beta summation -/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RowWeight.Variant449299ec0bb5dd0514a7b15e233bff20e6c12979992d8ac6d1b8e9fff50bdc89

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateWeightedBetaKernel

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity EstimatePlainKernel PrimePowerDescent

noncomputable section

/-- Literal source weight, retaining the factor from the outer natural index. -/
def rowWeight (A : ℝ) (m : ℕ) (x : ℝ) : ℝ := sourcePlainWeight A ((m : ℝ)*x)

/-- The signed derivative numerator is the source correlation derivative minus C/2. -/
def correlationSlope (A t : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) t -
    sourceCorrelation explicitSecondDerivative A t / 2

/-- Exact positive-axis conversion to the accepted exponential test. -/
theorem rowWeight_eq_exponential (A : ℝ) (m : ℕ) (x : ℝ)
    (hm : 1 ≤ m) (hx : 0 < x) :
    rowWeight A m x = exponentialTest (sourceCorrelation explicitSecondDerivative A)
      (Real.log ((m : ℝ)*x)) := by
  have hy : 0 < (m : ℝ)*x := by positivity
  unfold rowWeight sourcePlainWeight exponentialTest
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hy]
  ring

/-- Literal derivative; neither the inverse square-root m factor nor -C/2 is dropped. -/
theorem rowWeight_hasDerivAt (A x : ℝ) (m : ℕ) (hA : 0 < A)
    (hm : 1 ≤ m) (hx : 0 < x) :
    HasDerivAt (rowWeight A m)
      (correlationSlope A (Real.log ((m : ℝ)*x)) /
        (x*Real.sqrt ((m : ℝ)*x))) x := by
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have hy : 0 < (m : ℝ)*x := mul_pos hm0 hx
  have hC := sourceCorrelation_contDiff A hA
  have hF := exponentialTest_contDiff _ hC
  have hdF := ((contDiff_one_iff_deriv.mp hF).1 (Real.log ((m : ℝ)*x))).hasDerivAt
  rw [exponentialTest_deriv _ hC] at hdF
  have harg := ((hasDerivAt_id x).const_mul (m : ℝ)).log hy.ne'
  have hd := hdF.comp x harg
  have hexp : Real.exp (-Real.log ((m : ℝ)*x)/2) = 1/Real.sqrt ((m : ℝ)*x) := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hy]
    ring
  dsimp only [Function.comp_def, id_eq] at hd
  rw [hexp] at hd
  have he : (1/Real.sqrt ((m : ℝ)*x) * correlationSlope A (Real.log ((m : ℝ)*x))) *
      ((m : ℝ)*1/((m : ℝ)*x)) =
      correlationSlope A (Real.log ((m : ℝ)*x))/(x*Real.sqrt ((m : ℝ)*x)) := by
    field_simp [hm0.ne', hx.ne']
  change HasDerivAt (fun y ↦ exponentialTest
    (sourceCorrelation explicitSecondDerivative A) (Real.log ((m : ℝ)*y))) _ x at hd
  change HasDerivAt _
    ((1/Real.sqrt ((m : ℝ)*x) * correlationSlope A (Real.log ((m : ℝ)*x))) *
      ((m : ℝ)*1/((m : ℝ)*x))) x at hd
  rw [he] at hd
  apply hd.congr_of_eventuallyEq
  filter_upwards [Ioi_mem_nhds hx] with y hy
  exact rowWeight_eq_exponential A m y hm hy

/-- The ordinary derivative is the exact source derivative at each positive input. -/
theorem rowWeight_deriv (A x : ℝ) (m : ℕ) (hA : 0 < A) (hm : 1 ≤ m) (hx : 0 < x) :
    deriv (rowWeight A m) x = correlationSlope A (Real.log ((m : ℝ)*x)) /
      (x*Real.sqrt ((m : ℝ)*x)) := (rowWeight_hasDerivAt A x m hA hm hx).deriv

/-- Source C1 regularity supplies the finite calculus hypotheses, not cancellation. -/
theorem rowWeight_contDiffOn (A : ℝ) (m : ℕ) (hA : 0 < A) (hm : 1 ≤ m) :
    ContDiffOn ℝ 1 (rowWeight A m) (Ioi 0) := by
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have ha : ContDiffOn ℝ 1 (fun x : ℝ ↦ Real.log ((m : ℝ)*x)) (Ioi 0) := by
    apply ContDiffOn.log (contDiff_const.mul contDiff_id).contDiffOn
    intro x hx
    exact (mul_pos hm0 hx).ne'
  have h := (exponentialTest_contDiff _ (sourceCorrelation_contDiff A hA)).comp_contDiffOn ha
  apply h.congr
  intro x hx
  exact rowWeight_eq_exponential A m x hm hx

/-- The actual derivative is integrable on each positive finite closed interval. -/
theorem rowWeight_deriv_integrable (A : ℝ) (m : ℕ) (hA : 0 < A) (hm : 1 ≤ m)
    (a b : ℝ) (ha : 0 < a) : IntegrableOn (deriv (rowWeight A m)) (Icc a b) := by
  have hc := ContDiffOn.continuousOn_deriv_of_isOpen
    (rowWeight_contDiffOn A m hA hm) isOpen_Ioi (by norm_num)
  exact (hc.mono (fun x hx ↦ ha.trans_le hx.1)).integrableOn_Icc

end
end EstimateWeightedBetaKernel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
