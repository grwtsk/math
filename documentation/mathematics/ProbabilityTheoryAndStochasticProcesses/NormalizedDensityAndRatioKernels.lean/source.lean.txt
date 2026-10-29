/-
NormalizedDensityAndRatioKernels — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9
Organized SHA-256: a22dadc07a53208d57358ba4287d33f2a3ee3a3fc50815345c14a991752db401
PMD: 510.8.010.010.040 distributions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Entire positive density algebra and ratio kernels stay together with private prod_rpow_eq_rpow_sum and both equal-scale/common-scale consumers. Preserve Nonempty/Fintype/positive hypotheses, reindex equalities and exact cocycle/inverse; no RN derivative or absolute continuity follows from a pointwise ratio alone. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import BitMatrix.Probability.Simplex
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.MeasureTheory.Constructions.Pi
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym
import Mathlib.Probability.Distributions.Gamma
import Mathlib.Tactic

import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.PositiveShapeScaleParameterAlgebra

/-!
# Exact Gamma--Dirichlet parameter and transport semantics

`Real.Gamma` is Mathlib's exact analytic Gamma function.  This module builds
the finite positive-parameter algebra used by the Prime-Fiber carrier system:
Dirichlet moments, anisotropic normalized-Gamma densities, pointwise
change-of-measure kernels, concentration, relabeling, and split/merge data.

Mathlib does not currently provide a general finite Dirichlet probability
measure.  Consequently `AnalyticLaw` below is an explicit capability boundary:
the exact parameter/density algebra is constructed here, while a measure-level
normalization or Radon--Nikodym theorem must be supplied with its proof.
Nothing in this module identifies the exact Gamma function with the runtime's
finite Lanczos approximation.
-/

namespace BitMatrix.Probability.GammaDirichlet

noncomputable section

open scoped BigOperators ENNReal NNReal
open MeasureTheory
open BitMatrix.Probability

variable {I J K : Type*}

/-! ## Exact density algebra -/

private theorem prod_rpow_eq_rpow_sum [Fintype I]
    (base : ℝ) (positive : 0 < base) (exponent : I → ℝ) :
    (∏ i, base ^ exponent i) = base ^ ∑ i, exponent i := by
  classical
  induction (Finset.univ : Finset I) using Finset.induction_on with
  | empty => simp
  | @insert i indices notMember induction =>
      rw [Finset.prod_insert notMember, Finset.sum_insert notMember,
        Real.rpow_add positive, induction]

/-- The scale-weighted simplex denominator `∑ᵢ wᵢ / θᵢ`. -/
def weightedInverseScaleSum [Fintype I]
    (parameters : Parameters I) (point : InteriorSimplexPoint I) : ℝ :=
  ∑ i, point i / parameters.scale i

theorem weightedInverseScaleSum_pos [Fintype I] [Nonempty I]
    (parameters : Parameters I) (point : InteriorSimplexPoint I) :
    0 < weightedInverseScaleSum parameters point := by
  exact Finset.sum_pos
    (fun i _ => div_pos (point.positive i) (parameters.scalePositive i))
    Finset.univ_nonempty

/-- Fully anisotropic normalized-Gamma density on the open simplex. -/
def normalizedGammaDensity [Fintype I]
    (parameters : Parameters I) (point : InteriorSimplexPoint I) : ℝ :=
  (Real.Gamma parameters.total / parameters.gammaProduct) *
      (∏ i, point i ^ (parameters.shape i - 1) *
        parameters.scale i ^ (-parameters.shape i)) /
    weightedInverseScaleSum parameters point ^ parameters.total

theorem normalizedGammaDensity_pos [Fintype I] [Nonempty I]
    (parameters : Parameters I) (point : InteriorSimplexPoint I) :
    0 < normalizedGammaDensity parameters point := by
  apply div_pos
  · apply mul_pos
    · exact div_pos (Real.Gamma_pos_of_pos parameters.total_pos)
        parameters.gammaProduct_pos
    · exact Finset.prod_pos fun i _ =>
        mul_pos
          (Real.rpow_pos_of_pos (point.positive i) _)
          (Real.rpow_pos_of_pos (parameters.scalePositive i) _)
  · exact Real.rpow_pos_of_pos (weightedInverseScaleSum_pos parameters point) _

/-- Standard Dirichlet density, stated separately so equal-scale probability
semantics are not confused with anisotropic normalized-Gamma parameters. -/
def dirichletDensity [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I) (point : InteriorSimplexPoint I) : ℝ :=
  (1 / parameters.multivariateBeta) *
    ∏ i, point i ^ (parameters.shape i - 1)

theorem dirichletDensity_pos [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I) (point : InteriorSimplexPoint I) :
    0 < dirichletDensity parameters point := by
  exact mul_pos (one_div_pos.mpr parameters.multivariateBeta_pos)
    (Finset.prod_pos fun i _ => Real.rpow_pos_of_pos (point.positive i) _)

