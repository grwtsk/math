-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CutoffShape.Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CutoffShape.Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94","mathematical_subject":"Analysis.Integration","original_sha256":"058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/CorrectedCutoffIncrement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ArithmeticErrorIntegrability

/-! Exact adjacent-cutoff covariance for the original corrected arithmetic residual. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.CutoffShape.Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94

set_option autoImplicit false
namespace CorrectedCutoffIncrementScratch
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusPoleNumerator FiniteMobiusController SourceFilterDelta ArithmeticErrorIntegrability
noncomputable section

/-- The literal adjacent-scale shape; its full logarithmic phase is retained. -/
def cutoffShape (N : ℕ) (z : ℂ) : ℂ :=
  Complex.exp ((1 / 2 - z) * (Real.log (N : ℝ) : ℂ)) -
    Complex.exp ((1 / 2 - z) * (Real.log ((N + 1 : ℕ) : ℝ) : ℂ))

/-- The original finite corrected family starts with the zero numerator. -/
theorem correctedNumerator_one (z : ℂ) : correctedNumerator 1 z = 0 := by
  simp [correctedNumerator, dirichletNumerator, mobiusReciprocalSum]

private theorem exponential_split (n : ℕ) (hn : 1 ≤ n) (z : ℂ) :
    Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) =
      (n : ℂ)⁻¹ * Complex.exp ((1 / 2 - z) * (Real.log (n : ℝ) : ℂ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have he : Complex.exp (-(Real.log (n : ℝ) : ℂ)) = (n : ℂ)⁻¹ := by
    rw [← Complex.ofReal_neg, ← Complex.ofReal_exp, Real.exp_neg,
      Real.exp_log hn0, Complex.ofReal_inv, Complex.ofReal_natCast]
  rw [show -(1 / 2 + z) * (Real.log (n : ℝ) : ℂ) =
      -(Real.log (n : ℝ) : ℂ) + (1 / 2 - z) * (Real.log (n : ℝ) : ℂ) by ring,
    Complex.exp_add, he]

private theorem reciprocal_succ (N : ℕ) :
    mobiusReciprocalSum (N + 1) = mobiusReciprocalSum N +
      (ArithmeticFunction.moebius (N + 1) : ℝ) / ((N + 1 : ℕ) : ℝ) := by
  unfold mobiusReciprocalSum
  rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]

/-- The new Möbius atom cancels exactly against its own corrected endpoint. -/
theorem correctedNumerator_succ_sub (N : ℕ) (hN : 1 ≤ N) (z : ℂ) :
    correctedNumerator (N + 1) z - correctedNumerator N z =
      (mobiusReciprocalSum N : ℂ) * cutoffShape N z := by
  rw [correctedNumerator, correctedNumerator, reciprocal_succ]
  simp only [Complex.ofReal_add, Complex.ofReal_div, Complex.ofReal_intCast,
    Complex.ofReal_natCast]
  unfold dirichletNumerator
  rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1), exponential_split (N + 1) (by omega) z]
  unfold cutoffShape
  ring

/-- The complete numerator is a finite sum of the actual signed prefix increments. -/
theorem correctedNumerator_eq_sum_increments (N : ℕ) (hN : 1 ≤ N) (z : ℂ) :
    correctedNumerator N z =
      ∑ n ∈ Finset.Ico 1 N, (mobiusReciprocalSum n : ℂ) * cutoffShape n z := by
  induction N, hN using Nat.le_induction with
  | base => simp [correctedNumerator_one]
  | succ N hN ih =>
    rw [Finset.sum_Ico_succ_top hN, ← ih]
    have hs := correctedNumerator_succ_sub N hN z
    linear_combination hs

/-- The actual boundary residual whose squared integral defines arithmeticErrorSq. -/
def boundaryResidual (N : ℕ) (ε h t : ℝ) : ℂ :=
  boundaryFilter ε h t * (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
    correctedNumerator N ((ε : ℂ) + (t : ℂ) * Complex.I))

