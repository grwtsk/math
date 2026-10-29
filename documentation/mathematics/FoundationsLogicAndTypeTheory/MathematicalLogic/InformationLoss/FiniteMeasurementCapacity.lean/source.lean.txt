/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Standalone leaf, not imported by GRWTSK.lean.
-/
import GRWTSK.Logic.InformationLoss.KernelRestrictedDetection
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Sets

/-!
# Finite measurement-capacity lower bound

If a new observation A makes a paired linear observation injective, its
output set W must be at least as large as the old invisible subspace ker P.
This is a finite-cardinality bound, NOT a finrank or optimal-sensor theorem.
It follows by restricting A to ker P and counting an actual injection.

This prerequisite is independent of any analytic or physical realization.
-/
set_option autoImplicit false
noncomputable section

universe u v w
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {W : Type w} [AddCommGroup W] [Module K W]

/-- The added measurement, restricted to vectors invisible to the original
one, is injective if the paired observation is injective. -/
theorem restricted_extra_injective_of_paired
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (hpair : Function.Injective (pairedLinearObservation P A)) :
    Function.Injective (fun x : P.ker => A x.1) := by
  intro x y hxy
  apply Subtype.ext
  apply hpair
  apply Prod.ext
  · have hx : P x.1 = 0 := x.2
    have hy : P y.1 = 0 := y.2
    simp [pairedLinearObservation, hx, hy]
  · exact hxy

open scoped Classical in
/-- An injective paired observation requires at least as many possible
extra-measurement outcomes as old invisible source states. No dimension
formula or finite-field cardinal formula is assumed. -/
theorem old_kernel_card_le_extra_card
    [Fintype V] [Fintype W]
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (hpair : Function.Injective (pairedLinearObservation P A)) :
    Fintype.card (P.ker) ≤ Fintype.card W := by
  classical
  exact Fintype.card_le_of_injective
    (fun x : P.ker => A x.1)
    (restricted_extra_injective_of_paired P A hpair)

end GRWTSK.Logic.InformationLoss