/-- Equal scale cancels exactly under normalized-Gamma normalization, leaving
the standard Dirichlet density. -/
theorem normalizedGammaDensity_equalScale [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I)
    (scale : ℝ) (positive : 0 < scale)
    (point : InteriorSimplexPoint I) :
    normalizedGammaDensity (Parameters.equalScale parameters scale positive) point =
      dirichletDensity parameters point := by
  classical
  have scaleProduct :
      (∏ i : I, scale ^ (-parameters.shape i)) =
        scale ^ (-parameters.total) := by
    calc
      (∏ i : I, scale ^ (-parameters.shape i)) =
          scale ^ ∑ i : I, -parameters.shape i :=
        prod_rpow_eq_rpow_sum scale positive _
      _ = scale ^ (-parameters.total) := by
        congr 1
        simp [DirichletParameters.total]
  have inverseScaleSum :
      weightedInverseScaleSum (Parameters.equalScale parameters scale positive) point =
        1 / scale := by
    unfold weightedInverseScaleSum Parameters.equalScale
    rw [← Finset.sum_div, point.normalized]
  have denominator :
      weightedInverseScaleSum (Parameters.equalScale parameters scale positive) point ^
          parameters.total =
        scale ^ (-parameters.total) := by
    rw [inverseScaleSum, one_div, Real.inv_rpow positive.le,
      Real.rpow_neg positive.le]
  have scalePower_ne_zero : scale ^ (-parameters.total) ≠ 0 :=
    (Real.rpow_pos_of_pos positive _).ne'
  have gammaProduct_ne_zero : parameters.gammaProduct ≠ 0 :=
    parameters.gammaProduct_pos.ne'
  have gammaTotal_ne_zero : Real.Gamma parameters.total ≠ 0 :=
    (Real.Gamma_pos_of_pos parameters.total_pos).ne'
  unfold normalizedGammaDensity dirichletDensity
  change
    (Real.Gamma parameters.total / parameters.gammaProduct) *
          (∏ i, point i ^ (parameters.shape i - 1) *
            scale ^ (-parameters.shape i)) /
        weightedInverseScaleSum (Parameters.equalScale parameters scale positive) point ^
          parameters.total =
      (1 / (parameters.gammaProduct / Real.Gamma parameters.total)) *
        ∏ i, point i ^ (parameters.shape i - 1)
  rw [Finset.prod_mul_distrib, scaleProduct, denominator]
  field_simp

/-- Multiplying every Gamma scale by the same positive factor leaves the
normalized-Gamma density unchanged. -/
theorem normalizedGammaDensity_scaleAll [Fintype I] [Nonempty I]
    (parameters : Parameters I)
    (factor : ℝ) (positive : 0 < factor)
    (point : InteriorSimplexPoint I) :
    normalizedGammaDensity (parameters.scaleAll factor positive) point =
      normalizedGammaDensity parameters point := by
  classical
  have factorProduct :
      (∏ i : I, factor ^ (-parameters.shape i)) =
        factor ^ (-parameters.total) := by
    calc
      (∏ i : I, factor ^ (-parameters.shape i)) =
          factor ^ ∑ i : I, -parameters.shape i :=
        prod_rpow_eq_rpow_sum factor positive _
      _ = factor ^ (-parameters.total) := by
        congr 1
        simp [DirichletParameters.total]
  have weightedSum :
      weightedInverseScaleSum (parameters.scaleAll factor positive) point =
        weightedInverseScaleSum parameters point / factor := by
    unfold weightedInverseScaleSum
    change (∑ i, point i / (factor * parameters.scale i)) = _
    calc
      (∑ i, point i / (factor * parameters.scale i)) =
          ∑ i, (point i / parameters.scale i) / factor := by
        apply Finset.sum_congr rfl
        intro i _
        field_simp [positive.ne', (parameters.scalePositive i).ne']
      _ = (∑ i, point i / parameters.scale i) / factor :=
        (Finset.sum_div Finset.univ
          (fun i => point i / parameters.scale i) factor).symm
  have productScaling :
      (∏ i : I, point i ^ (parameters.shape i - 1) *
        (factor * parameters.scale i) ^ (-parameters.shape i)) =
      factor ^ (-parameters.total) *
        ∏ i : I, point i ^ (parameters.shape i - 1) *
          parameters.scale i ^ (-parameters.shape i) := by
    calc
      (∏ i : I, point i ^ (parameters.shape i - 1) *
          (factor * parameters.scale i) ^ (-parameters.shape i)) =
        ∏ i : I, factor ^ (-parameters.shape i) *
          (point i ^ (parameters.shape i - 1) *
            parameters.scale i ^ (-parameters.shape i)) := by
          apply Finset.prod_congr rfl
          intro i _
          rw [Real.mul_rpow positive.le (parameters.scalePositive i).le]
          ring
      _ = (∏ i : I, factor ^ (-parameters.shape i)) *
          ∏ i : I, point i ^ (parameters.shape i - 1) *
            parameters.scale i ^ (-parameters.shape i) :=
        Finset.prod_mul_distrib
      _ = factor ^ (-parameters.total) *
          ∏ i : I, point i ^ (parameters.shape i - 1) *
            parameters.scale i ^ (-parameters.shape i) := by
        rw [factorProduct]
  have denominatorScaling :
      weightedInverseScaleSum (parameters.scaleAll factor positive) point ^
          parameters.total =
        weightedInverseScaleSum parameters point ^ parameters.total /
          factor ^ parameters.total := by
    rw [weightedSum]
    exact Real.div_rpow
      (weightedInverseScaleSum_pos parameters point).le positive.le _
  have factorPower_ne_zero : factor ^ parameters.total ≠ 0 :=
    (Real.rpow_pos_of_pos positive _).ne'
  have denominator_ne_zero :
      weightedInverseScaleSum parameters point ^ parameters.total ≠ 0 :=
    (Real.rpow_pos_of_pos (weightedInverseScaleSum_pos parameters point) _).ne'
  unfold normalizedGammaDensity
  change
    (Real.Gamma parameters.total / parameters.gammaProduct) *
        (∏ i, point i ^ (parameters.shape i - 1) *
          (factor * parameters.scale i) ^ (-parameters.shape i)) /
      weightedInverseScaleSum (parameters.scaleAll factor positive) point ^
        parameters.total = _
  rw [productScaling, denominatorScaling,
    Real.rpow_neg positive.le parameters.total]
  field_simp

