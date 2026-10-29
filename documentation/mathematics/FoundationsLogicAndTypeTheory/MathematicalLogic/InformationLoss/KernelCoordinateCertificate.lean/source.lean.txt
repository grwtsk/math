/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.Logic.InformationLoss.KernelComplementChart

/-!
# Explicit decomposition certificates for sharp observation

A linear kernel coordinate projection is sufficient if every vector in
the old kernel is fixed by that projection. A complementary residual
can then be formed directly, without assuming a global isomorphism
to a product or any analytic/topological regularity.
-/
set_option autoImplicit false
noncomputable section

universe u v
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]

/-- A kernel-coordinate projection certificate provides a decomposition
whose residual is annihilated by the projection. -/
theorem residual_zero_of_kernel_coordinate_certificate
    (P : V →ₗ[K] Y) (Q : V →ₗ[K] P.ker)
    (hfix : ∀ x : P.ker, Q x.1 = x)
    (v : V) :
    Q (kernelRetractionResidual P Q v) = 0 := by
  unfold kernelRetractionResidual
  rw [map_sub, hfix (Q v), sub_self]

/-- The same certificate provides an injective joint source observation. -/
theorem jointly_identifiable_of_kernel_coordinate_certificate
    (P : V →ₗ[K] Y) (Q : V →ₗ[K] P.ker)
    (hfix : ∀ x : P.ker, Q x.1 = x) :
    Function.Injective (pairedLinearObservation P Q) := by
  exact sharp_extra_of_kernel_retraction P Q hfix

end GRWTSK.Logic.InformationLoss
