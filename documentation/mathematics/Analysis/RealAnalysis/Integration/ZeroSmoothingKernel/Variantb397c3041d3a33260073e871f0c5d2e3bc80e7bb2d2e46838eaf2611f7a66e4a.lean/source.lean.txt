import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets
import Mathlib.Analysis.Calculus.BumpFunction.Convolution

/-!
# Source-faithful smoothing of the actual zero-side test

The kernel is a real, even, nonnegative smooth bump of integral one and support
inside `[-ε, ε]`. It is convolved with the unchanged unnormalized `actualTest A`
from RH-0010, equation (16). This supplies concrete smooth compact tests and
pointwise approximation, not the still-required H¹ or logarithmic-norm
convergence, smooth explicit formula, or dominated zero-side descent.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSmoothing

open MeasureTheory Set Filter
open scoped ContDiff Convolution Topology Pointwise

noncomputable section

/-- A centered smooth bump with outer radius exactly the source smoothing scale. -/
def smoothingBump (ε : ℝ) (hε : 0 < ε) : ContDiffBump (0 : ℝ) where
  rIn := ε / 2
  rOut := ε
  rIn_pos := half_pos hε
  rIn_lt_rOut := half_lt_self hε

/-- The source smoothing kernel, normalized by its genuine positive Lebesgue integral. -/
def mollifier (ε : ℝ) (hε : 0 < ε) : ℝ → ℝ :=
  (smoothingBump ε hε).normed volume

/-- The source kernel has no negative mass. -/
theorem mollifier_nonneg (ε : ℝ) (hε : 0 < ε) (x : ℝ) :
    0 ≤ mollifier ε hε x :=
  (smoothingBump ε hε).nonneg_normed x

/-- Reflection preserves the real kernel exactly. -/
theorem mollifier_even (ε : ℝ) (hε : 0 < ε) : Function.Even (mollifier ε hε) :=
  (smoothingBump ε hε).normed_neg

/-- Smoothness holds at every point, including the support boundary. -/
theorem mollifier_contDiff (ε : ℝ) (hε : 0 < ε) :
    ContDiff ℝ ∞ (mollifier ε hε) :=
  (smoothingBump ε hε).contDiff_normed

/-- The integral defining the mass is genuinely convergent. -/
theorem mollifier_integrable (ε : ℝ) (hε : 0 < ε) :
    Integrable (mollifier ε hε) volume :=
  (smoothingBump ε hε).integrable_normed

/-- The exact mass-one normalization is independent of the smoothing scale. -/
theorem mollifier_integral (ε : ℝ) (hε : 0 < ε) :
    (∫ x, mollifier ε hε x) = 1 :=
  (smoothingBump ε hε).integral_normed

/-- The kernel vanishes at and outside both source support endpoints. -/
theorem mollifier_support (ε : ℝ) (hε : 0 < ε) :
    Function.support (mollifier ε hε) = Ioo (-ε) ε := by
  simpa only [mollifier, smoothingBump, Real.ball_eq_Ioo, zero_sub, zero_add] using
    (smoothingBump ε hε).support_normed_eq (μ := volume)

/-- Its topological support is exactly the prescribed closed interval. -/
theorem mollifier_tsupport (ε : ℝ) (hε : 0 < ε) :
    tsupport (mollifier ε hε) = Icc (-ε) ε := by
  simpa only [mollifier, smoothingBump, Real.closedBall_eq_Icc, zero_sub, zero_add] using
    (smoothingBump ε hε).tsupport_normed_eq (μ := volume)

/-- Every kernel in the family has compact support. -/
theorem mollifier_hasCompactSupport (ε : ℝ) (hε : 0 < ε) :
    HasCompactSupport (mollifier ε hε) :=
  (smoothingBump ε hε).hasCompactSupport_normed

/-- Convolution uses the actual unnormalized source test, with real multiplication. -/
def smoothedTest (A ε : ℝ) (hε : 0 < ε) : ℝ → ℝ :=
  mollifier ε hε ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume] ZeroSideTargets.actualTest A

/-- The displayed real integral fixes the orientation and normalization of smoothing. -/
theorem smoothedTest_eq_integral (A ε : ℝ) (hε : 0 < ε) (x : ℝ) :
    smoothedTest A ε hε x =
      ∫ y, mollifier ε hε y * ZeroSideTargets.actualTest A (x - y) := rfl


end
end ZeroSmoothing
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
