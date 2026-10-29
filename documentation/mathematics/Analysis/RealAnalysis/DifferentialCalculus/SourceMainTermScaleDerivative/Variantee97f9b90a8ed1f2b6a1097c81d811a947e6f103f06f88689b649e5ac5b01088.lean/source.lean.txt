-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CorrelationScaleDerivative.Variantb6af4b3022c5fe3a62b300e66d3541debd9e0f5afe04a99fbd5e7dc87c87f533","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6af4b3022c5fe3a62b300e66d3541debd9e0f5afe04a99fbd5e7dc87c87f533","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CorrelationScaleDerivative.Variantb6af4b3022c5fe3a62b300e66d3541debd9e0f5afe04a99fbd5e7dc87c87f533","mathematical_subject":"Analysis.Calculus","original_sha256":"b6af4b3022c5fe3a62b300e66d3541debd9e0f5afe04a99fbd5e7dc87c87f533","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle5/main-term/base-frozen/SourceMainTermScaleDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRegularScaleProfiles
import Mathlib.Analysis.Calculus.Deriv.Inv

/-!
# Actual scale calculus of the independently constructed Vaughan main term

The source correlation and its spatial derivative are differentiated in scale
inside the original finite inventories. Both floors freeze only at regular
scales. The logarithm of the short cutoff is consequently constant there.
The complete coefficient-one long diagonal deletion and every signed short row
remain in the derivative. This is local calculus, not a signed uniform estimate.

Review-only dependency scope: the recorded Vaughan prerequisites remain unmerged.
Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CorrelationScaleDerivative.Variantb6af4b3022c5fe3a62b300e66d3541debd9e0f5afe04a99fbd5e7dc87c87f533

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMainTermScaleDerivative

open MeasureTheory Filter Set ArithmeticFunction
open scoped Topology InnerProductSpace BigOperators
open SourcePairing SourceScaleVariation SourceScaleDerivative
open SourceDiagonalMainTerm SourceRegularScaleProfiles SourceCutoffFlux
open SourceSamplingLedger SourceSamplingPointwise SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimatePlainKernel EstimateVaughanSource EstimateSourceMobiusKernel
open EstimateBetaCentering EstimateMertensAbel

/-- Scale derivative of the literal correlation through its actual reflected atoms. -/
def correlationScaleDerivative (A s : ℝ) : ℝ :=
  (reflectedAtomDerivative A 0 s).re

/-- The original scalar correlation has the actual Hilbert product-rule derivative. -/
theorem sourceCorrelation_hasDerivAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    HasDerivAt (fun B ↦ sourceCorrelation explicitSecondDerivative B s)
      (correlationScaleDerivative A s) A := by
  have hd := Complex.reCLM.hasFDerivAt.comp_hasDerivAt A
    (reflectedAtomInteraction_hasDerivAt hA 0 s)
  apply hd.congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  change sourceCorrelation explicitSecondDerivative B s =
    (reflectedAtomInteraction B 0 s).re
  rw [reflectedAtomInteraction_source hB, zero_add, Complex.ofReal_re]

/-- The unchanged correlation is locally C¹ in scale at each fixed separation. -/
theorem sourceCorrelation_contDiffAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContDiffAt ℝ 1 (fun B ↦ sourceCorrelation explicitSecondDerivative B s) A := by
  have hc := Complex.reCLM.contDiff.contDiffAt.comp A
    (reflectedAtomInteraction_contDiffAt hA 0 s)
  apply hc.congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  change sourceCorrelation explicitSecondDerivative B s =
    (reflectedAtomInteraction B 0 s).re
  rw [reflectedAtomInteraction_source hB, zero_add, Complex.ofReal_re]

/-- Exact coefficient derivative retains the unchanged normalization and its scale derivative. -/
def diagonalCoefficientDerivative (A : ℝ) : ℝ :=
  -(diagonalMainCoefficient A * normalizationDerivative A / sourceNormalization A)

/-- The canonical diagonal coefficient is differentiated from its literal rational normalization. -/
theorem diagonalMainCoefficient_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt diagonalMainCoefficient (diagonalCoefficientDerivative A) A := by
  have hz := (sourceNormalization_pos hA).ne'
  have hd := (hasDerivAt_const A (1024 : ℝ)).div
    ((sourceNormalization_hasDerivAt hA).const_mul 99225) (by positivity)
  convert hd using 1 <;> first
    | rfl
    | (dsimp [diagonalCoefficientDerivative, diagonalMainCoefficient]; field_simp; ring)

/-- Local C¹ of the actual diagonal coefficient, on its positive-scale domain. -/
theorem diagonalMainCoefficient_contDiffAt {A : ℝ} (hA : 0 < A) :
    ContDiffAt ℝ 1 diagonalMainCoefficient A := by
  have hz := sourceNormalization_pos hA
  unfold diagonalMainCoefficient sourceNormalization
  fun_prop (disch := first | positivity | exact hA.ne' | exact hz.ne')

/-- Independent derivative formula for the normalized linear diagonal main contribution. -/
def normalizationMainDerivative (A : ℝ) : ℝ :=
  diagonalMainCoefficient A *
    (1 - A * normalizationDerivative A / sourceNormalization A)

/-- Product-rule derivative of κ_A A, with the normalization change retained. -/
theorem normalizedMain_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt (fun B ↦ diagonalMainCoefficient B * B)
      (normalizationMainDerivative A) A := by
  have hd := (diagonalMainCoefficient_hasDerivAt hA).mul (hasDerivAt_id A)
  convert hd using 1 <;> first
    | rfl
    | (dsimp [normalizationMainDerivative, diagonalCoefficientDerivative]; ring)

