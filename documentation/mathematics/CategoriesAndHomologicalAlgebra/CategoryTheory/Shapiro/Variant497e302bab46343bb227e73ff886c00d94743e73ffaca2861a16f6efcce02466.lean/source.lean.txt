-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LinearYonedaObjResProjectiveResolutionIso.Variante77b92b68be1fe2baf6e64d045063910f66195924781e236045ef7b3f28266f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e77b92b68be1fe2baf6e64d045063910f66195924781e236045ef7b3f28266f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LinearYonedaObjResProjectiveResolutionIso.Variante77b92b68be1fe2baf6e64d045063910f66195924781e236045ef7b3f28266f1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e77b92b68be1fe2baf6e64d045063910f66195924781e236045ef7b3f28266f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RepresentationTheory/Homological/GroupCohomology/Shapiro.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/
module

public import Mathlib.CategoryTheory.Preadditive.Projective.Resolution
public import Mathlib.RepresentationTheory.Homological.GroupCohomology.Basic
public import Mathlib.RepresentationTheory.Coinduced

/-!
# Shapiro's lemma for group cohomology

Given a commutative ring `k` and a subgroup `S ≤ G`, the file
`Mathlib/RepresentationTheory/Coinduced.lean` proves that the functor
`Coind_S^G : Rep k S ⥤ Rep k G` preserves epimorphisms. Since `Res(S) : Rep k G ⥤ Rep k S` is left
adjoint to `Coind_S^G`, this means `Res(S)` preserves projective objects. Since `Res(S)` is also
exact, given a projective resolution `P` of `k` as a trivial `k`-linear `G`-representation,
`Res(S)(P)` is a projective resolution of `k` as a trivial `k`-linear `S`-representation.

Since `Hom(Res(S)(P), A) ≅ Hom(P, Coind_S^G(A))` for any `S`-representation `A`, we conclude
Shapiro's lemma for group cohomology: `Hⁿ(G, Coind_S^G(A)) ≅ Hⁿ(S, A)` for all `n`.

## Main definitions

* `groupCohomology.coindIso A n`: Shapiro's lemma for group cohomology: an isomorphism
  `Hⁿ(G, Coind_S^G(A)) ≅ Hⁿ(S, A)`, given a subgroup `S ≤ G` and an `S`-representation `A`.

!-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LinearYonedaObjResProjectiveResolutionIso.Variante77b92b68be1fe2baf6e64d045063910f66195924781e236045ef7b3f28266f1

@[expose] public section

universe u

namespace groupCohomology

open CategoryTheory Rep

variable {k G : Type u} [CommRing k] [Group G] {S : Subgroup G} (A : Rep k S)

set_option backward.defeqAttrib.useBackward true in
-- Note: this proof breaks if `resCoindHomEquiv.{u}` is replaced with `resCoindHomEquiv`.
set_option backward.isDefEq.respectTransparency false in
/-- Given a projective resolution `P` of `k` as a `k`-linear `G`-representation, a subgroup
`S ≤ G`, and a `k`-linear `S`-representation `A`, this is an isomorphism of complexes
`Hom(Res(S)(P), A) ≅ Hom(P, Coind_S^G(A)).` -/
noncomputable def linearYonedaObjResProjectiveResolutionIso
    (P : ProjectiveResolution (trivial k G k)) (A : Rep.{u} k S) :
    ((resFunctor S.subtype).mapProjectiveResolution P).complex.linearYonedaObj k A ≅
      P.complex.linearYonedaObj k (coind S.subtype A) :=
  HomologicalComplex.Hom.isoOfComponents
    (fun _ ↦ (resCoindHomEquiv.{u} _ _ _).toModuleIso) fun _ _ _ ↦
      ModuleCat.hom_ext (LinearMap.ext fun f => Rep.hom_ext <| by
        ext; simp [← ModuleCat.ofHom_comp, resCoindHomEquiv, hom_comm_apply])

/-- Shapiro's lemma: given a subgroup `S ≤ G` and an `S`-representation `A`, we have
`Hⁿ(G, Coind_S^G(A)) ≅ Hⁿ(S, A).` -/
noncomputable def coindIso (A : Rep k S) (n : ℕ) :
    groupCohomology (coind S.subtype A) n ≅ groupCohomology A n :=
  (HomologicalComplex.homologyFunctor _ _ _).mapIso
    (inhomogeneousCochainsIso (coind S.subtype A) ≪≫
    (linearYonedaObjResProjectiveResolutionIso (barResolution k G) A).symm) ≪≫
  (groupCohomologyIso A n ((resFunctor _).mapProjectiveResolution <| barResolution k G)).symm

end groupCohomology
