/-
PositiveSampleNormalization — exact individually reviewed source
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

/- PositiveSample normalization/common-scale cancellation is complete, including the exact omit [Nonempty I] in scale_total control. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

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

/-! ## Positive samples and common-scale invariance -/

/-- A strictly positive finite family before simplex normalization. -/
structure PositiveSample (I : Type*) [Fintype I] where
  mass : I → ℝ
  positive : ∀ i, 0 < mass i

namespace PositiveSample

variable [Fintype I] [Nonempty I]

def total (sample : PositiveSample I) : ℝ :=
  ∑ i, sample.mass i

theorem total_pos (sample : PositiveSample I) : 0 < sample.total := by
  exact Finset.sum_pos (fun i _ => sample.positive i) Finset.univ_nonempty

/-- Normalize positive Gamma samples to an open-simplex point. -/
def normalize (sample : PositiveSample I) : InteriorSimplexPoint I where
  weight i := sample.mass i / sample.total
  nonnegative i := (div_pos (sample.positive i) sample.total_pos).le
  normalized := by
    rw [show (∑ i, sample.mass i / sample.total) = sample.total / sample.total by
      simp only [total]
      rw [Finset.sum_div]]
    exact div_self sample.total_pos.ne'
  positive i := div_pos (sample.positive i) sample.total_pos

/-- Multiply every unnormalized sample by the same positive scale. -/
def scale (sample : PositiveSample I) (factor : ℝ) (positive : 0 < factor) :
    PositiveSample I where
  mass i := factor * sample.mass i
  positive i := mul_pos positive (sample.positive i)

omit [Nonempty I] in
theorem scale_total (sample : PositiveSample I)
    (factor : ℝ) (positive : 0 < factor) :
    (sample.scale factor positive).total = factor * sample.total := by
  simp only [total, scale, Finset.mul_sum]

/-- A common scale cancels exactly under Gamma-sample normalization. -/
theorem normalize_scale (sample : PositiveSample I)
    (factor : ℝ) (positive : 0 < factor) :
    (sample.scale factor positive).normalize = sample.normalize := by
  apply InteriorSimplexPoint.ext
  intro i
  change (sample.scale factor positive).mass i /
      (sample.scale factor positive).total = sample.mass i / sample.total
  rw [scale_total]
  change factor * sample.mass i / (factor * sample.total) =
    sample.mass i / sample.total
  field_simp [positive.ne', sample.total_pos.ne']

end PositiveSample

end

end BitMatrix.Probability.GammaDirichlet
