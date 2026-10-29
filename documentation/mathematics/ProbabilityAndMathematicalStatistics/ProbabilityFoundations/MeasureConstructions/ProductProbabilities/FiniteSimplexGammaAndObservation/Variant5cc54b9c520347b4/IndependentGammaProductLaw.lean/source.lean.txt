/-
IndependentGammaProductLaw — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9
Organized SHA-256: a22dadc07a53208d57358ba4287d33f2a3ee3a3fc50815345c14a991752db401
PMD: 510.8.010.050.010 product probabilities (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Concrete finite product gammaMeasure construction and its IsProbabilityMeasure proof are materialized with exact positive shapes/rates, including finite empty index. This supplies a product law, not a constructed Dirichlet or normalized-Gamma simplex measure. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

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

/-! ## Concrete independent Gamma product law -/

/-- Independent scalar Gamma samples with the requested shapes and scales.
Mathlib's Gamma distribution takes a rate, hence the reciprocal conversion. -/
def gammaProductMeasure [Fintype I] (parameters : Parameters I) :
    Measure (I → ℝ) :=
  Measure.pi fun i =>
    ProbabilityTheory.gammaMeasure (parameters.shape i) (parameters.rate i)

theorem gammaProductMeasure_probability [Fintype I]
    (parameters : Parameters I) :
    IsProbabilityMeasure (gammaProductMeasure parameters) := by
  let coordinateProbability :
      ∀ i, IsProbabilityMeasure
        (ProbabilityTheory.gammaMeasure
          (parameters.shape i) (parameters.rate i)) :=
    fun i => ProbabilityTheory.isProbabilityMeasure_gammaMeasure
      (parameters.shapePositive i) (parameters.rate_pos i)
  letI : ∀ i, IsProbabilityMeasure
      (ProbabilityTheory.gammaMeasure
        (parameters.shape i) (parameters.rate i)) :=
    coordinateProbability
  change IsProbabilityMeasure
    (Measure.pi fun i =>
      ProbabilityTheory.gammaMeasure (parameters.shape i) (parameters.rate i))
  infer_instance

end

end BitMatrix.Probability.GammaDirichlet
