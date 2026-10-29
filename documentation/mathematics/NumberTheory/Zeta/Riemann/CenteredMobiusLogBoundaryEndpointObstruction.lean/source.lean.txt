/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
This module records a finite obstruction: total mass does not determine harmonic mass.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryStrength
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Generic finite dyadic total and harmonic readouts. -/
def dyadicTotalReadout (X : ℕ) (a : ℕ → ℝ) : ℝ :=
  ∑ n ∈ centeredGreenWindow X, a n

def dyadicHarmonicReadout (X : ℕ) (a : ℕ → ℝ) : ℝ :=
  ∑ n ∈ centeredGreenWindow X, a n / (n : ℝ)

/-- A two-point perturbation with zero total mass but nonzero harmonic mass. -/
def dyadicZeroTotalPerturbation (X : ℕ) : ℕ → ℝ :=
  fun n =>
    if n = X + 1 then 1
    else if n = 2 * X then -1
    else 0

theorem dyadicZeroTotalPerturbation_total_zero
    {X : ℕ} (hX : 1 ≤ X) :
    dyadicTotalReadout X (dyadicZeroTotalPerturbation X) = 0 := by
  unfold dyadicTotalReadout dyadicZeroTotalPerturbation centeredGreenWindow
  have h1 : X + 1 ∈ Finset.Ioc X (2 * X) := by
    simp
    omega
  have h2 : 2 * X ∈ Finset.Ioc X (2 * X) := by
    simp
    omega
  rw [Finset.sum_ite_irrel _ _ h1]
  simp only [Finset.sum_ite_irrel _ _ h2]
  have hne : X + 1 ≠ 2 * X := by omega
  simp [hne]

theorem dyadicZeroTotalPerturbation_harmonic
    {X : ℕ} (hX : 1 ≤ X) :
    dyadicHarmonicReadout X (dyadicZeroTotalPerturbation X) =
      1 / (X + 1 : ℝ) - 1 / (2 * X : ℝ) := by
  unfold dyadicHarmonicReadout dyadicZeroTotalPerturbation centeredGreenWindow
  have h1 : X + 1 ∈ Finset.Ioc X (2 * X) := by simp; omega
  have h2 : 2 * X ∈ Finset.Ioc X (2 * X) := by simp; omega
  rw [Finset.sum_ite_irrel _ _ h1]
  simp only [Finset.sum_ite_irrel _ _ h2]
  have hne : X + 1 ≠ 2 * X := by omega
  simp [hne]

theorem dyadicZeroTotalPerturbation_harmonic_ne_zero
    {X : ℕ} (hX : 2 ≤ X) :
    dyadicHarmonicReadout X (dyadicZeroTotalPerturbation X) ≠ 0 := by
  rw [dyadicZeroTotalPerturbation_harmonic (by omega)]
  have hXp : (0 : ℝ) < X := by exact_mod_cast (by omega : 0 < X)
  have h1p : (0 : ℝ) < X + 1 := by positivity
  have h2p : (0 : ℝ) < 2 * X := by positivity
  intro h
  field_simp at h
  omega

/-- Endpoint total equality alone cannot force equality of harmonic readouts. -/
theorem dyadic_total_does_not_determine_harmonic :
    ∃ X : ℕ, ∃ a b : ℕ → ℝ,
      dyadicTotalReadout X a = dyadicTotalReadout X b ∧
      dyadicHarmonicReadout X a ≠ dyadicHarmonicReadout X b := by
  refine ⟨2, 0, dyadicZeroTotalPerturbation 2, ?_, ?_⟩
  · simp [dyadicTotalReadout,
      dyadicZeroTotalPerturbation_total_zero (X := 2) (by norm_num)]
  · simp only [dyadicHarmonicReadout]
    have hne := dyadicZeroTotalPerturbation_harmonic_ne_zero
      (X := 2) (by norm_num)
    simpa using hne.symm

/-- A prefix-discrepancy supplier is the natural information partial summation
would require. This is only a definition; no bound is asserted. -/
def centeredGreenDyadicPrefixMangoldtError
    (X m : ℕ) : ℝ :=
  (∑ n ∈ Finset.Ioc X m,
      (ArithmeticFunction.vonMangoldt n : ℝ)) -
    ((m : ℝ) - X)

def AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ m ∈ Finset.Icc (dyadicScale j) (2 * dyadicScale j),
        centeredGreenDyadicPrefixMangoldtError (dyadicScale j) m ^ 2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (1 + η)

end GRWTSK.RiemannHypothesis
