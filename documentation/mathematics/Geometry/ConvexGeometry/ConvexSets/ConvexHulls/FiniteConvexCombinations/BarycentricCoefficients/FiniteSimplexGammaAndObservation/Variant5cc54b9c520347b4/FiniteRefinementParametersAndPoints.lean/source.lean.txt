/-
FiniteRefinementParametersAndPoints — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9
Organized SHA-256: a22dadc07a53208d57358ba4287d33f2a3ee3a3fc50815345c14a991752db401
PMD: 510.3.020.010.010.010.010 barycentric coefficients (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete surjective finite refinement, positive shape-fiber sums, simplex merge and total identity; no probability-law pushforward theorem is supplied. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

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

/-! ## Exact split/merge parameter data -/

/-- A finite refinement map; every coarse index has at least one refined
coordinate. -/
structure Refinement (I J : Type*) [Fintype I] [Fintype J] where
  label : J → I
  surjective : Function.Surjective label

namespace Refinement

variable [Fintype I] [Fintype J] [DecidableEq I]

/-- Merge refined Dirichlet shapes by summing within each fiber. -/
def mergeParameters (refinement : Refinement I J)
    (parameters : DirichletParameters J) : DirichletParameters I where
  shape i := ∑ j, if refinement.label j = i then parameters.shape j else 0
  shapePositive i := by
    obtain ⟨j, equality⟩ := refinement.surjective i
    have member : j ∈ (Finset.univ.filter fun j => refinement.label j = i) := by
      simp [equality]
    rw [← Finset.sum_filter]
    exact Finset.sum_pos'
      (fun j _ => (parameters.shapePositive j).le)
      ⟨j, member, parameters.shapePositive j⟩

/-- Merge a refined simplex point along the same fiber map. -/
def mergePoint (refinement : Refinement I J)
    (point : SimplexPoint J) : SimplexPoint I :=
  point.merge refinement.label

theorem mergeParameters_total (refinement : Refinement I J)
    (parameters : DirichletParameters J) :
    (refinement.mergeParameters parameters).total = parameters.total := by
  unfold mergeParameters DirichletParameters.total
  calc
    (∑ i, ∑ j, if refinement.label j = i then parameters.shape j else 0) =
        ∑ j, ∑ i, if refinement.label j = i then parameters.shape j else 0 :=
      Finset.sum_comm
    _ = ∑ j, parameters.shape j := by simp

end Refinement

end

end BitMatrix.Probability.GammaDirichlet
