# Complete source: GRWTSK.Algebra.QuarticMatchingWeightEquiv

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef719dd112a17c5cb5bb9f8e1a4a54e928538279` · SHA-256 `6114cb261f2406cb8aee0683b1914b2075eeee19f0f82e69107df1c229ecf989`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91925f98bcf274396fa0d508bc1dfafd7820f33d04afa41a1af1e02a8027fd47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuarticMatchingWeightEquiv.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