/-- The literal positive-axis diagonal main contribution is locally C¹. -/
theorem normalizedMain_contDiffAt {A : ℝ} (hA : 0 < A) :
    ContDiffAt ℝ 1 (fun B ↦ diagonalMainCoefficient B * B) A :=
  (diagonalMainCoefficient_contDiffAt hA).mul contDiffAt_id

/-- The original multiplicative weight derivative uses fixed log and inverse-square-root factors. -/
def plainWeightScaleDerivative (A k : ℝ) : ℝ :=
  correlationScaleDerivative A (Real.log k) / Real.sqrt k

/-- Scale calculus of the actual source weight, without a replacement kernel. -/
theorem sourcePlainWeight_hasDerivAt {A : ℝ} (hA : 0 < A) (k : ℝ) :
    HasDerivAt (fun B ↦ sourcePlainWeight B k) (plainWeightScaleDerivative A k) A :=
  (sourceCorrelation_hasDerivAt_scale hA (Real.log k)).div_const (Real.sqrt k)

/-- Scale C¹ of the original source weight at each fixed multiplicative argument. -/
theorem sourcePlainWeight_contDiffAt {A : ℝ} (hA : 0 < A) (k : ℝ) :
    ContDiffAt ℝ 1 (fun B ↦ sourcePlainWeight B k) A :=
  (sourceCorrelation_contDiffAt_scale hA (Real.log k)).div_const (Real.sqrt k)

/-- Every Mangoldt long interaction keeps its natural product and original coefficient. -/
def sourceKernelScaleDerivative (A : ℝ) (m n : ℕ) : ℝ :=
  vonMangoldt m * plainWeightScaleDerivative A ((m * n : ℕ) : ℝ)

/-- Actual scale derivative of the original two-variable kernel. -/
theorem sourceKernel_hasDerivAt {A : ℝ} (hA : 0 < A) (m n : ℕ) :
    HasDerivAt (fun B ↦ sourceKernel B m n) (sourceKernelScaleDerivative A m n) A :=
  (sourcePlainWeight_hasDerivAt hA ((m * n : ℕ) : ℝ)).const_mul (vonMangoldt m)

/-- The same actual two-variable kernel has local scale C¹. -/
theorem sourceKernel_contDiffAt {A : ℝ} (hA : 0 < A) (m n : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ sourceKernel B m n) A :=
  contDiffAt_const.mul (sourcePlainWeight_contDiffAt hA ((m * n : ℕ) : ℝ))

/-- The fixed long compensation derivative retains both Ioc axes and literal m=n deletion. -/
def plainOffDerivativeAt (A : ℝ) (U N : ℕ) : ℝ :=
  offDiagonal (Finset.Ioc U N) (sourceKernelScaleDerivative A) (fun _ ↦ 1)

/-- Derivative of the complete coefficient-one off-diagonal compensation inventory. -/
theorem plainOffAt_hasDerivAt {A : ℝ} (hA : 0 < A) (U N : ℕ) :
    HasDerivAt (fun B ↦ plainOffAt B U N) (plainOffDerivativeAt A U N) A := by
  have hr : HasDerivAt (fun B ↦ rectangle (Finset.Ioc U N) (sourceKernel B) (fun _ ↦ 1))
      (rectangle (Finset.Ioc U N) (sourceKernelScaleDerivative A) (fun _ ↦ 1)) A := by
    apply HasDerivAt.fun_sum
    intro m _
    apply HasDerivAt.fun_sum
    intro n _
    exact (sourceKernel_hasDerivAt hA m n).mul_const 1
  have hd : HasDerivAt (fun B ↦ diagonal (Finset.Ioc U N) (sourceKernel B) (fun _ ↦ 1))
      (diagonal (Finset.Ioc U N) (sourceKernelScaleDerivative A) (fun _ ↦ 1)) A := by
    apply HasDerivAt.fun_sum
    intro m _
    exact (sourceKernel_hasDerivAt hA m m).mul_const 1
  exact hr.sub hd

/-- Local scale C¹ of the same full off-diagonal finite inventory. -/
theorem plainOffAt_contDiffAt {A : ℝ} (hA : 0 < A) (U N : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ plainOffAt B U N) A := by
  apply ContDiffAt.sub
  · apply ContDiffAt.sum
    intro m _
    apply ContDiffAt.sum
    intro n _
    exact (sourceKernel_contDiffAt hA m n).mul contDiffAt_const
  · apply ContDiffAt.sum
    intro m _
    exact (sourceKernel_contDiffAt hA m m).mul contDiffAt_const

/-- The short Mangoldt derivative is its exact closed arithmetic inventory. -/
def shortMangoldtDerivativeAt (A : ℝ) (U : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 U, vonMangoldt m * plainWeightScaleDerivative A m

/-- Actual scale derivative of the retained short Mangoldt term. -/
theorem shortMangoldtAt_hasDerivAt {A : ℝ} (hA : 0 < A) (U : ℕ) :
    HasDerivAt (fun B ↦ shortMangoldtAt B U) (shortMangoldtDerivativeAt A U) A := by
  apply HasDerivAt.fun_sum
  intro m _
  exact (sourcePlainWeight_hasDerivAt hA m).const_mul (vonMangoldt m)

/-- Local C¹ of the same short Mangoldt inventory. -/
theorem shortMangoldtAt_contDiffAt {A : ℝ} (hA : 0 < A) (U : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ shortMangoldtAt B U) A := by
  apply ContDiffAt.sum
  intro m _
  exact contDiffAt_const.mul (sourcePlainWeight_contDiffAt hA m)

end FormalResearch.RiemannHypothesis.SourceMainTermScaleDerivative
