/-
ExactAnalyticGamma — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9
Organized SHA-256: a22dadc07a53208d57358ba4287d33f2a3ee3a3fc50815345c14a991752db401
PMD: 510.5.120.010.010 gamma function (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact analytic Gamma alias/positivity/recurrence/reflection merely forward Mathlib analytic results with their written hypotheses and totalized-pole warning. No finite Lanczos approximation or new analytic theorem is identified with them. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import BitMatrix.Probability.Simplex
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.MeasureTheory.Constructions.Pi
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym
import Mathlib.Probability.Distributions.Gamma
import Mathlib.Tactic

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

/-! ## Exact analytic Gamma boundary -/

/-- The project exact Gamma symbol is Mathlib's analytic `Real.Gamma`, not the
runtime Lanczos approximation. -/
abbrev exactGamma : ℝ → ℝ := Real.Gamma

theorem exactGamma_positive {value : ℝ} (positive : 0 < value) :
    0 < exactGamma value :=
  Real.Gamma_pos_of_pos positive

theorem exactGamma_recurrence {value : ℝ} (nonzero : value ≠ 0) :
    exactGamma (value + 1) = value * exactGamma value :=
  Real.Gamma_add_one nonzero

/-- Euler reflection, interpreted on the meromorphic Gamma function.  Mathlib
totalizes Gamma to zero at pole locations, so this equality must not be read
as assigning a finite analytic value to a pole. -/
theorem exactGamma_reflection (value : ℝ) :
    exactGamma value * exactGamma (1 - value) =
      Real.pi / Real.sin (Real.pi * value) :=
  Real.Gamma_mul_Gamma_one_sub value

end

end BitMatrix.Probability.GammaDirichlet
