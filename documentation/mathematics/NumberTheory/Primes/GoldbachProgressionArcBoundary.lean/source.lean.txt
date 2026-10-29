/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Rational-arc boundary for progression discrepancy estimates

The canonical progression model is installed as a concrete instance of the
existing rational-arc model boundary. Uniform bounds for every finite
prime-log residue-class discrepancy are transferred to a pointwise quadratic
residual and then to an integrated one-arc residual using the coarse
six-radius measure budget.

Every estimate remains an explicit premise. This module proves no prime number
theorem in progressions, no singular-integral estimate, no minor-arc estimate,
and no Goldbach theorem.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary

open scoped BigOperators Real ENNReal
open Set MeasureTheory
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

noncomputable section

/-- The canonical progression model indexed by one reduced rational pair. -/
def goldbachProgressionArcModel
    (N : ℕ) (aq : ℕ × ℕ) (x : ℝ) : ℂ :=
  goldbachProgressionCircleModel N aq.1 aq.2 x

/-- The signed finite major sum of the canonical progression model. -/
def goldbachProgressionArcModelMajorSum
    (Q N : ℕ) : ℂ :=
  goldbachArcModelMajorSum Q N
    (goldbachProgressionArcModel N)

/-- The exact integrated residual of the canonical progression model on one
clipped rational arc. -/
def goldbachProgressionArcResidual
    (Q N : ℕ) (aq : ℕ × ℕ) : ℂ :=
  goldbachArcModelResidual Q N aq
    (goldbachProgressionArcModel N)

/-- The finite total of all supplied residue-class errors for one denominator. -/
def goldbachProgressionResidueErrorTotal
    (aq : ℕ × ℕ)
    (residueError : (ℕ × ℕ) → ℕ → ℝ) : ℝ :=
  ∑ r ∈ Finset.range aq.2, residueError aq r

/-- The pointwise quadratic residual budget obtained from residue discrepancies. -/
def goldbachProgressionPointwiseErrorBudget
    (N : ℕ) (aq : ℕ × ℕ)
    (residueError : (ℕ × ℕ) → ℕ → ℝ) : ℝ :=
  goldbachProgressionResidueErrorTotal aq residueError *
    (goldbachPrimeLogTotal N + (N + 1 : ℝ))

/-- The integrated one-arc error budget using the coarse six-radius measure
bound. -/
def goldbachProgressionArcErrorBudget
    (Q N : ℕ) (aq : ℕ × ℕ)
    (residueError : (ℕ × ℕ) → ℕ → ℝ) : ℝ :=
  goldbachProgressionPointwiseErrorBudget N aq residueError *
    (6 * goldbachRationalArcRadius Q N aq.2)

/-- The canonical progression circle model is continuous. -/
@[continuity, fun_prop]
theorem continuous_goldbachProgressionCircleModel
    (N a q : ℕ) :
    Continuous (goldbachProgressionCircleModel N a q) := by
  unfold goldbachProgressionCircleModel
    goldbachProgressionCircleKernel
    goldbachProgressionExponentialModel
    goldbachIntegerExponentialKernel
    goldbachRationalArcOffset
  fun_prop

/-- The canonical progression model is integrable on every clipped arc. -/
theorem integrableOn_goldbachProgressionArcModel
    (Q N : ℕ) (aq : ℕ × ℕ) :
    IntegrableOn (goldbachProgressionArcModel N aq)
      (goldbachClippedRationalArc Q N aq) := by
  rcases aq with ⟨a, q⟩
  exact
    ((continuous_goldbachProgressionCircleModel N a q).intervalIntegrable 0 1).1.mono_set
      Set.inter_subset_left

/-- The generic model residual is exactly the set integral of the pointwise
canonical progression residual. -/
theorem goldbachProgressionArcResidual_eq_integral
    (Q N : ℕ) (aq : ℕ × ℕ) :
    goldbachProgressionArcResidual Q N aq =
      ∫ x in goldbachClippedRationalArc Q N aq,
        goldbachProgressionCircleResidual N aq.1 aq.2 x := by
  unfold goldbachProgressionArcResidual
    goldbachArcModelResidual
    goldbachSingleRationalArcContribution
    goldbachArcModelContribution
    goldbachProgressionArcModel
    goldbachProgressionCircleResidual
  exact (integral_sub
    (integrableOn_goldbachCircleIntegrand_clipped Q N aq)
    (integrableOn_goldbachProgressionArcModel Q N aq)).symm

