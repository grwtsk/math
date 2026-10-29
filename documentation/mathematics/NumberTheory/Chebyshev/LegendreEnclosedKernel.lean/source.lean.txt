/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.ComplexSourceBudget
import GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalKernel
import GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget

set_option autoImplicit false

/-!
# Finite enclosed interval kernels to actual prime witnesses

This module joins #256's coupled half-integer kernel to #266's actual arithmetic
consumer. It does not construct a Riemann explicit formula. Every application
must prove `hsource` for the literal square increment, and independently bound
the complete remainder. The finite parameters are not asserted to be zeros.

The index set, multiplicities and parameter identities are identical on both
sides of the enclosure estimate. Coordinate radii do not price wrong sources,
wrong multiplicities, duplicated records or missing zeros. In a zeta application,
the source theorem must account for all nonincluded divisor terms, pole, gamma,
trivial-zero, endpoint and normalization terms without double counting.

Finite evaluation error and correction evaluation error remain separate. A
one-sided remainder lower bound is enough for prime existence; a two-sided
remainder norm is needed for the separate symmetric error conclusion. No bound
is obtained from defining the remainder by subtraction. Source draft, including
all inherited imports: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.LegendreEnclosedKernel

open scoped BigOperators
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.ErrorBounds.ComplexSourceBudget
open GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals
open GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalKernel
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource
open GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.LandauStatements

noncomputable section

variable {ι : Type*}

/-- A finite parameter sum, with natural multiplicities; no zero predicate is inferred. -/
def squareFiniteSum (n : ℕ) (S : Finset ι) (m : ι → ℕ) (z : ι → ℂ) : ℂ :=
  ∑ j ∈ S, (m j : ℂ) * squareKernel n (z j)

/-- The included-record budget from the existing parameter sensitivity theorem. -/
def squareEnclosureBudget (n : ℕ) (S : Finset ι) (m : ι → ℕ) (r β : ι → ℝ) : ℝ :=
  ∑ j ∈ S, (m j : ℝ) *
    (sensitivity (squareEndpoint n) (squareEndpoint (n + 1)) (β j) * r j)

/-- Finite coordinates are perturbed, not projected to the critical line. -/
theorem squareFiniteSum_enclosure_error (n : ℕ) (hn : 1 ≤ n)
    (S : Finset ι) (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j) :
    ‖squareFiniteSum n S m ρ - squareFiniteSum n S m c‖ ≤
      squareEnclosureBudget n S m r β :=
  square_finite_enclosure_error n hn S m ρ c r β hρ hc hr

/-- Evaluation of the center sum is an additional, separately bounded error. -/
theorem squareFiniteSum_evaluation_error (n : ℕ) (hn : 1 ≤ n)
    (S : Finset ι) (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j)
    (evaluated : ℂ) (evaluationError : ℝ)
    (hevaluation : ‖squareFiniteSum n S m c - evaluated‖ ≤ evaluationError) :
    ‖squareFiniteSum n S m ρ - evaluated‖ ≤
      squareEnclosureBudget n S m r β + evaluationError := by
  calc
    _ = ‖(squareFiniteSum n S m ρ - squareFiniteSum n S m c) +
        (squareFiniteSum n S m c - evaluated)‖ := by congr 1; ring
    _ ≤ ‖squareFiniteSum n S m ρ - squareFiniteSum n S m c‖ +
        ‖squareFiniteSum n S m c - evaluated‖ := norm_add_le _ _
    _ ≤ _ := add_le_add (squareFiniteSum_enclosure_error n hn S m ρ c r β hρ hc hr)
      hevaluation

/-- A genuine one-sided source lower bound above the proved correction yields a prime count. -/
theorem squareCount_pos_of_source_lower (n : ℕ) (hn : 1 ≤ n) (L : ℝ)
    (hlower : L ≤ squareIncrement n) (hmargin : 0 < L - squareCorrectionBudget n) :
    0 < squareCount n := by
  apply (squarePrimeIncrement_pos_iff_count n).mp
  have hsource := squareIncrement_decomposition n hn
  have hpower := higherPrimePowerMass_le_log_budget n hn
  change higherPrimePowerMass n ≤ squareCorrectionBudget n at hpower
  linarith

