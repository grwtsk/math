module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
public import Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv
import Mathlib.Tactic

/-!
# Herglotz functions and Nevanlinna kernels

Mathlib currently supplies the upper half-plane and the disk
Herglotz--Riesz Poisson kernel, but not the real-line Herglotz representation
or its RKHS theorem as a packaged API.  This module therefore fixes the exact
predicates needed by the conductor-three program without asserting the
representation theorem.
-/

public section

namespace Surface.Core.NevanlinnaKernel

noncomputable section

open scoped BigOperators
open scoped ComplexConjugate

/-- The open upper half-plane as a set of complex numbers. -/
@[expose]
def upperHalfPlane : Set ℂ := {z | 0 < z.im}

/-- A holomorphic upper-half-plane function with nonnegative imaginary part. -/
@[expose]
def IsHerglotz (M : ℂ → ℂ) : Prop :=
  DifferentiableOn ℂ M upperHalfPlane ∧
    ∀ z ∈ upperHalfPlane, 0 ≤ (M z).im

/-- The scalar Nevanlinna kernel associated with `M`. -/
@[expose]
def nevanlinnaKernel (M : ℂ → ℂ) (z w : ℂ) : ℂ :=
  (M z - conj (M w)) / (z - conj w)

/-- Finite quadratic form of a scalar kernel. -/
@[expose]
def kernelQuadraticForm (K : ℂ → ℂ → ℂ) (n : ℕ)
    (point coefficient : Fin n → ℂ) : ℂ :=
  ∑ i, ∑ j,
    conj (coefficient i) * K (point i) (point j) * coefficient j

/-- Positive semidefiniteness on a specified domain.  Both real-valuedness
and nonnegativity of every finite quadratic form are explicit. -/
@[expose]
def PositiveSemidefiniteKernelOn
    (domain : Set ℂ) (K : ℂ → ℂ → ℂ) : Prop :=
  ∀ (n : ℕ) (point coefficient : Fin n → ℂ),
    (∀ i, point i ∈ domain) →
      (kernelQuadraticForm K n point coefficient).im = 0 ∧
      0 ≤ (kernelQuadraticForm K n point coefficient).re

/-- The exact positivity predicate for a Nevanlinna kernel. -/
@[expose]
def HasPositiveNevanlinnaKernel (M : ℂ → ℂ) : Prop :=
  PositiveSemidefiniteKernelOn upperHalfPlane (nevanlinnaKernel M)

/-- The diagonal of the Nevanlinna kernel is the ratio of imaginary parts.
The upper-half-plane hypothesis prevents division by zero. -/
@[surface_novel, surface_published]
theorem nevanlinnaKernel_self
    (M : ℂ → ℂ) {z : ℂ} (hz : z ∈ upperHalfPlane) :
    nevanlinnaKernel M z z = ((M z).im / z.im : ℝ) := by
  have hzim : z.im ≠ 0 := ne_of_gt hz
  have hden : z - conj z ≠ 0 := by
    intro h
    have him := congr_arg Complex.im h
    simp at him
    exact hzim (by linarith)
  rw [nevanlinnaKernel, div_eq_iff hden]
  apply Complex.ext
  · simp
  · simp
    field_simp

/-- Full kernel positivity implies pointwise Herglotz positivity.  Analyticity
is kept as a separate premise; the converse requires the missing Herglotz
representation/RKHS theorem. -/
@[surface_novel, surface_published]
theorem isHerglotz_of_positiveKernel
    {M : ℂ → ℂ} (hDiff : DifferentiableOn ℂ M upperHalfPlane)
    (hPositive : HasPositiveNevanlinnaKernel M) :
    IsHerglotz M := by
  refine ⟨hDiff, ?_⟩
  intro z hz
  let point : Fin 1 → ℂ := fun _ ↦ z
  let coefficient : Fin 1 → ℂ := fun _ ↦ 1
  have hq := (hPositive 1 point coefficient (fun _ ↦ hz)).2
  have hform :
      kernelQuadraticForm (nevanlinnaKernel M) 1 point coefficient =
        nevanlinnaKernel M z z := by
    simp [kernelQuadraticForm, point, coefficient]
  rw [hform, nevanlinnaKernel_self M hz] at hq
  have hzim : 0 < z.im := hz
  rcases div_nonneg_iff.mp hq with hsame | hnegative
  · exact hsame.1
  · exfalso
    exact (not_le_of_gt hzim) hnegative.2

/-- Missing generic analytic theorem: Herglotz positivity produces a positive
Nevanlinna kernel.  It is named rather than installed as an axiom. -/
@[expose]
def HerglotzImpliesPositiveNevanlinnaKernel : Prop :=
  ∀ M : ℂ → ℂ, IsHerglotz M → HasPositiveNevanlinnaKernel M

end

end Surface.Core.NevanlinnaKernel
