/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerPeriodCorrection
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- A displacement d crosses d positions of a sharp prefix boundary. Thus the
correct smoothing-error budget uses the first moment of the sampled kernel,
not its unweighted mass. -/
def nonAliasingFejerFirstMomentBudget
    (X N : ℕ) : ℝ :=
  Real.log ((4 * X : ℕ) : ℝ) *
    ∑ d ∈ Finset.Icc 1 (2 * X),
      (d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d

/-- The source-facing sharp-minus-smoothed comparison must use the
distance-weighted first moment. -/
def NonAliasingPrimePrefixFejerFirstMomentComparison : Prop :=
  ∀ X N m : ℕ,
    0 < X → 0 < N →
    2 * X ≤ m → m ≤ 4 * X →
      |nonAliasingPrimePrefixFejerOperator.error X N m| ≤
        nonAliasingFejerFirstMomentBudget X N

/-- Each distance-weighted period-4X sample is bounded by X/(N d). -/
theorem distance_mul_sampledTriangularKernelAtOctavePeriod_le
    {X N d : ℕ}
    (hX : 0 < X)
    (hN : 0 < N)
    (hd : 0 < d)
    (hdMax : d ≤ 2 * X) :
    (d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d
      ≤ (X : ℝ) / ((N : ℝ) * (d : ℝ)) := by
  have hsample :=
    sampledTriangularKernelAtOctavePeriod_le hX hN hd hdMax
  have hdr : (0 : ℝ) ≤ (d : ℝ) := by positivity
  have hmul :=
    mul_le_mul_of_nonneg_left hsample hdr
  calc
    (d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d
      ≤ (d : ℝ) *
          ((X : ℝ) / ((N : ℝ) * (d : ℝ)^2)) := hmul
    _ = (X : ℝ) / ((N : ℝ) * (d : ℝ)) := by
      have hNr : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
      have hdr' : (0 : ℝ) < (d : ℝ) := by exact_mod_cast hd
      field_simp [hNr.ne', hdr'.ne']
      ring

/-- Finite harmonic bookkeeping still to be discharged: summing the proved
pointwise first-moment estimate costs no power beyond X/N. -/
def NonAliasingFejerFirstMomentHarmonicBoundClaim : Prop :=
  ∀ X N : ℕ,
    0 < X → 0 < N →
      (∑ d ∈ Finset.Icc 1 (2 * X),
        (d : ℝ) *
          sampledTriangularKernelAtPeriod
            (fejerOctavePeriod X) N d)
      ≤ ((X : ℝ) / (N : ℝ)) *
          (1 + Real.log ((2 * X : ℕ) : ℝ))

/-- Corrected acceptance packet: first prove the sharp-step comparison using
the first moment, then discharge the finite harmonic summation. -/
structure NonAliasingFejerFirstMomentAccepted where
  comparison : NonAliasingPrimePrefixFejerFirstMomentComparison
  harmonicBound : NonAliasingFejerFirstMomentHarmonicBoundClaim

end GRWTSK.RiemannHypothesis
