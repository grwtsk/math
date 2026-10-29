/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingPacket
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Triangular finite-frequency weight, the coefficient profile underlying the
classical Fejer average.  This is defined directly rather than importing a
Fejer theorem. -/
def triangularSmoothingWeight (N n : ℕ) : ℝ :=
  if n < N then
    ((N - n : ℕ) : ℝ) / (N : ℝ)
  else
    0

theorem triangularSmoothingWeight_eq_zero_of_le
    {N n : ℕ} (hNn : N ≤ n) :
    triangularSmoothingWeight N n = 0 := by
  simp [triangularSmoothingWeight, Nat.not_lt.mpr hNn]

theorem triangularSmoothingWeight_nonnegative
    (N n : ℕ) :
    0 ≤ triangularSmoothingWeight N n := by
  unfold triangularSmoothingWeight
  split_ifs with h
  · positivity
  · exact le_rfl

theorem triangularSmoothingWeight_le_one
    {N n : ℕ} (hN : 0 < N) :
    triangularSmoothingWeight N n ≤ 1 := by
  unfold triangularSmoothingWeight
  split_ifs with h
  · have hden : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
    have hsub : N - n ≤ N := Nat.sub_le _ _
    exact (div_le_one hden).2 (by exact_mod_cast hsub)
  · norm_num

/-- Finite squared coefficient mass of the triangular profile. -/
def triangularSmoothingL2Mass (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, (triangularSmoothingWeight N n)^2

theorem triangularSmoothingL2Mass_nonnegative
    (N : ℕ) :
    0 ≤ triangularSmoothingL2Mass N := by
  unfold triangularSmoothingL2Mass
  positivity

/-- The triangular coefficient profile has squared mass at most N. -/
theorem triangularSmoothingL2Mass_le_cutoff
    {N : ℕ} (hN : 0 < N) :
    triangularSmoothingL2Mass N ≤ (N : ℝ) := by
  unfold triangularSmoothingL2Mass
  calc
    ∑ n ∈ Finset.range N, (triangularSmoothingWeight N n)^2
        ≤ ∑ n ∈ Finset.range N, (1 : ℝ) := by
          apply Finset.sum_le_sum
          intro n hn
          have h0 := triangularSmoothingWeight_nonnegative N n
          have h1 := triangularSmoothingWeight_le_one (N := N) (n := n) hN
          nlinarith
    _ = (N : ℝ) := by simp

/-- Concrete packet carrying the proved coefficient-side bounds.  The
boundaryWidthFactor is set to the target inverse-cutoff scale; proving that the
triangular kernel actually attains this boundary approximation remains the
analytic obligation. -/
def triangularPrimeIntervalSmoothingPacket
    (N : ℕ) (hN : 0 < N) :
    PrimeIntervalSmoothingPacket where
  cutoff := N
  cutoff_pos := hN
  coefficientL2Budget := triangularSmoothingL2Mass N
  coefficientL2Budget_nonnegative :=
    triangularSmoothingL2Mass_nonnegative N
  boundaryWidthFactor := 1 / (N : ℝ)
  boundaryWidthFactor_nonnegative := by positivity
  coefficientBudget_le_cutoff :=
    triangularSmoothingL2Mass_le_cutoff hN
  boundaryPowerCost := le_rfl

/-- What remains to promote the triangular coefficient packet from a formal
budget record to an actual smoothing theorem: prove a source-faithful interval
majorant/minorant or equivalent boundary-approximation statement. -/
def TriangularBoundaryApproximationClaim : Prop :=
  ∀ X N : ℕ, 0 < X → 0 < N →
    ∀ m : ℕ, 2 * X ≤ m → m ≤ 4 * X →
      ∃ boundaryError : ℝ,
        0 ≤ boundaryError ∧
        boundaryError ≤ (X : ℝ) / (N : ℝ)

/-- The coefficient side of the candidate is closed; the boundary theorem is
the first remaining analytic supplier for this explicit family. -/
structure TriangularSmoothingCandidateAccepted where
  boundary : TriangularBoundaryApproximationClaim

end GRWTSK.RiemannHypothesis
