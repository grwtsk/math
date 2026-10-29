import GRWTSK.Algebra.QuarticRootPermutation

/-!
# Automorphisms preserve the root locus of a base-field polynomial

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

This is a source-level replacement for the root-preservation *premise*
in the finite permutation representation. Root preservation is a
set-level statement, valid in every characteristic and without
separability. Constructing a root *multiset* enumeration from this
set statement requires injectivity of the four roots; the separate
theorem is not silently assumed here.
-/

namespace GRWTSK.Algebra.QuarticRootLocus

open Polynomial
open GRWTSK.Algebra.QuarticAutomorphismAction

noncomputable section

variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- The actual zero locus of the polynomial after scalar extension. -/
def rootLocus (p : K[X]) : Set L :=
  {x | (p.map (algebraMap K L)).eval x = 0}

/-- An automorphism of L fixing K acts on the root locus in both
directions, including characteristic two and inseparable cases. -/
theorem rootLocus_iff (p : K[X]) (φ : L ≃ₐ[K] L) (x : L) :
    φ x ∈ rootLocus p ↔ x ∈ rootLocus p := by
  change (p.map (algebraMap K L)).eval (φ x) = 0 ↔
    (p.map (algebraMap K L)).eval x = 0
  rw [← eval_mapped_algEquiv p φ x]
  exact map_eq_zero φ

/-- The automorphism transports the exact root locus onto itself. -/
theorem rootLocus_image (p : K[X]) (φ : L ≃ₐ[K] L) :
    φ '' rootLocus p = rootLocus p := by
  ext x
  constructor
  · rintro ⟨y, hy, rfl⟩
    exact (rootLocus_iff p φ y).2 hy
  · intro hx
    refine ⟨φ.symm x, ?_, by simp⟩
    exact (rootLocus_iff p φ (φ.symm x)).1 (by simpa using hx)

end
end GRWTSK.Algebra.QuarticRootLocus