/-- Pointwise Radon--Nikodym candidate between two strictly positive density
profiles on the same index type. -/
def transportKernel [Fintype I]
    (source target : Parameters I) (point : InteriorSimplexPoint I) : ℝ :=
  normalizedGammaDensity target point /
    normalizedGammaDensity source point

@[simp]
theorem transportKernel_self [Fintype I] [Nonempty I]
    (parameters : Parameters I) (point : InteriorSimplexPoint I) :
    transportKernel parameters parameters point = 1 := by
  exact div_self (normalizedGammaDensity_pos parameters point).ne'

theorem transportKernel_cocycle [Fintype I] [Nonempty I]
    (first second third : Parameters I) (point : InteriorSimplexPoint I) :
    transportKernel first third point =
      transportKernel first second point * transportKernel second third point := by
  unfold transportKernel
  field_simp [
    (normalizedGammaDensity_pos first point).ne',
    (normalizedGammaDensity_pos second point).ne',
    (normalizedGammaDensity_pos third point).ne']

theorem transportKernel_inverse [Fintype I] [Nonempty I]
    (source target : Parameters I) (point : InteriorSimplexPoint I) :
    transportKernel source target point *
        transportKernel target source point = 1 := by
  simpa using
    (transportKernel_cocycle source target source point).symm

theorem normalizedGammaDensity_reindex [Fintype I] [Fintype J]
    [Nonempty I] [Nonempty J]
    (equivalence : I ≃ J) (parameters : Parameters I)
    (point : InteriorSimplexPoint I) :
    normalizedGammaDensity (parameters.reindex equivalence)
        (point.reindex equivalence) =
      normalizedGammaDensity parameters point := by
  unfold normalizedGammaDensity weightedInverseScaleSum
  rw [Parameters.reindex_total, Parameters.reindex_gammaProduct]
  simp only [InteriorSimplexPoint.reindex_apply, Parameters.reindex_shape,
    Parameters.reindex_scale]
  have productEquality :
      (∏ j : J, point (equivalence.symm j) ^
          (parameters.shape (equivalence.symm j) - 1) *
          parameters.scale (equivalence.symm j) ^
            (-parameters.shape (equivalence.symm j))) =
        ∏ i : I, point i ^ (parameters.shape i - 1) *
          parameters.scale i ^ (-parameters.shape i) :=
    Equiv.prod_comp equivalence.symm
      (fun i : I => point i ^ (parameters.shape i - 1) *
        parameters.scale i ^ (-parameters.shape i))
  have sumEquality :
      (∑ j : J, point (equivalence.symm j) /
          parameters.scale (equivalence.symm j)) =
        ∑ i : I, point i / parameters.scale i :=
    Equiv.sum_comp equivalence.symm
      (fun i : I => point i / parameters.scale i)
  rw [productEquality, sumEquality]

theorem transportKernel_reindex [Fintype I] [Fintype J]
    [Nonempty I] [Nonempty J]
    (equivalence : I ≃ J) (source target : Parameters I)
    (point : InteriorSimplexPoint I) :
    transportKernel (source.reindex equivalence) (target.reindex equivalence)
        (point.reindex equivalence) =
      transportKernel source target point := by
  simp only [transportKernel, normalizedGammaDensity_reindex]

end

end BitMatrix.Probability.GammaDirichlet
