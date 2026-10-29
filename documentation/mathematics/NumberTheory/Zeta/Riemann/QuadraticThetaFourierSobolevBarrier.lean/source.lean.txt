/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierMaximalBarrier
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Sobolev threshold collision for the dyadic Fourier route

The previous maximal-barrier module shows that raw Parseval energy does not
supply the required octave supremum.  The next standard idea is frequency
weighting.

For a one-dimensional Fourier series, the elementary Sobolev/Cauchy--Schwarz
route to absolute coefficient summability requires a weight exponent s>1/2:

  sum |c_k|
    <= (sum (1+|k|)^(2s) |c_k|^2)^(1/2)
       (sum (1+|k|)^(-2s))^(1/2).

The exact Green source, however, is assembled from step atoms.  A single jump
has the model Fourier decay |c_k| ~ 1/|k|.  Under that model the weighted square
series behaves like

  sum |k|^(2s-2),

whose p-series convergence condition is

  2s-2 < -1  <->  s < 1/2.

Thus the naive Sobolev route has a threshold collision:

  L-infinity embedding wants s>1/2,
  jump-model weighted energy wants s<1/2.

This file types the exact weighted arithmetic supplier that would be needed and
records the algebraic threshold collision.  It does NOT prove an asymptotic
1/k law for every repository Fourier coefficient and therefore does not rule
out arithmetic cancellation, Besov/variation estimates, logarithmic endpoint
inequalities, or a non-Sobolev maximal theorem.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SOBOLEV_THRESHOLD_COLLISION_TYPED / WEIGHTED_ARITHMETIC_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Frequency weight for the prime-only arithmetic Fourier shell. -/
def primeOnlySobolevShellWeight (s : ℝ) (n : ℕ) : ℝ :=
  Real.rpow ((n + 1 : ℕ) : ℝ) (2 * s)

/-- Weighted finite Fourier energy.  The shift n+1 avoids a zero-frequency
weight singularity while preserving the high-frequency exponent. -/
def greenPrimeOnlySobolevHead
    (s : ℝ) (X N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N,
    primeOnlySobolevShellWeight s n *
      greenPrimeOnlyFourierShellEnergy X n

/-- Exact weighted arithmetic supplier at the same normalized dyadic energy
scale as the unweighted criterion. -/
def AllDyadicPrimeOnlySobolevBoundAt (s : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ N : ℕ,
        (primeOnlyMass0 (dyadicScale j))^2 +
            (primeOnlyMass1 (dyadicScale j))^2 +
            greenPrimeOnlySobolevHead
              s (dyadicScale j) N ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η)

/-- The classical one-dimensional Sobolev exponent condition needed for the
plain Cauchy--Schwarz coefficient-summability route to a supremum. -/
def SobolevSupremumThreshold (s : ℝ) : Prop :=
  (1 : ℝ) / 2 < s

/-- Exponent of the weighted square series for a model jump coefficient
|c_k| ~ 1/|k|. -/
def jumpModelWeightedSquareExponent (s : ℝ) : ℝ :=
  2 * s - 2

/-- The p-series convergence condition for the jump model is exactly s<1/2. -/
theorem jumpModelWeightedSquareSummableExponent_iff
    {s : ℝ} :
    jumpModelWeightedSquareExponent s < -1 ↔
      s < (1 : ℝ) / 2 := by
  unfold jumpModelWeightedSquareExponent
  constructor <;> intro h <;> linarith

/-- The standard Sobolev supremum threshold and the jump-model weighted-energy
threshold are disjoint. -/
theorem no_sobolevExponent_aboveHalf_and_jumpModelBelowHalf :
    ¬ ∃ s : ℝ,
      SobolevSupremumThreshold s ∧
      jumpModelWeightedSquareExponent s < -1 := by
  rintro ⟨s, hsSup, hsJump⟩
  have hsBelow :
      s < (1 : ℝ) / 2 :=
    jumpModelWeightedSquareSummableExponent_iff.mp hsJump
  unfold SobolevSupremumThreshold at hsSup
  linarith

/-- Explicit interface for a successful weighted Fourier route.  Because the
naive jump/Sobolev thresholds collide, this implication would have to use
additional arithmetic structure or a sharper endpoint/maximal principle. -/
def PrimeSobolevMaximalReadoutAt (s ρ : ℝ) : Prop :=
  AllDyadicPrimeOnlySobolevBoundAt s →
    DyadicThetaErrorOscillationAt ρ

/-- Any successful weighted maximal readout composes with the endpoint supplier
to recover the nonlinear recurrence. -/
theorem primeSobolevMaximalReadout_to_recurrence
    {s ρ : ℝ}
    (hweighted : AllDyadicPrimeOnlySobolevBoundAt s)
    (hmax : PrimeSobolevMaximalReadoutAt s ρ)
    (hendpoint : QuadraticPrimeEndpointCancellationAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  primeEndpointCancellation_oscillation_to_recurrence
    hendpoint (hmax hweighted)

/-- A plain Sobolev proof cannot simultaneously choose an exponent strictly
above 1/2 for supremum embedding and strictly below 1/2 for the jump model. -/
theorem naiveSobolevJumpRoute_has_no_exponent :
    ¬ ∃ s : ℝ,
      (1 : ℝ) / 2 < s ∧ s < (1 : ℝ) / 2 := by
  rintro ⟨s, h1, h2⟩
  linarith

end GRWTSK.RiemannHypothesis
