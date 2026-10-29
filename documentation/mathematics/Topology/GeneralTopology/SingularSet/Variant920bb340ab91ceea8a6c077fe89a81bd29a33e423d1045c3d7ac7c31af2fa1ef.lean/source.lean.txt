-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopCatToSSet.Variant1c563c89478a027b50e1d0999b270ee03eb9ee3a75716fa26ed300520c8289aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c563c89478a027b50e1d0999b270ee03eb9ee3a75716fa26ed300520c8289aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopCatToSSet.Variant1c563c89478a027b50e1d0999b270ee03eb9ee3a75716fa26ed300520c8289aa","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1c563c89478a027b50e1d0999b270ee03eb9ee3a75716fa26ed300520c8289aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SingularSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Kim Morrison, Adam Topaz
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex
public import Mathlib.AlgebraicTopology.TopologicalSimplex
public import Mathlib.CategoryTheory.Limits.Presheaf
public import Mathlib.Topology.Category.TopCat.Limits.Basic
public import Mathlib.Topology.Category.TopCat.ULift

/-!
# The singular simplicial set of a topological space and geometric realization of a simplicial set

The *singular simplicial set* `TopCat.toSSet.obj X` of a topological space `X`
has `n`-simplices which identify to continuous maps `StdSimplex ℝ (Fin (n + 1)) → X`,
where `StdSimplex ℝ (Fin (n + 1))` is the standard topological `n`-simplex.

The *geometric realization* functor `SSet.toTop` is left adjoint to `TopCat.toSSet`.
It is the left Kan extension of `SimplexCategory.toTop` along the Yoneda embedding.

## Main definitions

* `TopCat.toSSet : TopCat ⥤ SSet` is the functor
  assigning the singular simplicial set to a topological space.
* `SSet.toTop : SSet ⥤ TopCat` is the functor
  assigning the geometric realization to a simplicial set.
* `sSetTopAdj : SSet.toTop ⊣ TopCat.toSSet` is the adjunction between these two functors.

## TODO (@joelriou)

- Show that the singular simplicial set is a Kan complex.
- Show the adjunction `sSetTopAdj` is a Quillen equivalence.

-/


namespace GRWTSK.Topology.GeneralTopology.TopCatToSSet.Variant1c563c89478a027b50e1d0999b270ee03eb9ee3a75716fa26ed300520c8289aa

@[expose] public section

universe u

open CategoryTheory Convexity

/-- The functor associating the *singular simplicial set* to a topological space.

Let `X : TopCat.{u}` be a topological space.
Then the singular simplicial set of `X`
has as `n`-simplices the continuous maps `ULift.{u} (stdSimplex ℝ (Fin (n + 1))) → X`.
Here, `stdSimplex ℝ (Fin (n + 1))` is the standard topological `n`-simplex,
defined as `{ f : Fin (n + 1) → ℝ // (∀ i, 0 ≤ f i) ∧ ∑ i, f i = 1 }` with its subspace topology. -/
noncomputable def TopCat.toSSet : TopCat.{u} ⥤ SSet.{u} :=
  Presheaf.restrictedULiftYoneda.{0} SimplexCategory.toTop.{u}

/-- If `X : TopCat.{u}` and `n : SimplexCategoryᵒᵖ`,
then `(toSSet.obj X).obj n` identifies to the type of continuous
maps from the standard simplex `stdSimplex ℝ (Fin (n.unop.len + 1))` to `X`. -/
noncomputable def TopCat.toSSetObjEquiv (X : TopCat.{u}) (n : SimplexCategoryᵒᵖ) :
    (toSSet.obj X).obj n ≃ C(StdSimplex ℝ (Fin (n.unop.len + 1)), X) :=
  Equiv.ulift.{0}.trans (ConcreteCategory.homEquiv.trans
    (Homeomorph.ulift.continuousMapCongr (.refl _)))

/-- The *geometric realization functor* is
the left Kan extension of `SimplexCategory.toTop` along the Yoneda embedding.

It is left adjoint to `TopCat.toSSet`, as witnessed by `sSetTopAdj`. -/
noncomputable def SSet.toTop : SSet.{u} ⥤ TopCat.{u} :=
  stdSimplex.{u}.leftKanExtension SimplexCategory.toTop

/-- The geometric realization of a simplicial set. -/
scoped[Simplicial] notation "|" X "|" => SSet.toTop.obj X

set_option backward.isDefEq.respectTransparency false in
/-- Geometric realization is left adjoint to the singular simplicial set construction. -/
noncomputable def sSetTopAdj : SSet.toTop.{u} ⊣ TopCat.toSSet.{u} :=
  Presheaf.uliftYonedaAdjunction
    (SSet.stdSimplex.{u}.leftKanExtension SimplexCategory.toTop)
    (SSet.stdSimplex.{u}.leftKanExtensionUnit SimplexCategory.toTop)

instance : SSet.toTop.{u}.IsLeftAdjoint := sSetTopAdj.isLeftAdjoint
instance : TopCat.toSSet.{u}.IsRightAdjoint := sSetTopAdj.isRightAdjoint

/-- The geometric realization of the representable simplicial sets agree
  with the usual topological simplices. -/
noncomputable def SSet.toTopSimplex :
    SSet.stdSimplex.{u} ⋙ SSet.toTop ≅ SimplexCategory.toTop :=
  Presheaf.isExtensionAlongULiftYoneda _

instance : SSet.toTop.{u}.IsLeftKanExtension SSet.toTopSimplex.inv :=
  inferInstanceAs (Functor.IsLeftKanExtension _
    (SSet.stdSimplex.{u}.leftKanExtensionUnit SimplexCategory.toTop.{u}))

lemma sSetTopAdj_unit_app_app_down (S : SSet) (m : SimplexCategoryᵒᵖ) (a : S.obj m) :
    ((sSetTopAdj.unit.app S).app m a).down =
      SSet.toTopSimplex.inv.app _ ≫ SSet.toTop.map (SSet.yonedaEquiv.symm a) := by
  cat_disch

/-- The singular simplicial set of a totally disconnected space is the constant simplicial set. -/
noncomputable def TopCat.toSSetIsoConst (X : TopCat.{u}) [TotallyDisconnectedSpace X] :
    TopCat.toSSet.obj X ≅ (Functor.const _).obj X :=
  (NatIso.ofComponents (fun n ↦ Equiv.toIso
    ((TotallyDisconnectedSpace.continuousMapEquivOfConnectedSpace _ X).symm.trans
      (X.toSSetObjEquiv n).symm))).symm

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- The canonical map `Δ[n] ⟶ Simp(Δₜ[n])` (where `Δₜ[n]` is the topological `n`-simplex). -/
@[simps! -isSimp] noncomputable def SSet.stdSimplexToTop :
    SSet.stdSimplex.{u} ⟶ SimplexCategory.toTop ⋙ TopCat.toSSet :=
  SSet.stdSimplex.whiskerLeft sSetTopAdj.unit ≫
    Functor.whiskerRight SSet.toTopSimplex.hom TopCat.toSSet
