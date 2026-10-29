import GRWTSK.Algebra.QuarticAdjacencyDiscriminant

/-!
# Quartic adjacency discriminant nonvanishing and units

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The squared Vandermonde identity yields exact nonvanishing and unit
criteria without invoking a possibly different normalization of
Polynomial.discriminant. These results work over commutative rings,
including those of characteristic two and rings with zero divisors.
They do not claim separability of a polynomial over an arbitrary ring.
-/

namespace GRWTSK.Algebra.QuarticAdjacencyDiscriminantCriterion

open GRWTSK.Algebra.QuarticAdjacencyDiscriminant

variable {R : Type*} [CommRing R]

/-- The signed Vandermonde comparison implies identical zero loci. -/
theorem adjacencyVandermonde_ne_zero_iff (a b c d : R) :
    adjacencyVandermonde a b c d ≠ 0 ↔
      quarticVandermonde a b c d ≠ 0 := by
  rw [adjacencyVandermonde_eq_neg_quartic]
  simp

/-- The two Vandermonde expressions generate the same principal ideal,
even when the base ring has zero divisors. -/
theorem adjacencyVandermonde_span_eq (a b c d : R) :
    Ideal.span ({adjacencyVandermonde a b c d} : Set R) =
      Ideal.span ({quarticVandermonde a b c d} : Set R) := by
  rw [adjacencyVandermonde_eq_neg_quartic]
  simp

/-- Unit discriminant-product criteria coincide without any domain
assumption. -/
theorem adjacencyVandermonde_isUnit_iff (a b c d : R) :
    IsUnit (adjacencyVandermonde a b c d) ↔
      IsUnit (quarticVandermonde a b c d) := by
  rw [adjacencyVandermonde_eq_neg_quartic]
  simp

/-- Squared discriminant products have equivalent unit conditions. -/
theorem adjacency_discriminant_product_isUnit_iff (a b c d : R) :
    IsUnit (adjacencyVandermonde a b c d ^ 2) ↔
      IsUnit (quarticVandermonde a b c d ^ 2) := by
  rw [adjacency_discriminant_product_eq_quartic]

end GRWTSK.Algebra.QuarticAdjacencyDiscriminantCriterion
