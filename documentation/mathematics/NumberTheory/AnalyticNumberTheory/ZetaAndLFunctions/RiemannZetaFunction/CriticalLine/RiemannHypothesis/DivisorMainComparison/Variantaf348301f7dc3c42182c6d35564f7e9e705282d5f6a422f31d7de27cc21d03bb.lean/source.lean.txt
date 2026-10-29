-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMainResidual.Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DivisorMainResidual.Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/DivisorMainComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
import FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorRemainderNorm
import FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit

/-! Exact arithmetic main-core comparison, retaining every post-cutoff correction. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMainResidual.Variant840decab5fde721e8a31c9a7483a0a10d2675df47a472a3b8fd9c220de2ef60c

set_option autoImplicit false
namespace DivisorMainComparisonScratch
open MeasureTheory Set Finset Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open TruncatedDivisorResidual DampedDivisorCoefficient DampedDivisorRemainderNorm
open MobiusFractionalResidual MobiusPoleNumerator FiniteMobiusController
open CoreTailSplit SourceWeightedMultiplier HalfLineExtension LogarithmicResidual
open LogarithmicResidualTail
noncomputable section

/-- The explicit arithmetic main term retains its prime-power prefix, every omitted divisor,
and the complete repeated endpoint correction. -/
def divisorMainResidual (X : ℕ) (ε x : ℝ) : ℂ :=
  (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
    (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) +
    ((∑ n ∈ Icc 1 ⌊x⌋₊,
      (dampedDivisorCoefficient ε n - truncatedDivisorCoefficient X ε n) : ℝ) : ℂ) +
    (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) * mobiusReciprocalSum X *
      (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ)

/-- The full original residual is the explicit main term minus the actual finite Taylor remainder.
This identity keeps the post-cutoff signed divisor difference and endpoint atom. -/
theorem arithmeticResidual_eq_main_sub_remainder (X : ℕ) (ε x : ℝ)
    (hX : 1 ≤ X) (hx : 1 ≤ x) :
    arithmeticResidual X ε x = divisorMainResidual X ε x -
      (((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) := by
  rw [arithmeticResidual_eq_truncated_prefix X ε x hX hx]
  simp only [divisorMainResidual, sum_sub_distrib]
  push_cast
  ring

/-- The expanded arithmetic main term is cut in logarithmic time before source filtering. -/
def divisorMainCore (X : ℕ) (ε Y : ℝ) : ℝ → ℂ :=
  (Icc (0 : ℝ) (Real.log Y)).indicator
    (fun u : ℝ => (Real.exp (-u / 2) : ℂ) * divisorMainResidual X ε (Real.exp u))

private theorem mainCore_eq_add (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) :
    divisorMainCore X ε Y =
      (Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε) +
        divisorRemainderCore ε Y := by
  funext u
  by_cases hu : u ∈ Icc (0 : ℝ) (Real.log Y)
  · simp only [divisorMainCore, divisorRemainderCore, Pi.add_apply, indicator_of_mem hu,
      logResidual]
    rw [arithmeticResidual_eq_main_sub_remainder X ε (Real.exp u) hX
      (Real.one_le_exp_iff.mpr hu.1)]
    ring
  · simp only [divisorMainCore, divisorRemainderCore, Pi.add_apply, indicator_of_notMem hu,
      zero_add]

/-- Genuine full-line L2 admission follows from the actual source core and the proved remainder. -/
theorem divisorMainCore_memLp (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε)
    (Y : ℝ) (hY : 1 ≤ Y) : MemLp (divisorMainCore X ε Y) 2 volume := by
  rw [mainCore_eq_add X ε hX Y]
  exact ((logResidual_memLp X ε hX).indicator measurableSet_Icc).add
    (divisorRemainderCore_memLp ε hε Y hY)

/-- The actual L2 vector represented by the fully expanded arithmetic main term
on the closed core. -/
def divisorMainVector (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε)
    (Y : ℝ) (hY : 1 ≤ Y) : FullH :=
  (divisorMainCore_memLp X ε hX hε Y hY).toLp (divisorMainCore X ε Y)

private theorem mainVector_eq_add (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε)
    (Y : ℝ) (hY : 1 ≤ Y) :
    divisorMainVector X ε hX hε Y hY =
      coreResidualVector X ε hX Y + divisorRemainderVector ε hε Y hY := by
  have hm : divisorMainVector X ε hX hε Y hY =ᵐ[volume] divisorMainCore X ε Y :=
    (divisorMainCore_memLp X ε hX hε Y hY).coeFn_toLp
  have hr : divisorRemainderVector ε hε Y hY =ᵐ[volume] divisorRemainderCore ε Y :=
    (divisorRemainderCore_memLp ε hε Y hY).coeFn_toLp
  apply Lp.ext
  filter_upwards [hm, hr, coreResidualVector_ae X ε hX Y,
    Lp.coeFn_add (coreResidualVector X ε hX Y) (divisorRemainderVector ε hε Y hY)]
    with u hm hr hc ha
  simp only [Pi.add_apply] at ha
  rw [hm, ha, hc, hr, mainCore_eq_add X ε hX Y]
  rfl

/-- Filtering the actual core and its expanded arithmetic main changes their norms by at most
the proved quadratic remainder budget, uniformly in the admitted filter parameters. -/
theorem filtered_core_main_norm_difference_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    |‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ -
      ‖sourceMultiplier ε h hε hsmall hh (divisorMainVector X ε hX hε.le Y hY)‖| ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) := by
  let M : FullH →L[ℂ] FullH := sourceMultiplier ε h hε hsmall hh
  have he : M (coreResidualVector X ε hX Y) -
      M (divisorMainVector X ε hX hε.le Y hY) =
        -M (divisorRemainderVector ε hε.le Y hY) := by
    rw [mainVector_eq_add X ε hX hε.le Y hY, map_add]
    abel
  exact (abs_norm_sub_norm_le _ _).trans (by
    rw [he, norm_neg]
    exact sourceMultiplier_divisorRemainder_norm_le ε h hε hsmall hh Y hY)

end
end DivisorMainComparisonScratch
