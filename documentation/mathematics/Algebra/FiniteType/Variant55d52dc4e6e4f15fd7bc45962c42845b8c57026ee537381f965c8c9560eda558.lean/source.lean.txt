-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FGAlgCatSkeleton.Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FGAlgCatSkeleton.Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/CommAlgCat/FiniteType.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christian Merten, Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten, Andrew Yang
-/
module

public import Mathlib.Algebra.Category.CommAlgCat.Basic
public import Mathlib.CategoryTheory.MorphismProperty.Comma
public import Mathlib.RingTheory.FinitePresentation
public import Mathlib.RingTheory.RingHomProperties

/-!
# The category of finitely generated `R`-algebras

We define the category of finitely generated `R`-algebras and show it is essentially small.
-/


namespace GRWTSK.Algebra.FGAlgCatSkeleton.Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564

@[expose] public section

universe w v u

open CategoryTheory

variable (R : Type u) [CommRing R]

/-- The category of finitely generated `R`-algebras. -/
abbrev FGAlgCat := ObjectProperty.FullSubcategory
  fun A : CommAlgCat.{v, u} R ↦ Algebra.FiniteType R A

instance (A : FGAlgCat R) : Algebra.FiniteType R A.1 := A.2

/-- (Implementation detail): A small skeleton of `FGAlgCat`. -/
structure FGAlgCatSkeleton : Type u where
  /-- The number of generators. -/
  n : ℕ
  /-- The defining ideal. -/
  I : Ideal (MvPolynomial (Fin n) R)

/-- (Implementation detail): Realisation of a `FGAlgCatSkeleton`. -/
noncomputable def FGAlgCatSkeleton.eval (A : FGAlgCatSkeleton R) : FGAlgCat.{u} R :=
  ⟨↧(MvPolynomial (Fin A.n) R ⧸ A.I), inferInstanceAs <| Algebra.FiniteType _ _⟩

lemma Algebra.FiniteType.exists_fgAlgCatSkeleton (A : Type v) [CommRing A] [Algebra R A]
    [h : Algebra.FiniteType R A] :
    ∃ (P : FGAlgCatSkeleton R), Nonempty (A ≃ₐ[R] P.eval.obj) := by
  obtain ⟨n, f, hf⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.mp h
  exact ⟨⟨n, RingHom.ker f⟩, ⟨(Ideal.quotientKerAlgEquivOfSurjective hf).symm⟩⟩

lemma RingHom.FiniteType.exists_smallRepr {S : Type v} [CommRing S] {f : R →+* S}
    (hf : f.FiniteType) :
    ∃ (T : FGAlgCatSkeleton R) (e : T.eval.obj ≃+* S), f = e.toRingHom.comp (algebraMap _ _) := by
  algebraize [f]
  obtain ⟨T, ⟨e⟩⟩ := Algebra.FiniteType.exists_fgAlgCatSkeleton R S
  exact ⟨T, e.symm.toRingEquiv, e.symm.toAlgHom.comp_algebraMap.symm⟩

/-- Universe lift functor for finitely generated algebras. -/
def FGAlgCat.uliftFunctor : FGAlgCat.{v} R ⥤ FGAlgCat.{max v w} R where
  obj A := ⟨.of R <| ULift A.1, .equiv inferInstance ULift.algEquiv.symm⟩
  map {A B} f := ConcreteCategory.ofHom <|
    ULift.algEquiv.symm.toAlgHom.comp <| f.hom.hom.comp ULift.algEquiv.toAlgHom

/-- The universe lift functor for finitely generated algebras is fully faithful. -/
def FGAlgCat.fullyFaithfulUliftFunctor : (FGAlgCat.uliftFunctor R).FullyFaithful where
  preimage {A B} f :=
    ConcreteCategory.ofHom <| ULift.algEquiv.toAlgHom.comp <|
      f.hom.hom.comp ULift.algEquiv.symm.toAlgHom

instance : (FGAlgCat.uliftFunctor R).Full :=
  (FGAlgCat.fullyFaithfulUliftFunctor R).full

instance : (FGAlgCat.uliftFunctor R).Faithful :=
  (FGAlgCat.fullyFaithfulUliftFunctor R).faithful

/-- The category of finitely generated algebras is essentially small. -/
instance : EssentiallySmall.{u} (FGAlgCat.{v} R) := by
  suffices h : EssentiallySmall.{u} (FGAlgCat.{max u v} R) by
    exact essentiallySmall_of_fully_faithful (FGAlgCat.uliftFunctor R)
  rw [essentiallySmall_iff]
  refine ⟨?_, ?_⟩
  · let f := toSkeleton ∘ (FGAlgCat.uliftFunctor R).obj ∘ FGAlgCatSkeleton.eval R
    refine small_of_surjective (f := f) fun A ↦ ?_
    simp only [Function.comp_apply, f, toSkeleton_eq_iff]
    obtain ⟨P, ⟨e⟩⟩ := Algebra.FiniteType.exists_fgAlgCatSkeleton R
      ((fromSkeleton (FGAlgCat R)).obj A).obj
    exact ⟨P, ⟨ObjectProperty.isoMk _ (CommAlgCat.isoMk <| ULift.algEquiv.trans e.symm)⟩⟩
  · refine ⟨fun A B ↦ ?_⟩
    obtain ⟨PA, ⟨eA⟩⟩ := Algebra.FiniteType.exists_fgAlgCatSkeleton R A.obj
    obtain ⟨PB, ⟨eB⟩⟩ := Algebra.FiniteType.exists_fgAlgCatSkeleton R B.obj
    let f (g : A ⟶ B) (x : PA.eval.obj) : PB.eval.obj := eB (g.hom (eA.symm x))
    refine small_of_injective (f := f) fun u v h ↦ ?_
    ext a
    obtain ⟨a, rfl⟩ := eA.symm.surjective a
    exact eB.injective (congr_fun h a)

section Under

open RingHom

/-- The category of finitely generated `R`-algebras is equivalent to the category of
finite type ring homomorphisms from `R`. -/
def FGAlgCat.equivUnder (R : CommRingCat.{u}) :
    FGAlgCat R ≌ MorphismProperty.Under (toMorphismProperty FiniteType) ⊤ R where
  functor.obj A := ⟨(commAlgCatEquivUnder R).functor.obj A.obj,
    (RingHom.finiteType_algebraMap (A := R) (B := A.obj)).mpr A.2⟩
  functor.map {A B} f := ⟨(commAlgCatEquivUnder R).functor.map f.hom, trivial, trivial⟩
  inverse.obj A := ⟨(commAlgCatEquivUnder R).inverse.obj A.1, A.2⟩
  inverse.map {A B} f := ObjectProperty.homMk ((commAlgCatEquivUnder R).inverse.map f.hom)
  unitIso := NatIso.ofComponents fun A ↦
    ObjectProperty.isoMk _ (CommAlgCat.isoMk { toRingEquiv := .refl A.1, commutes' _ := rfl })
  counitIso := .refl _

variable {Q : MorphismProperty CommRingCat.{u}}

lemma essentiallySmall_of_le (hQ : Q ≤ toMorphismProperty FiniteType) (R : CommRingCat.{u}) :
    EssentiallySmall.{u} (MorphismProperty.Under Q ⊤ R) :=
  essentiallySmall_of_fully_faithful
    (MorphismProperty.Comma.changeProp _ _ hQ
      le_rfl le_rfl ⋙ (FGAlgCat.equivUnder R).inverse)

end Under