/-- The full source identity and a signed remainder lower bound remain explicit hypotheses. -/
theorem squareIncrement_lower_of_enclosures (n : ℕ) (hn : 1 ≤ n)
    (S : Finset ι) (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j)
    (evaluated correction correctionApprox remainder : ℂ)
    (evaluationError correctionError remainderLower : ℝ)
    (hsource : (squareIncrement n : ℂ) =
      ((2 * (n : ℝ) + 1 : ℝ) : ℂ) - squareFiniteSum n S m ρ + correction + remainder)
    (hevaluation : ‖squareFiniteSum n S m c - evaluated‖ ≤ evaluationError)
    (hcorrection : ‖correction - correctionApprox‖ ≤ correctionError)
    (hremainder : remainderLower ≤ remainder.re) :
    2 * (n : ℝ) + 1 - evaluated.re + correctionApprox.re + remainderLower -
      (squareEnclosureBudget n S m r β + evaluationError) - correctionError ≤ squareIncrement n :=
  source_lower_bound (squareIncrement n) (2 * (n : ℝ) + 1)
    (squareFiniteSum n S m ρ) evaluated correction correctionApprox remainder
    (squareEnclosureBudget n S m r β + evaluationError) correctionError remainderLower
    hsource (squareFiniteSum_evaluation_error n hn S m ρ c r β hρ hc hr
      evaluated evaluationError hevaluation) hcorrection hremainder

/-- A strict lower margin gives an actual prime, not just positivity of a surrogate. -/
theorem prime_in_square_of_enclosed_kernel (n : ℕ) (hn : 1 ≤ n)
    (S : Finset ι) (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j)
    (evaluated correction correctionApprox remainder : ℂ)
    (evaluationError correctionError remainderLower : ℝ)
    (hsource : (squareIncrement n : ℂ) =
      ((2 * (n : ℝ) + 1 : ℝ) : ℂ) - squareFiniteSum n S m ρ + correction + remainder)
    (hevaluation : ‖squareFiniteSum n S m c - evaluated‖ ≤ evaluationError)
    (hcorrection : ‖correction - correctionApprox‖ ≤ correctionError)
    (hremainder : remainderLower ≤ remainder.re)
    (hmargin : 0 < 2 * (n : ℝ) + 1 - evaluated.re + correctionApprox.re + remainderLower -
      (squareEnclosureBudget n S m r β + evaluationError) - correctionError -
        squareCorrectionBudget n) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  apply (squareCount_pos_iff n).mp
  exact squareCount_pos_of_source_lower n hn _
    (squareIncrement_lower_of_enclosures n hn S m ρ c r β hρ hc hr
      evaluated correction correctionApprox remainder evaluationError correctionError
      remainderLower hsource hevaluation hcorrection hremainder) hmargin

/-- The symmetric error requires the separate two-sided bound on the complete remainder. -/
theorem squareIncrement_error_of_enclosures (n : ℕ) (hn : 1 ≤ n)
    (S : Finset ι) (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j)
    (evaluated correction correctionApprox remainder : ℂ)
    (evaluationError correctionError remainderError : ℝ)
    (hsource : (squareIncrement n : ℂ) =
      ((2 * (n : ℝ) + 1 : ℝ) : ℂ) - squareFiniteSum n S m ρ + correction + remainder)
    (hevaluation : ‖squareFiniteSum n S m c - evaluated‖ ≤ evaluationError)
    (hcorrection : ‖correction - correctionApprox‖ ≤ correctionError)
    (hremainder : ‖remainder‖ ≤ remainderError) :
    |squareIncrement n - (2 * (n : ℝ) + 1 - evaluated.re + correctionApprox.re)| ≤
      squareEnclosureBudget n S m r β + evaluationError + correctionError + remainderError :=
  source_real_error (squareIncrement n) (2 * (n : ℝ) + 1)
    (squareFiniteSum n S m ρ) evaluated correction correctionApprox remainder
    (squareEnclosureBudget n S m r β + evaluationError) correctionError remainderError
    hsource (squareFiniteSum_evaluation_error n hn S m ρ c r β hρ hc hr
      evaluated evaluationError hevaluation) hcorrection hremainder

/-- A complete prefix still needs an independently proved every-input lower bound and margin. -/
theorem legendre_of_prefix_and_source_lower (N : ℕ) (prefix : LegendreThrough N)
    (L : ℕ → ℝ) (hlower : ∀ n, N < n → L n ≤ squareIncrement n)
    (hmargin : ∀ n, N < n → 0 < L n - squareCorrectionBudget n) : Legendre := by
  apply legendre_of_prefix_and_tail N prefix
  intro n hn
  exact squareCount_pos_of_source_lower n (by omega) (L n) (hlower n hn) (hmargin n hn)

end
end GRWTSK.NumberTheory.Chebyshev.LegendreEnclosedKernel