/-- Nonnegative residue budgets give a nonnegative one-denominator total. -/
theorem goldbachProgressionResidueErrorTotal_nonneg
    {aq : ℕ × ℕ}
    {residueError : (ℕ × ℕ) → ℕ → ℝ}
    (herror : ∀ r ∈ Finset.range aq.2,
      0 ≤ residueError aq r) :
    0 ≤ goldbachProgressionResidueErrorTotal aq residueError := by
  unfold goldbachProgressionResidueErrorTotal
  exact Finset.sum_nonneg herror

/-- The pointwise budget is nonnegative when every residue budget is. -/
theorem goldbachProgressionPointwiseErrorBudget_nonneg
    {N : ℕ} {aq : ℕ × ℕ}
    {residueError : (ℕ × ℕ) → ℕ → ℝ}
    (herror : ∀ r ∈ Finset.range aq.2,
      0 ≤ residueError aq r) :
    0 ≤ goldbachProgressionPointwiseErrorBudget N aq residueError := by
  unfold goldbachProgressionPointwiseErrorBudget
  exact mul_nonneg
    (goldbachProgressionResidueErrorTotal_nonneg herror)
    (add_nonneg
      (goldbachPrimeLogTotal_nonneg N)
      (by positivity))

/-- Uniform residue-class discrepancy bounds on one clipped arc give the
declared pointwise quadratic residual budget. -/
theorem norm_goldbachProgressionCircleResidual_le_on_arc
    {Q N : ℕ} {aq : ℕ × ℕ}
    (haq : aq ∈ goldbachRationalArcIndices Q)
    {residueError : (ℕ × ℕ) → ℕ → ℝ}
    (herror : ∀ x ∈ goldbachClippedRationalArc Q N aq,
      ∀ r ∈ Finset.range aq.2,
        ‖goldbachResidueProgressionDiscrepancy
            N aq.2 r (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
          residueError aq r) :
    ∀ x ∈ goldbachClippedRationalArc Q N aq,
      ‖goldbachProgressionCircleResidual N aq.1 aq.2 x‖ ≤
        goldbachProgressionPointwiseErrorBudget
          N aq residueError := by
  have hq : 0 < aq.2 :=
    (mem_goldbachRationalArcIndices.1 haq).2.2.1
  intro x hx
  rw [goldbachProgressionCircleResidual_eq_centered
    N aq.1 aq.2 hq x]
  simpa [goldbachProgressionPointwiseErrorBudget,
    goldbachProgressionResidueErrorTotal] using
    (norm_goldbachCenteredProgressionCircleResidual_le_of_residue
      (N := N) (a := aq.1) (q := aq.2) hq
      (β := goldbachRationalArcOffset aq.1 aq.2 x)
      (residueError := fun r => residueError aq r)
      (herror x hx))

/-- Uniform residue discrepancy bounds yield the coarse integrated one-arc
residual budget. -/
theorem norm_goldbachProgressionArcResidual_le
    {Q N : ℕ} {aq : ℕ × ℕ}
    (haq : aq ∈ goldbachRationalArcIndices Q)
    {residueError : (ℕ × ℕ) → ℕ → ℝ}
    (hnonneg : ∀ r ∈ Finset.range aq.2,
      0 ≤ residueError aq r)
    (herror : ∀ x ∈ goldbachClippedRationalArc Q N aq,
      ∀ r ∈ Finset.range aq.2,
        ‖goldbachResidueProgressionDiscrepancy
            N aq.2 r (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
          residueError aq r) :
    ‖goldbachProgressionArcResidual Q N aq‖ ≤
      goldbachProgressionArcErrorBudget Q N aq residueError := by
  let C : ℝ :=
    goldbachProgressionPointwiseErrorBudget N aq residueError
  have hC : 0 ≤ C := by
    exact goldbachProgressionPointwiseErrorBudget_nonneg hnonneg
  have hmeasure :
      volume (goldbachClippedRationalArc Q N aq) < ∞ := by
    exact
      (measure_mono Set.inter_subset_left).trans_lt
        measure_Ioc_lt_top
  rw [goldbachProgressionArcResidual_eq_integral]
  calc
    ‖∫ x in goldbachClippedRationalArc Q N aq,
        goldbachProgressionCircleResidual N aq.1 aq.2 x‖ ≤
      C * volume.real
        (goldbachClippedRationalArc Q N aq) := by
      exact norm_setIntegral_le_of_norm_le_const hmeasure
        (norm_goldbachProgressionCircleResidual_le_on_arc
          haq herror)
    _ ≤ C *
        (6 * goldbachRationalArcRadius Q N aq.2) :=
      mul_le_mul_of_nonneg_left
        (measureReal_goldbachClippedRationalArc_le Q N aq)
        hC
    _ =
      goldbachProgressionArcErrorBudget Q N aq residueError := by
      rfl

/-- The exact finite rational major sum is the canonical progression-model
major sum plus its exact finite residual sum. -/
theorem goldbachRationalArcSum_eq_progressionModel_add_residual
    (Q N : ℕ) :
    (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachSingleRationalArcContribution Q N aq) =
      goldbachProgressionArcModelMajorSum Q N +
        ∑ aq ∈ goldbachRationalArcIndices Q,
          goldbachProgressionArcResidual Q N aq := by
  simpa [goldbachProgressionArcModelMajorSum,
    goldbachProgressionArcResidual, goldbachArcModelResidualSum,
    goldbachProgressionArcModel] using
    (goldbachRationalArcSum_eq_model_add_residual
      Q N (goldbachProgressionArcModel N))

/-- A canonical progression-model lower bound, uniform residue discrepancy
budgets, and the complete signed minor bound imply a Goldbach count only under
one strict combined margin. -/
theorem goldbachCount_pos_of_progression_residue_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (modelLower minorError : ℝ)
    (hmodel : modelLower ≤
      (goldbachProgressionArcModelMajorSum Q N).re)
    (hnonneg : ∀ aq ∈ goldbachRationalArcIndices Q,
      ∀ r ∈ Finset.range aq.2,
        0 ≤ residueError aq r)
    (hresidue : ∀ aq ∈ goldbachRationalArcIndices Q,
      ∀ x ∈ goldbachClippedRationalArc Q N aq,
        ∀ r ∈ Finset.range aq.2,
          ‖goldbachResidueProgressionDiscrepancy
              N aq.2 r
                (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            residueError aq r)
    (hminor :
      ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin :
      (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArcErrorBudget
          Q N aq residueError) +
        minorError < modelLower) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_arc_model_bounds
    hscale (goldbachProgressionArcModel N)
    (fun aq =>
      goldbachProgressionArcErrorBudget Q N aq residueError)
    modelLower minorError
  · simpa [goldbachProgressionArcModelMajorSum] using hmodel
  · intro aq haq
    simpa [goldbachProgressionArcResidual,
      goldbachProgressionArcModel] using
      (norm_goldbachProgressionArcResidual_le
        haq (hnonneg aq haq) (hresidue aq haq))
  · exact hminor
  · exact hmargin

/-- The finite local main comparison separately charges the model-to-main
error, every residue-derived arc error, and the complete signed minor error. -/
theorem goldbachCount_pos_of_progression_truncated_certificate
    {arcQ localQ N : ℕ}
    (hscale : 2 * arcQ ^ 2 < N + 1)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (scale modelError minorError : ℝ)
    (hmodel :
      goldbachTruncatedMainScale localQ N scale - modelError ≤
        (goldbachProgressionArcModelMajorSum arcQ N).re)
    (hnonneg : ∀ aq ∈ goldbachRationalArcIndices arcQ,
      ∀ r ∈ Finset.range aq.2,
        0 ≤ residueError aq r)
    (hresidue : ∀ aq ∈ goldbachRationalArcIndices arcQ,
      ∀ x ∈ goldbachClippedRationalArc arcQ N aq,
        ∀ r ∈ Finset.range aq.2,
          ‖goldbachResidueProgressionDiscrepancy
              N aq.2 r
                (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            residueError aq r)
    (hminor :
      ‖goldbachRationalMinorContribution arcQ N‖ ≤ minorError)
    (hmargin :
      modelError +
          (∑ aq ∈ goldbachRationalArcIndices arcQ,
            goldbachProgressionArcErrorBudget
              arcQ N aq residueError) +
          minorError <
        goldbachTruncatedMainScale localQ N scale) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_arc_model_truncated_certificate
    hscale (goldbachProgressionArcModel N)
    (fun aq =>
      goldbachProgressionArcErrorBudget arcQ N aq residueError)
    scale modelError minorError
  · simpa [goldbachProgressionArcModelMajorSum] using hmodel
  · intro aq haq
    simpa [goldbachProgressionArcResidual,
      goldbachProgressionArcModel] using
      (norm_goldbachProgressionArcResidual_le
        haq (hnonneg aq haq) (hresidue aq haq))
  · exact hminor
  · exact hmargin

end
end GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
