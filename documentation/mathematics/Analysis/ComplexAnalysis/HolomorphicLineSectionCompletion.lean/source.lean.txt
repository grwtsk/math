import GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
import Mathlib.Analysis.InnerProductSpace.Completion
import Mathlib.Analysis.InnerProductSpace.LinearMap
import Mathlib.Analysis.Normed.Operator.Extend

/-!
# Abstract completion of the finite-energy section quotient

The completion uses precisely the preceding norm and uniformity. The old quotient embeds
linearly, isometrically and densely; it is not declared complete or identified with its
completion. Completed vectors are abstract limit points, not chosen holomorphic sections.
Gauge extension retains the same measure and the constructed transported metric.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion

open MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing
open GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct

universe u v
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

/-- Completion in the historical quotient's induced norm, not an ambient L2 carrier. -/
abbrev SectionCompletion (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :=
  UniformSpace.Completion (SectionQuotient M μ hOpen)

/-- Completeness belongs to the new carrier only. -/
theorem sectionCompletion_complete (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : CompleteSpace (SectionCompletion M μ hOpen) := inferInstance

/-- The canonical completion coercion, with its actual complex-linear isometry structure. -/
def toCompletion (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : SectionQuotient M μ hOpen →ₗᵢ[ℂ] SectionCompletion M μ hOpen :=
  UniformSpace.Completion.toComplₗᵢ

@[simp] theorem toCompletion_apply (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    toCompletion M μ hOpen q = (q : UniformSpace.Completion (SectionQuotient M μ hOpen)) := rfl

theorem toCompletion_isometry (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : Isometry (toCompletion M μ hOpen) :=
  (toCompletion M μ hOpen).isometry

theorem toCompletion_injective (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : Function.Injective (toCompletion M μ hOpen) :=
  (toCompletion M μ hOpen).injective

theorem toCompletion_denseRange (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : DenseRange (toCompletion M μ hOpen) :=
  UniformSpace.Completion.denseRange_coe

theorem toCompletion_isUniformInducing (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : IsUniformInducing (toCompletion M μ hOpen) :=
  UniformSpace.Completion.isUniformInducing_coe _

@[simp] theorem toCompletion_norm (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    ‖toCompletion M μ hOpen q‖ = ‖q‖ := (toCompletion M μ hOpen).norm_map q

@[simp] theorem toCompletion_inner (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    inner ℂ (toCompletion M μ hOpen q) (toCompletion M μ hOpen r) = inner ℂ q r :=
  UniformSpace.Completion.inner_coe q r

theorem toCompletion_classOf_inner (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen) :
    inner ℂ (toCompletion M μ hOpen (classOf M μ hOpen s))
      (toCompletion M μ hOpen (classOf M μ hOpen t)) = sectionPairing M μ hOpen s t := by
  rw [toCompletion_inner, inner_classOf]

/-- On new limit points this is squared norm, not an asserted representative integral. -/
def completionEnergy (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (x : SectionCompletion M μ hOpen) : ℝ≥0∞ :=
  ENNReal.ofReal (‖x‖ ^ 2)

theorem completionEnergy_lt_top (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (x : SectionCompletion M μ hOpen) :
    completionEnergy M μ hOpen x < ∞ := by simp [completionEnergy]

/-- Recovery uses the preceding finite-energy theorem, including its exclusion of infinity. -/
@[simp] theorem completionEnergy_toCompletion (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    completionEnergy M μ hOpen (toCompletion M μ hOpen q) = quotientEnergy M μ hOpen q := by
  rw [completionEnergy, toCompletion_norm, ofReal_norm_sq_eq_energy]

theorem toCompletion_dist (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    dist (toCompletion M μ hOpen q) (toCompletion M μ hOpen r) =
      Real.sqrt ((quotientEnergy M μ hOpen (q - r)).toReal) := by
  rw [(toCompletion M μ hOpen).isometry.dist_eq, dist_eq_sqrt_energy_sub]

/-- Continuous maps to any Hausdorff target are determined on the original quotient. -/
theorem completion_ext (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) {Y : Type v} [TopologicalSpace Y] [T2Space Y]
    {f g : SectionCompletion M μ hOpen → Y} (hf : Continuous f) (hg : Continuous g)
    (h : ∀ q, f (toCompletion M μ hOpen q) = g (toCompletion M μ hOpen q)) : f = g :=
  UniformSpace.Completion.ext hf hg h

section Extension

variable {F : Type v} [NormedAddCommGroup F] [NormedSpace ℂ F] [CompleteSpace F]

/-- Extend an actual bounded linear map into a complete codomain along the exact embedding. -/
def extendLinear (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (f : SectionQuotient M μ hOpen →L[ℂ] F) : SectionCompletion M μ hOpen →L[ℂ] F :=
  f.extend (toCompletion M μ hOpen).toContinuousLinearMap

@[simp] theorem extendLinear_toCompletion (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f : SectionQuotient M μ hOpen →L[ℂ] F)
    (q : SectionQuotient M μ hOpen) :
    extendLinear M μ hOpen f (toCompletion M μ hOpen q) = f q :=
  f.extend_eq (toCompletion_denseRange M μ hOpen) (toCompletion_isUniformInducing M μ hOpen) q

theorem extendLinear_unique (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f : SectionQuotient M μ hOpen →L[ℂ] F)
    (g : SectionCompletion M μ hOpen →L[ℂ] F)
    (hg : ∀ q, g (toCompletion M μ hOpen q) = f q) : g = extendLinear M μ hOpen f := by
  have h := completion_ext M μ hOpen g.continuous (extendLinear M μ hOpen f).continuous
    (fun q => (hg q).trans (extendLinear_toCompletion M μ hOpen f q).symm)
  ext x
  exact congrFun h x

theorem existsUnique_extension (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f : SectionQuotient M μ hOpen →L[ℂ] F) :
    ∃! g : SectionCompletion M μ hOpen →L[ℂ] F,
      ∀ q, g (toCompletion M μ hOpen q) = f q :=
  ⟨extendLinear M μ hOpen f, extendLinear_toCompletion M μ hOpen f,
    fun g hg => extendLinear_unique M μ hOpen f g hg⟩

end Extension

/-- Extending the embedding gives identity, including the zero-space case. -/
theorem extendLinear_embedding (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    extendLinear M μ hOpen (toCompletion M μ hOpen).toContinuousLinearMap =
      ContinuousLinearMap.id ℂ (SectionCompletion M μ hOpen) := by
  symm
  exact extendLinear_unique M μ hOpen _ _ (fun _ => rfl)

/-- Norm matching is proved from the old gauge isometry, not assumed on an unrelated map. -/
theorem gauge_toCompletion_norm (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    ‖toCompletion (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q)‖ =
      ‖toCompletion M μ hOpen q‖ := by
  rw [toCompletion_norm, toCompletion_norm]
  exact (gaugeLinearIsometryEquiv G M μ hOpen).norm_map q

/-- Extend both directions of the exact old gauge equivalence between the two completions. -/
def gaugeCompletionEquiv (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    SectionCompletion M μ hOpen ≃ₗᵢ[ℂ] SectionCompletion (transportMetric G M) μ hOpen :=
  (gaugeLinearEquiv G M μ hOpen).extendOfIsometry
    (toCompletion M μ hOpen).toLinearMap
    (toCompletion (transportMetric G M) μ hOpen).toLinearMap
    (toCompletion_denseRange M μ hOpen)
    (toCompletion_denseRange (transportMetric G M) μ hOpen)
    (gauge_toCompletion_norm G M μ hOpen)

@[simp] theorem gaugeCompletion_toCompletion (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    gaugeCompletionEquiv G M μ hOpen (toCompletion M μ hOpen q) =
      toCompletion (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q) :=
  LinearEquiv.extendOfIsometry_eq (gaugeLinearEquiv G M μ hOpen)
    (toCompletion M μ hOpen).toLinearMap
    (toCompletion (transportMetric G M) μ hOpen).toLinearMap
    (toCompletion_denseRange M μ hOpen)
    (toCompletion_denseRange (transportMetric G M) μ hOpen)
    (gauge_toCompletion_norm G M μ hOpen) q

@[simp] theorem gaugeCompletion_symm_toCompletion (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (q : SectionQuotient (transportMetric G M) μ hOpen) :
    (gaugeCompletionEquiv G M μ hOpen).symm
        (toCompletion (transportMetric G M) μ hOpen q) =
      toCompletion M μ hOpen ((gaugeEquiv G M μ hOpen).symm q) :=
  LinearEquiv.extendOfIsometry_symm_eq (gaugeLinearEquiv G M μ hOpen)
    (toCompletion M μ hOpen).toLinearMap
    (toCompletion (transportMetric G M) μ hOpen).toLinearMap
    (toCompletion_denseRange M μ hOpen)
    (toCompletion_denseRange (transportMetric G M) μ hOpen)
    (gauge_toCompletion_norm G M μ hOpen) q

theorem gaugeCompletion_isometry (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    Isometry (gaugeCompletionEquiv G M μ hOpen) := (gaugeCompletionEquiv G M μ hOpen).isometry

theorem gaugeCompletion_inner (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (x y : SectionCompletion M μ hOpen) :
    inner ℂ (gaugeCompletionEquiv G M μ hOpen x) (gaugeCompletionEquiv G M μ hOpen y) =
      inner ℂ x y := (gaugeCompletionEquiv G M μ hOpen).inner_map_map x y

theorem completionEnergy_gauge (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (x : SectionCompletion M μ hOpen) :
    completionEnergy (transportMetric G M) μ hOpen (gaugeCompletionEquiv G M μ hOpen x) =
      completionEnergy M μ hOpen x := by
  simp only [completionEnergy, (gaugeCompletionEquiv G M μ hOpen).norm_map]

/-- Agreement on old classes and continuity uniquely determine the completed gauge map. -/
theorem gaugeCompletion_unique (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (f : SectionCompletion M μ hOpen → SectionCompletion (transportMetric G M) μ hOpen)
    (hf : Continuous f)
    (h : ∀ q, f (toCompletion M μ hOpen q) =
      toCompletion (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q)) :
    f = ⇑(gaugeCompletionEquiv G M μ hOpen) :=
  completion_ext M μ hOpen hf (gaugeCompletionEquiv G M μ hOpen).continuous
    (fun q => (h q).trans (gaugeCompletion_toCompletion G M μ hOpen q).symm)

/-- No nontriviality is smuggled in when passing to completion. -/
theorem zeroMeasure_completion_eq_zero (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (x : SectionCompletion M 0 hOpen) : x = 0 := by
  refine UniformSpace.Completion.induction_on x (isClosed_eq continuous_id continuous_const) ?_
  intro q
  change toCompletion M 0 hOpen q = 0
  rw [zeroMeasure_eq_zero M hOpen q]
  exact (toCompletion M 0 hOpen).map_zero

namespace Fixtures

open GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures

/-- A real historical finite-energy class, embedded in the abstract completion. -/
def diracVector (c : ℂ) :
    SectionCompletion (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen :=
  toCompletion (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
    (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
      (constantAt c zeroPoint))

theorem equal_norm_distinct_completed :
    ‖diracVector 1‖ = ‖diracVector (-1)‖ ∧ diracVector 1 ≠ diracVector (-1) := by
  constructor
  · simpa only [diracVector, toCompletion_norm] using
      GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct.Fixtures.equal_norm_distinct_classes.1
  · intro h
    exact
      GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct.Fixtures.equal_norm_distinct_classes.2
        ((toCompletion (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
          twoCharts_isOpen).injective h)

theorem completed_imaginary_pairing :
    inner ℂ (diracVector 1) (diracVector Complex.I) = Complex.I := by
  simpa only [diracVector, toCompletion_inner] using
    GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct.Fixtures.bundled_imaginary_pairing

theorem completed_reversed_imaginary_pairing :
    inner ℂ (diracVector Complex.I) (diracVector 1) = -Complex.I := by
  simpa only [diracVector, toCompletion_inner] using
    GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct.Fixtures.bundled_reversed_imaginary_pairing

end Fixtures
end
end GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
