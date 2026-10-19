module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.InnerProductSpace.LinearPMap
public import Mathlib.Analysis.Normed.Operator.Compact.Basic

/-!
# Minimal closed self-adjoint operator interface

This module packages the unbounded Hilbert-space operator primitives already
present in the pinned mathlib.  Closedness and density are consequences of
self-adjointness, not duplicated structure fields.

`ResolventAt` carries an explicit bounded two-sided inverse for `A - z`.
The Cayley candidate uses a resolvent witness for `A + i`, equivalently
`z = -i`.  No existence, compact-spectrum, unitarity, Stone theorem, or
spectral-realization claim is asserted.
-/

public section

namespace Surface.Core

noncomputable section

open Complex Set
open scoped LinearPMap

/-- A self-adjoint partially defined operator on a complex Hilbert space. -/
structure ClosedSelfAdjointOperator (H : Type*)
    [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] where
  toLinearPMap : H →ₗ.[ℂ] H
  selfAdjoint : IsSelfAdjoint toLinearPMap

namespace ClosedSelfAdjointOperator

variable {H : Type*}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

/-- Self-adjointness supplies a dense operator domain in the pinned API. -/
@[surface_adapter, surface_published]
theorem dense_domain (A : ClosedSelfAdjointOperator H) :
    Dense (A.toLinearPMap.domain : Set H) :=
  A.selfAdjoint.dense_domain

/-- Self-adjointness supplies a closed graph in the pinned API. -/
@[surface_adapter, surface_published]
theorem isClosed (A : ClosedSelfAdjointOperator H) :
    A.toLinearPMap.IsClosed :=
  A.selfAdjoint.isClosed

/-- The ambient eigenspace at a real candidate eigenvalue. -/
@[expose]
def eigenspace (A : ClosedSelfAdjointOperator H) (gamma : ℝ) :
    Submodule ℂ H :=
  A.toLinearPMap.eqLocus
    (((gamma : ℂ) • (LinearMap.id : H →ₗ[ℂ] H)).toPMap ⊤)

/-- A bounded two-sided inverse for the partially defined shifted operator
`A - z`.  The range condition makes applying `A` to `inverse y` well
typed. -/
structure ResolventAt (A : ClosedSelfAdjointOperator H) (z : ℂ) where
  inverse : H →L[ℂ] H
  mapsToDomain : ∀ y : H, inverse y ∈ A.toLinearPMap.domain
  right_inverse : ∀ y : H,
    A.toLinearPMap ⟨inverse y, mapsToDomain y⟩ - z • inverse y = y
  left_inverse : ∀ x : A.toLinearPMap.domain,
    inverse (A.toLinearPMap x - z • (x : H)) = (x : H)

/-- Existence of at least one compact bounded resolvent inverse. -/
@[expose]
def HasCompactResolvent (A : ClosedSelfAdjointOperator H) : Prop :=
  ∃ (z : ℂ) (R : ResolventAt A z), IsCompactOperator R.inverse

/-- The bounded candidate `(A - i) (A + i)⁻¹`, written as
`1 - 2 i (A + i)⁻¹`.

This definition requires a caller-supplied resolvent witness at `-i`.  It
does not assert that the witness exists or that this candidate is unitary. -/
@[expose]
def cayleyCandidate (A : ClosedSelfAdjointOperator H)
    (R : ResolventAt A (-Complex.I)) : H →L[ℂ] H :=
  1 - (2 * Complex.I) • R.inverse

@[surface_novel, surface_published, simp]
theorem cayleyCandidate_apply (A : ClosedSelfAdjointOperator H)
    (R : ResolventAt A (-Complex.I)) (y : H) :
    cayleyCandidate A R y = y - (2 * Complex.I) • R.inverse y := by
  simp [cayleyCandidate]

end ClosedSelfAdjointOperator

end

end Surface.Core
