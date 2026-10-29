-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyCoverDense.Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LocallyCoverDense.Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/InducedTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Sites.DenseSubsite


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyCoverDense.Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209

#align_import category_theory.sites.induced_topology from "leanprover-community/mathlib"@"ba43124c37cfe0009bbfc57505f9503ae0e8c1af"

/-!
# Induced Topology

We say that a functor `G : C ⥤ (D, K)` is locally dense if for each covering sieve `T` in `D` of
some `X : C`, `T ∩ mor(C)` generates a covering sieve of `X` in `D`. A locally dense fully faithful
functor then induces a topology on `C` via `{ T ∩ mor(C) | T ∈ K }`. Note that this is equal to
the collection of sieves on `C` whose image generates a covering sieve. This construction would
make `C` both cover-lifting and cover-preserving.

Some typical examples are full and cover-dense functors (for example the functor from a basis of a
topological space `X` into `Opens X`). The functor `Over X ⥤ C` is also locally dense, and the
induced topology can then be used to construct the big sites associated to a scheme.

Given a fully faithful cover-dense functor `G : C ⥤ (D, K)` between small sites, we then have
`Sheaf (H.inducedTopology) A ≌ Sheaf K A`. This is known as the comparison lemma.

## References

* [Elephant]: *Sketches of an Elephant*, P. T. Johnstone: C2.2.
* https://ncatlab.org/nlab/show/dense+sub-site
* https://ncatlab.org/nlab/show/comparison+lemma

-/


namespace CategoryTheory

universe v u

open Limits Opposite Presieve

section

variable {C : Type*} [Category C] {D : Type*} [Category D] {G : C ⥤ D}

variable {J : GrothendieckTopology C} {K : GrothendieckTopology D}

variable (A : Type v) [Category.{u} A]

-- variables (A) [full G] [faithful G]
/-- We say that a functor `C ⥤ D` into a site is "locally dense" if
for each covering sieve `T` in `D`, `T ∩ mor(C)` generates a covering sieve in `D`.
-/
def LocallyCoverDense (K : GrothendieckTopology D) (G : C ⥤ D) : Prop :=
  ∀ ⦃X⦄ (T : K (G.obj X)), (T.val.functorPullback G).functorPushforward G ∈ K (G.obj X)
#align category_theory.locally_cover_dense CategoryTheory.LocallyCoverDense

namespace LocallyCoverDense

variable [Full G] [Faithful G] (Hld : LocallyCoverDense K G)

theorem pushforward_cover_iff_cover_pullback {X : C} (S : Sieve X) :
    K _ (S.functorPushforward G) ↔ ∃ T : K (G.obj X), T.val.functorPullback G = S := by
  constructor
  · intro hS
    exact ⟨⟨_, hS⟩, (Sieve.fullyFaithfulFunctorGaloisCoinsertion G X).u_l_eq S⟩
  · rintro ⟨T, rfl⟩
    exact Hld T
#align category_theory.locally_cover_dense.pushforward_cover_iff_cover_pullback CategoryTheory.LocallyCoverDense.pushforward_cover_iff_cover_pullback

/-- If a functor `G : C ⥤ (D, K)` is fully faithful and locally dense,
then the set `{ T ∩ mor(C) | T ∈ K }` is a grothendieck topology of `C`.
-/
@[simps]
def inducedTopology : GrothendieckTopology C where
  sieves X S := K _ (S.functorPushforward G)
  top_mem' X := by
    change K _ _
    rw [Sieve.functorPushforward_top]
    exact K.top_mem _
  pullback_stable' X Y S f hS := by
    have : S.pullback f = ((S.functorPushforward G).pullback (G.map f)).functorPullback G := by
      conv_lhs => rw [← (Sieve.fullyFaithfulFunctorGaloisCoinsertion G X).u_l_eq S]
      ext
      change (S.functorPushforward G) _ ↔ (S.functorPushforward G) _
      rw [G.map_comp]
    rw [this]
    change K _ _
    apply Hld ⟨_, K.pullback_stable (G.map f) hS⟩
  transitive' X S hS S' H' := by
    apply K.transitive hS
    rintro Y _ ⟨Z, g, i, hg, rfl⟩
    rw [Sieve.pullback_comp]
    apply K.pullback_stable i
    refine' K.superset_covering _ (H' hg)
    rintro W _ ⟨Z', g', i', hg, rfl⟩
    refine' ⟨Z', g' ≫ g , i', hg, _⟩
    simp
