import GRWTSK.Algebra.QuarticBaseResolventSeparable
import GRWTSK.Algebra.QuarticMatchingAdjacency

/-!
# Three matching values as actual roots of the base-field resolvent

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

This direct comparison identifies each complementary matching value with a
root of the cubic obtained from the original quartic coefficients. The
injective matching-to-value map for separable quartics comes from the checked
four-root separation theorem; this module does not assume or conclude
irreducibility or a particular Galois group.
-/

namespace GRWTSK.Algebra.QuarticBaseResolventMatching

open Polynomial
open GRWTSK.Algebra.QuarticBaseResolvent
open GRWTSK.Algebra.QuarticBaseResolventRoots
open GRWTSK.Algebra.PolygonalQuarticSplitting
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.QuarticMatchingAdjacency

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- Every perfect matching yields an actual root of the mapped base-field cubic. -/
theorem matching_value_is_resolvent_root
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 + C B * X ^ 2 +
      C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (e : QuarticRootEnumeration (L := L) p)
    (m : PerfectMatching) :
    ((baseAdjacencyResolvent A B C₀ D).map (algebraMap K L)).IsRoot
      (complementaryAdjacency e.r m) := by
  have hroots := actual_quartic_resolvent_three_roots p A B C₀ D hp hs hm e
  have hall : m = ⟨matching01_23, by decide⟩ ∨
      m = ⟨matching02_13, by decide⟩ ∨
      m = ⟨matching03_12, by decide⟩ := by
    rcases Finset.mem_insert.mp m.2 with h | h
    · exact Or.inl (Subtype.ext h)
    rcases Finset.mem_insert.mp h with h | h
    · exact Or.inr (Or.inl (Subtype.ext h))
    · exact Or.inr (Or.inr (Subtype.ext (Finset.mem_singleton.mp h)))
  rcases hall with h | h | h
  · subst m
    simpa [complementaryAdjacency, matchingWeight, matching01_23,
      pair, adjacencyOne, qOne] using hroots.1
  · subst m
    simpa [complementaryAdjacency, matchingWeight, matching02_13,
      pair, adjacencyTwo, qTwo] using hroots.2.1
  · subst m
    simpa [complementaryAdjacency, matchingWeight, matching03_12,
      pair, adjacencyThree, qThree] using hroots.2.2

/-- The matching-indexed root map is injective for an actual separable
quartic, in every characteristic. -/
theorem matching_value_injective_of_separable
    (p : K[X]) (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p) :
    Function.Injective (complementaryAdjacency e.r) :=
  actual_quartic_complementaryAdjacency_injective p hsep e

end
end GRWTSK.Algebra.QuarticBaseResolventMatching
