import GRWTSK.Algebra.QuarticMatchingAdjacency

/-!
# Actual resolvent weight range for a separable quartic

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The carrier of the three weights is the exact range of the complementary
adjacency map, not an arbitrarily chosen three-element coordinate type.
For four distinct roots this map is bijective onto its range. This is a
finite equivariant correspondence; it is not a Galois action, a base-field
descent or an irreducibility assertion.
-/

namespace GRWTSK.Algebra.QuarticMatchingWeightEquiv

open Polynomial
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.QuarticMatchingAdjacency
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section

variable {L : Type*} [Field L]

/-- The actual three-valued carrier determined by a labelled quadruple. -/
def AdjacencyRange (r : Fin 4 → L) : Type :=
  {x : L // x ∈ Set.range (complementaryAdjacency r)}

/-- A bijection between perfect matchings and their distinct adjacency
values; the codomain is the actual range rather than all of L. -/
def matchingEquivAdjacencyRange (r : Fin 4 → L)
    (hr : Function.Injective r) :
    PerfectMatching ≃ AdjacencyRange r :=
  Equiv.ofBijective
    (fun m : PerfectMatching =>
      (⟨complementaryAdjacency r m, ⟨m, rfl⟩⟩ : AdjacencyRange r))
    ⟨(fun a b h => complementaryAdjacency_injective r hr
        (congrArg Subtype.val h)),
      (by
        intro x
        obtain ⟨m, hm⟩ := x.property
        refine ⟨m, ?_⟩
        apply Subtype.ext
        exact hm)⟩

/-- The same correspondence for an actual separable quartic in an
extension; separability only supplies distinctness of the four roots. -/
def quarticMatchingEquivAdjacencyRange
    {K : Type*} [Field K] [Algebra K L]
    (p : K[X]) (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p) :
    PerfectMatching ≃ AdjacencyRange e.r :=
  matchingEquivAdjacencyRange e.r
    (enumeration_injective_of_separable p hsep e)

/-- The canonical relabeling permutation on the range, transported
through the proved finite matching-to-value equivalence. -/
def adjacencyRangePerm (r : Fin 4 → L) (hr : Function.Injective r)
    (σ : Equiv.Perm (Fin 4)) : Equiv.Perm (AdjacencyRange r) :=
  (matchingEquivAdjacencyRange r hr).symm.trans
    ((matchingPerm σ).trans (matchingEquivAdjacencyRange r hr))

/-- Exact compatibility of range action and combinatorial matching action. -/
theorem adjacencyRangePerm_apply (r : Fin 4 → L)
    (hr : Function.Injective r) (σ : Equiv.Perm (Fin 4))
    (m : PerfectMatching) :
    adjacencyRangePerm r hr σ
        (matchingEquivAdjacencyRange r hr m) =
      matchingEquivAdjacencyRange r hr (matchingPerm σ m) := by
  simp [adjacencyRangePerm]

end
end GRWTSK.Algebra.QuarticMatchingWeightEquiv
