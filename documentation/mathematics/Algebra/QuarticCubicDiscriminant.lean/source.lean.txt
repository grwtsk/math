import GRWTSK.Algebra.QuarticAdjacencyDiscriminant
import Mathlib.Algebra.CubicDiscriminant

/-!
# Cubic discriminant of the quartic adjacency resolvent

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The pinned Mathlib API is Cubic.discr in Mathlib/Algebra/CubicDiscriminant.
This file identifies the actual discriminant expression for the *monic*
adjacency cubic with the squared quartic Vandermonde product. The identity
holds over every commutative ring and does not assume distinct roots.
It does not identify a general nonmonic quartic discriminant.
-/

namespace GRWTSK.Algebra.QuarticCubicDiscriminant

open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.QuarticAdjacencyDiscriminant

variable {R : Type*} [CommRing R]

/-- The monic cubic obtained from the four elementary symmetric
coordinates, expressed using Mathlib's Cubic coefficient convention. -/
def adjacencyCubic (s₁ s₂ s₃ s₄ : R) : Cubic R :=
  ⟨1, -(2 * s₂), s₂ ^ 2 + s₁ * s₃ - 4 * s₄,
    -(s₂ * s₁ * s₃ - s₁ ^ 2 * s₄ - s₃ ^ 2)⟩

/-- Under a chosen four-root ordering, the cubic discriminant equals
the square of the original quartic Vandermonde. Ordering affects the
unsquared sign, but not the discriminant. -/
theorem adjacencyCubic_discr_eq_quarticVandermonde_sq
    (a b c d : R) :
    (adjacencyCubic (eOne a b c d) (eTwo a b c d)
      (eThree a b c d) (eFour a b c d)).discr =
      quarticVandermonde a b c d ^ 2 := by
  simp only [adjacencyCubic, Cubic.discr,
    eOne, eTwo, eThree, eFour, quarticVandermonde]
  ring

/-- The same cubic discriminant is the square of the three differences
between its adjacency roots, in any characteristic. -/
theorem adjacencyCubic_discr_eq_adjacencyVandermonde_sq
    (a b c d : R) :
    (adjacencyCubic (eOne a b c d) (eTwo a b c d)
      (eThree a b c d) (eFour a b c d)).discr =
      adjacencyVandermonde a b c d ^ 2 := by
  rw [adjacency_discriminant_product_eq_quartic]
  exact adjacencyCubic_discr_eq_quarticVandermonde_sq a b c d

end GRWTSK.Algebra.QuarticCubicDiscriminant
