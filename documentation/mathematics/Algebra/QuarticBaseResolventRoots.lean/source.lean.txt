import GRWTSK.Algebra.QuarticBaseResolvent

/-!
# Actual cubic-resolvent roots from a quartic factorization

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

This module isolates the direct root supplier from the more speculative
automorphism-action modules. Separability is not needed for the fact that
each of the three adjacency values is a root; it is only required when
concluding that these values are pairwise distinct.
-/

namespace GRWTSK.Algebra.QuarticBaseResolventRoots

open Polynomial
open GRWTSK.Algebra.QuarticBaseResolvent
open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section

variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- All three adjacency values are actual roots of the base-field
resolvent after scalar extension. The source quartic need not be separable. -/
theorem actual_quartic_resolvent_three_roots
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 +
      C B * X ^ 2 + C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (e : QuarticRootEnumeration (L := L) p) :
    ((baseAdjacencyResolvent A B C₀ D).map (algebraMap K L)).IsRoot
        (adjacencyOne (e.r 0) (e.r 1) (e.r 2) (e.r 3)) ∧
    ((baseAdjacencyResolvent A B C₀ D).map (algebraMap K L)).IsRoot
        (adjacencyTwo (e.r 0) (e.r 1) (e.r 2) (e.r 3)) ∧
    ((baseAdjacencyResolvent A B C₀ D).map (algebraMap K L)).IsRoot
        (adjacencyThree (e.r 0) (e.r 1) (e.r 2) (e.r 3)) := by
  rw [← actual_quartic_base_resolvent p A B C₀ D hp hs hm e]
  simp only [adjacencyResolventFromRoots, IsRoot.def]
  simp [eval_mul, eval_sub, eval_X, eval_C]

/-- When the actual quartic is separable, these three roots of the
cubic are pairwise distinct in any characteristic. -/
theorem actual_quartic_resolvent_distinct_roots
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 +
      C B * X ^ 2 + C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p) :
    ((baseAdjacencyResolvent A B C₀ D).map (algebraMap K L)).Separable := by
  rw [← actual_quartic_base_resolvent p A B C₀ D hp hs hm e]
  exact GRWTSK.Algebra.PolygonalQuarticSeparable.adjacencyResolvent_separable_of_quartic_enumeration
    p hsep e

end
end GRWTSK.Algebra.QuarticBaseResolventRoots
