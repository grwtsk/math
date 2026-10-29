-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopologicalClosure.Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopologicalClosure.Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"eedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/NonUnitalStarAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Algebra.Star.NonUnitalSubalgebra
import Mathlib.Topology.Algebra.NonUnitalAlgebra
import Mathlib.Topology.Algebra.Star

/-!
# Non-unital topological star (sub)algebras

A non-unital topological star algebra over a topological semiring `R` is a topological
(non-unital) semiring with a compatible continuous scalar multiplication by elements
of `R` and a continuous `star` operation. We reuse typeclasses `ContinuousSMul` and
`ContinuousStar` to express the latter two conditions.

## Results

Any non-unital star subalgebra of a non-unital topological star algebra is itself a
non-unital topological star algebra, and its closure is again a non-unital star subalgebra.

-/


namespace GRWTSK.Topology.GeneralTopology.TopologicalClosure.Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d

namespace NonUnitalStarSubalgebra

section Semiring

variable {R A : Type*} [CommSemiring R] [TopologicalSpace A] [Star A]
variable [NonUnitalSemiring A] [Module R A] [IsTopologicalSemiring A] [ContinuousStar A]
variable [ContinuousConstSMul R A]

instance instIsTopologicalSemiring (s : NonUnitalStarSubalgebra R A) : IsTopologicalSemiring s :=
  s.toNonUnitalSubalgebra.instIsTopologicalSemiring

/-- The (topological) closure of a non-unital star subalgebra of a non-unital topological star
algebra is itself a non-unital star subalgebra. -/
def topologicalClosure (s : NonUnitalStarSubalgebra R A) : NonUnitalStarSubalgebra R A :=
  { s.toNonUnitalSubalgebra.topologicalClosure with
    star_mem' := fun h ↦ map_mem_closure continuous_star h fun _ ↦ star_mem
    carrier := _root_.closure (s : Set A) }

theorem le_topologicalClosure (s : NonUnitalStarSubalgebra R A) : s ≤ s.topologicalClosure :=
  subset_closure

theorem isClosed_topologicalClosure (s : NonUnitalStarSubalgebra R A) :
    IsClosed (s.topologicalClosure : Set A) := isClosed_closure

theorem topologicalClosure_minimal (s : NonUnitalStarSubalgebra R A)
    {t : NonUnitalStarSubalgebra R A} (h : s ≤ t) (ht : IsClosed (t : Set A)) :
    s.topologicalClosure ≤ t :=
  closure_minimal h ht

/-- If a non-unital star subalgebra of a non-unital topological star algebra is commutative, then
so is its topological closure.

See note [reducible non-instances] -/
abbrev nonUnitalCommSemiringTopologicalClosure [T2Space A] (s : NonUnitalStarSubalgebra R A)
    (hs : ∀ x y : s, x * y = y * x) : NonUnitalCommSemiring s.topologicalClosure :=
  s.toNonUnitalSubalgebra.nonUnitalCommSemiringTopologicalClosure hs

end Semiring

section Ring

variable {R A : Type*} [CommRing R] [TopologicalSpace A]
variable [NonUnitalRing A] [Module R A] [Star A] [IsTopologicalRing A] [ContinuousStar A]
variable [ContinuousConstSMul R A]

instance instIsTopologicalRing (s : NonUnitalStarSubalgebra R A) : IsTopologicalRing s :=
  s.toNonUnitalSubring.instIsTopologicalRing

/-- If a non-unital star subalgebra of a non-unital topological star algebra is commutative, then
so is its topological closure.

See note [reducible non-instances]. -/
abbrev nonUnitalCommRingTopologicalClosure [T2Space A] (s : NonUnitalStarSubalgebra R A)
    (hs : ∀ x y : s, x * y = y * x) : NonUnitalCommRing s.topologicalClosure :=
  { s.topologicalClosure.toNonUnitalRing, s.toSubsemigroup.commSemigroupTopologicalClosure hs with }

end Ring

end NonUnitalStarSubalgebra

namespace NonUnitalStarAlgebra

open NonUnitalStarSubalgebra

variable (R : Type*) {A : Type*} [CommSemiring R] [StarRing R] [NonUnitalSemiring A] [StarRing A]
variable [Module R A] [IsScalarTower R A A] [SMulCommClass R A A] [StarModule R A]
variable [TopologicalSpace A] [IsTopologicalSemiring A] [ContinuousConstSMul R A] [ContinuousStar A]

/-- The topological closure of the non-unital star subalgebra generated by a single element. -/
def elemental (x : A) : NonUnitalStarSubalgebra R A :=
  adjoin R {x} |>.topologicalClosure

namespace elemental

@[aesop safe apply (rule_sets := [SetLike])]
theorem self_mem (x : A) : x ∈ elemental R x :=
  le_topologicalClosure _ <| self_mem_adjoin_singleton R x

@[aesop safe apply (rule_sets := [SetLike])]
theorem star_self_mem (x : A) : star x ∈ elemental R x :=
  le_topologicalClosure _ <| star_self_mem_adjoin_singleton R x

variable {R} in
theorem le_of_mem {x : A} {s : NonUnitalStarSubalgebra R A} (hs : IsClosed (s : Set A))
    (hx : x ∈ s) : elemental R x ≤ s :=
  topologicalClosure_minimal _ (adjoin_le <| by simpa using hx) hs

variable {R} in
theorem le_iff_mem {x : A} {s : NonUnitalStarSubalgebra R A} (hs : IsClosed (s : Set A)) :
    elemental R x ≤ s ↔ x ∈ s :=
  ⟨fun h ↦ h (self_mem R x), fun h ↦ le_of_mem hs h⟩

instance isClosed (x : A) : IsClosed (elemental R x : Set A) :=
  isClosed_topologicalClosure _

instance [T2Space A] {x : A} [IsStarNormal x] : NonUnitalCommSemiring (elemental R x) :=
  nonUnitalCommSemiringTopologicalClosure _ <| by
    letI : NonUnitalCommSemiring (adjoin R {x}) := by
      refine NonUnitalStarAlgebra.adjoinNonUnitalCommSemiringOfComm R ?_ ?_
      all_goals
        intro y hy z hz
        rw [Set.mem_singleton_iff] at hy hz
        rw [hy, hz]
      exact (star_comm_self' x).symm
    exact fun _ _ => mul_comm _ _

instance {R A : Type*} [CommRing R] [StarRing R] [NonUnitalRing A] [StarRing A]
    [Module R A] [IsScalarTower R A A] [SMulCommClass R A A] [StarModule R A]
    [TopologicalSpace A] [IsTopologicalRing A] [ContinuousConstSMul R A] [ContinuousStar A]
    [T2Space A] {x : A} [IsStarNormal x] : NonUnitalCommRing (elemental R x) where
  mul_comm := mul_comm

instance {A : Type*} [UniformSpace A] [CompleteSpace A] [NonUnitalSemiring A] [StarRing A]
    [IsTopologicalSemiring A] [ContinuousStar A] [Module R A] [IsScalarTower R A A]
    [SMulCommClass R A A] [StarModule R A] [ContinuousConstSMul R A] (x : A) :
    CompleteSpace (elemental R x) :=
  isClosed_closure.completeSpace_coe

/-- The coercion from an elemental algebra to the full algebra is a `IsClosedEmbedding`. -/
theorem isClosedEmbedding_coe (x : A) : Topology.IsClosedEmbedding ((↑) : elemental R x → A) where
  eq_induced := rfl
  injective := Subtype.coe_injective
  isClosed_range := by simpa using isClosed R x

end elemental

end NonUnitalStarAlgebra
