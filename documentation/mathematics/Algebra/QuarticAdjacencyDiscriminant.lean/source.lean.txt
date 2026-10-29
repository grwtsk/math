import GRWTSK.Algebra.PolygonalQuarticSeparable

/-!
# Quartic and cubic adjacency Vandermonde comparison

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The product of the three pairwise differences of the adjacency values is
the six-factor Vandermonde expression for the four original roots, up to
a sign. Squaring eliminates sign, giving equality of the squared
discriminant products in every commutative ring, including characteristic 2.
This is an identity between explicit products; no assertion about
Mathlib's discriminant normalization is silently imported.
-/

namespace GRWTSK.Algebra.QuarticAdjacencyDiscriminant

open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.PolygonalQuarticSeparable

variable {R : Type*} [CommRing R]

/-- The six unordered differences of four labelled roots. -/
def quarticVandermonde (a b c d : R) : R :=
  (a - b) * (a - c) * (a - d) *
    (b - c) * (b - d) * (c - d)

/-- The three differences of the cubic adjacency roots. -/
def adjacencyVandermonde (a b c d : R) : R :=
  (adjacencyOne a b c d - adjacencyTwo a b c d) *
    (adjacencyOne a b c d - adjacencyThree a b c d) *
    (adjacencyTwo a b c d - adjacencyThree a b c d)

/-- The two Vandermonde expressions agree up to orientation sign. -/
theorem adjacencyVandermonde_eq_neg_quartic (a b c d : R) :
    adjacencyVandermonde a b c d =
      -quarticVandermonde a b c d := by
  rw [adjacencyVandermonde, quarticVandermonde,
    adjacencyOne_sub_adjacencyTwo,
    adjacencyOne_sub_adjacencyThree,
    adjacencyTwo_sub_adjacencyThree]
  ring

/-- Exact equality of the squared root-difference products,
valid over all commutative rings and in all characteristics. -/
theorem adjacency_discriminant_product_eq_quartic (a b c d : R) :
    adjacencyVandermonde a b c d ^ 2 =
      quarticVandermonde a b c d ^ 2 := by
  rw [adjacencyVandermonde_eq_neg_quartic]
  ring

end GRWTSK.Algebra.QuarticAdjacencyDiscriminant
