module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeWeylFunction
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic

/-!
# Real-line Herglotz representation boundary

Pinned Mathlib does not package the Nevanlinna/Herglotz representation on the
upper half-plane.  This module gives that missing theorem an exact target and
separates it from the conductor-three atom-identification theorem.

No measure is chosen from a list of zeros.  A future conductor-three measure
must first represent the prime-constructed Weyl function; only afterward may
meromorphic boundary continuation identify its atoms with the Xi divisor.
-/

public section

namespace Surface.Core.HerglotzRepresentation

noncomputable section

open MeasureTheory
open scoped ENNReal
open Surface.Core.ConductorThreeCompletedL
open Surface.Core.ConductorThreeWeylFunction
open Surface.Core.NevanlinnaKernel

/-- Standard normalized real-line Herglotz integrand. -/
@[expose]
def herglotzIntegrand (z : ℂ) (lambda : ℝ) : ℂ :=
  1 / ((lambda : ℂ) - z) -
    ((lambda / (1 + lambda ^ 2) : ℝ) : ℂ)

/-- Data of a normalized Herglotz representation. -/
structure Representation (M : ℂ → ℂ) where
  constant : ℝ
  slope : ℝ
  slope_nonneg : 0 ≤ slope
  measure : Measure ℝ
  weightedMoment :
    Integrable (fun lambda : ℝ ↦ (1 + lambda ^ 2)⁻¹) measure
  integrable_kernel :
    ∀ z ∈ upperHalfPlane, Integrable (herglotzIntegrand z) measure
  formula :
    ∀ z ∈ upperHalfPlane,
      M z = (constant : ℂ) + (slope : ℂ) * z +
        ∫ lambda, herglotzIntegrand z lambda ∂measure

/-- Generic theorem absent from pinned Mathlib. -/
@[expose]
def HerglotzRepresentationTheorem : Prop :=
  ∀ M : ℂ → ℂ, IsHerglotz M → Nonempty (Representation M)

/-- A measure is concentrated on a countable set of nonzero atoms. -/
@[expose]
def IsPurelyAtomic (measure : Measure ℝ) : Prop :=
  ∃ support : Set ℝ,
    support.Countable ∧
    measure supportᶜ = 0 ∧
    ∀ lambda ∈ support, measure {lambda} ≠ 0

/-- Multiplicity statement for the conductor-three representing measure.
The sign `-lambda` is forced by the convention
`M_3(z) = logDeriv Xi_3(-z)`. -/
@[expose]
def ConductorThreeAtomsMatchXiDivisor
    (representation : Representation conductorThreeWeylFunction) : Prop :=
  IsPurelyAtomic representation.measure ∧
    ∀ lambda : ℝ,
      representation.measure {lambda} =
        (Int.toNat
          (conductorThreeXiDivisor (-(lambda : ℂ))) : ℝ≥0∞)

/-- The custom boundary-support/residue theorem still needed after obtaining
a representation.  Meromorphic continuation and real boundary values must
rule out continuous mass; divisor orders must then identify each atom. -/
@[expose]
def ConductorThreeHerglotzAtomTheorem : Prop :=
  ∀ representation : Representation conductorThreeWeylFunction,
    ConductorThreeAtomsMatchXiDivisor representation

end

end Surface.Core.HerglotzRepresentation
