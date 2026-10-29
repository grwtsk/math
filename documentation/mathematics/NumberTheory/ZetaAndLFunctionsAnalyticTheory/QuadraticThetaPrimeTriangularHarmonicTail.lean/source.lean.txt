/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularTailDecomposition
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

open scoped BigOperators

/-- Model tail budget obtained by summing a pointwise triangular-kernel leakage
of size O((X/N)/d) over lattice distance d from the transition boundary. -/
def triangularHarmonicTailMajorant
    (C : ℝ) (X N : ℕ) : ℝ :=
  C * ((X : ℝ) / (N : ℝ)) *
    Real.log ((4 * X : ℕ) : ℝ) *
    harmonic X

/-- Source-facing analytic claim: the actual triangular tail leakage is bounded
by the harmonic majorant.  This is the next genuine kernel theorem; it is not
proved in this module. -/
def TriangularHarmonicTailDecayClaim : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ X N m : ℕ,
      0 < X → 0 < N →
      2 * X ≤ m → m ≤ 4 * X →
      ∃ data :
        TriangularBoundaryTailData
          X N m (triangularHarmonicTailMajorant C X N),
        True

/-- The harmonic factor is at most 1+log X. -/
theorem triangularHarmonicTailMajorant_le_log
    {C : ℝ} (hC : 0 ≤ C)
    {X N : ℕ} (hX : 0 < X) (hN : 0 < N) :
    triangularHarmonicTailMajorant C X N ≤
      C * ((X : ℝ) / (N : ℝ)) *
        Real.log ((4 * X : ℕ) : ℝ) *
        (1 + Real.log (X : ℝ)) := by
  unfold triangularHarmonicTailMajorant
  have hh := harmonic_le_one_add_log X
  have hXcast : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hNcast : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
  have hlog4X :
      0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast (by omega : 1 ≤ 4 * X)
  have hpref :
      0 ≤ C * ((X : ℝ) / (N : ℝ)) *
        Real.log ((4 * X : ℕ) : ℝ) := by
    positivity
  exact mul_le_mul_of_nonneg_left hh hpref

/-- Balanced cutoff used by the smoothing heuristic. -/
def balancedTriangularCutoff (X : ℕ) : ℕ :=
  Nat.ceil (Real.rpow (X : ℝ) ((1 : ℝ) / 3)) + 1

theorem balancedTriangularCutoff_pos
    (X : ℕ) :
    0 < balancedTriangularCutoff X := by
  unfold balancedTriangularCutoff
  omega

/-- Schematic power bookkeeping for the harmonic tail: the X/N factor at
N ~ X^(1/3) has power 2/3, while the remaining harmonic and prime weights are
only logarithmic. -/
theorem balancedTriangularTail_power :
    truncatedFourierBoundaryExponent ((1 : ℝ) / 3) =
      (2 : ℝ) / 3 := by
  exact truncatedFourierBoundaryExponent_oneThird

/-- The harmonic tail's power exponent remains strictly below 3/4. -/
theorem balancedTriangularTail_power_lt_threeQuarters :
    truncatedFourierBoundaryExponent ((1 : ℝ) / 3) <
      (3 : ℝ) / 4 := by
  norm_num [truncatedFourierBoundaryExponent]

/-- Corrected seven-eighths tail frontier: it is enough to prove the pointwise
1/d leakage encoded by TriangularHarmonicTailDecayClaim, because summing those
tails costs only one harmonic logarithm and no additional power of X. -/
structure TriangularHarmonicTailAccepted where
  decay : TriangularHarmonicTailDecayClaim

end GRWTSK.RiemannHypothesis
