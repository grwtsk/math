/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RectangularCauchyKernel
import GRWTSK.NumberTheory.Chebyshev.TentPoleSubtraction

set_option autoImplicit false

/-!
# Complete finite residue identity on the actual admissible zeta rectangles

Combine the derived elementary rectangular Cauchy integral with the actual
finite principal-part subtraction and source-bound coefficient sum. The finite
contour theorem takes no count, source-identity, winding, numerical or decay
premise. Both remaining oriented edge terms are retained. No infinite explicit
formula or positive prime margin is asserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentFiniteResidues

open scoped BigOperators
open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.Analysis.Complex.RectangularPoleReduction
open GRWTSK.Analysis.Complex.RectangularCauchyKernel
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours
open GRWTSK.NumberTheory.Chebyshev.TentPoleSubtraction

noncomputable section

/-- All finite poles have their actual coefficients, and the contour factor is derived. -/
theorem tent_boundary_residue_formula (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (N : ℕ) :
    boundaryIntegral (integrand x h) (leftEdge N) 2 (contourHeight N) =
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I) *
        ((h : ℂ) - (∑ z ∈ heightHead (contourHeight N),
          (multiplicity z : ℂ) * tentKernel x h z.1) + (correctionPrefix N x h : ℂ)) := by
  rw [tent_boundary_eq_principalSum x h hh ha N,
    boundaryIntegral_principalSum (singularHead N) (tentCoefficient x h)
      (leftEdge N) 2 (contourHeight N) ((leftEdge_neg N).trans (by norm_num))
      (contourHeight_pos N) (fun p hp => ((mem_singularHead_iff N p).mp hp).1),
    sum_tentCoefficient_singularHead x h hh ha N]

/-- The normalized finite contour is pole minus nontrivial head plus trivial prefix. -/
theorem tent_boundary_div_two_pi_I (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (N : ℕ) :
    boundaryIntegral (integrand x h) (leftEdge N) 2 (contourHeight N) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) =
      (h : ℂ) - (∑ z ∈ heightHead (contourHeight N),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (correctionPrefix N x h : ℂ) := by
  have hq : (((2 * Real.pi : ℝ) : ℂ) * Complex.I) ≠ 0 :=
    mul_ne_zero (Complex.ofReal_ne_zero.mpr
      (mul_ne_zero (by norm_num) Real.pi_ne_zero)) Complex.I_ne_zero
  rw [tent_boundary_residue_formula x h hh ha N]
  field_simp [hq]

/-- The actual finite right segment retains BOTH correction edges with their exact signs. -/
theorem rightSegment_finite_residue_formula (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (N : ℕ) :
    rightSegment x h N =
      ((h : ℂ) - (∑ z ∈ heightHead (contourHeight N),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (correctionPrefix N x h : ℂ)) +
      vertical (integrand x h) (leftEdge N) (contourHeight N) / ((2 * Real.pi : ℝ) : ℂ) +
      (horizontal (integrand x h) (leftEdge N) 2 (contourHeight N) -
        horizontal (integrand x h) (leftEdge N) 2 (-contourHeight N)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  rw [rightSegment_decomposition, tent_boundary_div_two_pi_I x h hh ha N]

end
end GRWTSK.NumberTheory.Chebyshev.TentFiniteResidues