#align category_theory.locally_cover_dense.induced_topology CategoryTheory.LocallyCoverDense.inducedTopology

/-- `G` is cover-lifting wrt the induced topology. -/
theorem inducedTopology_coverLifting : CoverLifting Hld.inducedTopology K G :=
  ⟨@fun _ S hS => Hld ⟨S, hS⟩⟩
#align category_theory.locally_cover_dense.induced_topology_cover_lifting CategoryTheory.LocallyCoverDense.inducedTopology_coverLifting

/-- `G` is cover-preserving wrt the induced topology. -/
theorem inducedTopology_coverPreserving : CoverPreserving Hld.inducedTopology K G :=
  ⟨@fun _ _ hS => hS⟩
#align category_theory.locally_cover_dense.induced_topology_cover_preserving CategoryTheory.LocallyCoverDense.inducedTopology_coverPreserving

end LocallyCoverDense

theorem CoverDense.locallyCoverDense [Full G] (H : CoverDense K G) : LocallyCoverDense K G := by
  intro X T
  refine' K.superset_covering _ (K.bind_covering T.property fun Y f _ => H.is_cover Y)
  rintro Y _ ⟨Z, _, f, hf, ⟨W, g, f', rfl : _ = _⟩, rfl⟩
  use W; use G.preimage (f' ≫ f); use g
  constructor
  simpa using T.val.downward_closed hf f'
  simp
#align category_theory.cover_dense.locally_cover_dense CategoryTheory.CoverDense.locallyCoverDense

/-- Given a fully faithful cover-dense functor `G : C ⥤ (D, K)`, we may induce a topology on `C`.
-/
abbrev CoverDense.inducedTopology [Full G] [Faithful G] (H : CoverDense K G) :
    GrothendieckTopology C :=
  H.locallyCoverDense.inducedTopology
#align category_theory.cover_dense.induced_topology CategoryTheory.CoverDense.inducedTopology

variable (J)

theorem over_forget_locallyCoverDense (X : C) : LocallyCoverDense J (Over.forget X) := by
  intro Y T
  convert T.property
  ext Z f
  constructor
  · rintro ⟨_, _, g', hg, rfl⟩
    exact T.val.downward_closed hg g'
  · intro hf
    exact ⟨Over.mk (f ≫ Y.hom), Over.homMk f, 𝟙 _, hf, (Category.id_comp _).symm⟩
#align category_theory.over_forget_locally_cover_dense CategoryTheory.over_forget_locallyCoverDense

end

section SmallSite

variable {C : Type v} [SmallCategory C] {D : Type v} [SmallCategory D] {G : C ⥤ D}

variable {J : GrothendieckTopology C} {K : GrothendieckTopology D}

variable (A : Type u) [Category.{v} A]

/-- Cover-dense functors induces an equivalence of categories of sheaves.

This is known as the comparison lemma. It requires that the sites are small and the value category
is complete.
-/
noncomputable def CoverDense.sheafEquiv [Full G] [Faithful G] (H : CoverDense K G) [HasLimits A] :
    Sheaf H.inducedTopology A ≌ Sheaf K A :=
  H.sheafEquivOfCoverPreservingCoverLifting H.locallyCoverDense.inducedTopology_coverPreserving
    H.locallyCoverDense.inducedTopology_coverLifting
set_option linter.uppercaseLean3 false in
#align category_theory.cover_dense.Sheaf_equiv CategoryTheory.CoverDense.sheafEquiv

end SmallSite

end CategoryTheory