/-- Adjacent residuals retain the actual source factor and the exact endpoint cancellation. -/
theorem boundaryResidual_succ_sub (N : ℕ) (hN : 1 ≤ N) (ε h t : ℝ) :
    boundaryResidual (N + 1) ε h t - boundaryResidual N ε h t =
      -(mobiusReciprocalSum N : ℂ) *
        (boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
          cutoffShape N ((ε : ℂ) + (t : ℂ) * Complex.I)) := by
  have he := correctedNumerator_succ_sub N hN ((ε : ℂ) + (t : ℂ) * Complex.I)
  unfold boundaryResidual
  linear_combination -(boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) * he

/-- Every off-diagonal increment product keeps both signed prefixes and both complex phases. -/
theorem boundaryResidual_increment_product (N M : ℕ) (hN : 1 ≤ N) (hM : 1 ≤ M)
    (ε h t : ℝ) :
    (boundaryResidual (N + 1) ε h t - boundaryResidual N ε h t) *
      star (boundaryResidual (M + 1) ε h t - boundaryResidual M ε h t) =
      ((mobiusReciprocalSum N * mobiusReciprocalSum M : ℝ) : ℂ) *
        (boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) *
          star (boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) *
        cutoffShape N ((ε : ℂ) + (t : ℂ) * Complex.I) *
          star (cutoffShape M ((ε : ℂ) + (t : ℂ) * Complex.I)) := by
  rw [boundaryResidual_succ_sub N hN, boundaryResidual_succ_sub M hM]
  simp only [star_mul, star_neg, Complex.star_def, Complex.conj_ofReal,
    Complex.ofReal_mul]
  ring

private theorem boundaryResidual_memLp (N : ℕ) (hN : 1 ≤ N) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 < h) (hh1 : h ≤ 1) :
    MemLp (boundaryResidual N ε h) 2 volume := by
  have hH : Measurable (boundaryFilter ε h) := by
    unfold boundaryFilter
    have hw : Continuous MobiusSourceFilterQuotient.W :=
      (Complex.continuous_exp.comp continuous_neg).mul FixedLaplaceBoundary.V_continuous
    fun_prop
  have hz : Continuous (fun t : ℝ => riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    have hn : (1 / 2 + (t : ℂ) * Complex.I : ℂ) ≠ 1 := by
      intro he
      have hr := congrArg Complex.re he
      norm_num at hr
    exact ContinuousAt.comp (f := fun t : ℝ => (1 / 2 : ℂ) + (t : ℂ) * Complex.I)
      (g := riemannZeta) (differentiableAt_riemannZeta hn).continuousAt
      (show ContinuousAt (fun t : ℝ => (1 / 2 : ℂ) + (t : ℂ) * Complex.I) t by fun_prop)
  have hb : Measurable (boundaryResidual N ε h) := by
    unfold boundaryResidual
    exact hH.mul (measurable_const.sub (hz.measurable.mul
      ((correctedNumerator_differentiable N).continuous.measurable.comp (by fun_prop))))
  exact (memLp_two_iff_integrable_sq_norm hb.aestronglyMeasurable).mpr
    (arithmetic_error_sq_integrable N hN ε h hε hsmall hh hh1)

/-- Off-diagonal products of actual residual increments have genuine whole-line integrals. -/
theorem boundaryResidual_increment_product_integrable (N M : ℕ)
    (hN : 1 ≤ N) (hM : 1 ≤ M) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      (boundaryResidual (N + 1) ε h t - boundaryResidual N ε h t) *
        star (boundaryResidual (M + 1) ε h t - boundaryResidual M ε h t)) := by
  have hN' := (boundaryResidual_memLp (N + 1) (by omega) ε h hε hsmall hh hh1).sub
    (boundaryResidual_memLp N hN ε h hε hsmall hh hh1)
  have hM' := (boundaryResidual_memLp (M + 1) (by omega) ε h hε hsmall hh hh1).sub
    (boundaryResidual_memLp M hM ε h hε hsmall hh hh1)
  exact hN'.integrable_mul hM'.star

end
end CorrectedCutoffIncrementScratch
