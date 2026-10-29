-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Precoherent.Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Precoherent.Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/Coherent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/

import Mathlib.CategoryTheory.Sites.Canonical
import Mathlib.CategoryTheory.Sites.Coverage
import Mathlib.CategoryTheory.Sites.EffectiveEpimorphic
import Mathlib.Data.Fintype.Sigma
/-!

# The Coherent Grothendieck Topology

This file defines the coherent Grothendieck topology (and coverage) on a category `C`.
The category `C` must satisfy a `Precoherent C` condition, which is essentially the minimal
requirement for the coherent coverage to exist.
Given such a category, the coherent coverage is `coherentCoverage C` and the corresponding
Grothendieck topology is `coherentTopology C`.

In `isSheaf_coherent`, we characterize the sheaf condition for presheaves of types for the
coherent Grothendieck topology in terms of finite effective epimorphic families.

## References:
- [Elephant]: *Sketches of an Elephant*, P. T. Johnstone: C2.1, Example 2.1.12.
- [nLab, *Coherent Coverage*](https://ncatlab.org/nlab/show/coherent+coverage)

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Precoherent.Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47

set_option autoImplicit true

namespace CategoryTheory

open Limits

variable (C : Type*) [Category C]

/--
The condition `Precoherent C` is essentially the minimal condition required to define the
coherent coverage on `C`.
-/
class Precoherent : Prop where
  /--
  Given an effective epi family `π₁` over `B₁` and a morphism `f : B₂ ⟶ B₁`, there exists
  an effective epi family `π₂` over `B₂`, such that `π₂` factors through `π₁`.
  -/
  pullback {B₁ B₂ : C} (f : B₂ ⟶ B₁) :
    ∀ (α : Type) [Fintype α] (X₁ : α → C) (π₁ : (a : α) → (X₁ a ⟶ B₁)),
      EffectiveEpiFamily X₁ π₁ →
    ∃ (β : Type) (_ : Fintype β) (X₂ : β → C) (π₂ : (b : β) → (X₂ b ⟶ B₂)),
      EffectiveEpiFamily X₂ π₂ ∧
      ∃ (i : β → α) (ι : (b :  β) → (X₂ b ⟶ X₁ (i b))),
      ∀ (b : β), ι b ≫ π₁ _ = π₂ _ ≫ f

/--
The coherent coverage on a precoherent category `C`.
-/
def coherentCoverage [Precoherent C] : Coverage C where
  covering B := { S | ∃ (α : Type) (_ : Fintype α) (X : α → C) (π : (a : α) → (X a ⟶ B)),
    S = Presieve.ofArrows X π ∧ EffectiveEpiFamily X π }
  pullback := by
    rintro B₁ B₂ f S ⟨α, _, X₁, π₁, rfl, hS⟩
    obtain ⟨β,_,X₂,π₂,h,i,ι,hh⟩ := Precoherent.pullback f α X₁ π₁ hS
    refine ⟨Presieve.ofArrows X₂ π₂, ⟨β, inferInstance, X₂, π₂, rfl, h⟩, ?_⟩
    rintro _ _ ⟨b⟩
    refine ⟨(X₁ (i b)), ι _, π₁ _, ⟨_⟩, hh _⟩

/--
The coherent Grothendieck topology on a precoherent category `C`.
-/
def coherentTopology [Precoherent C] : GrothendieckTopology C :=
  Coverage.toGrothendieck _ <| coherentCoverage C

lemma isSheaf_coherent [Precoherent C] (P : Cᵒᵖ ⥤ Type w) :
    Presieve.IsSheaf (coherentTopology C) P ↔
    (∀ (B : C) (α : Type) [Fintype α] (X : α → C) (π : (a : α) → (X a ⟶ B)),
      EffectiveEpiFamily X π → (Presieve.ofArrows X π).IsSheafFor P) := by
  constructor
  · intro hP B α _ X π h
    simp only [coherentTopology, Presieve.isSheaf_coverage] at hP
    apply hP
    refine ⟨α, inferInstance, X, π, rfl, h⟩
  · intro h
    simp only [coherentTopology, Presieve.isSheaf_coverage]
    rintro B S ⟨α, _, X, π, rfl, hS⟩
    exact h _ _ _ _ hS


namespace coherentTopology

variable {C : Type*} [Category C] [Precoherent C]

variable {X : C}
/--
For a precoherent category, any sieve that contains an `EffectiveEpiFamily` is a sieve of the
coherent topology.
Note: This is one direction of `mem_sieves_iff_hasEffectiveEpiFamily`, but is needed for the proof.
-/
theorem mem_sieves_of_hasEffectiveEpiFamily (S : Sieve X) :
    (∃ (α : Type) (_ : Fintype α) (Y : α → C) (π : (a : α) → (Y a ⟶ X)),
        EffectiveEpiFamily Y π ∧ (∀ a : α, (S.arrows) (π a)) ) →
          (S ∈ GrothendieckTopology.sieves (coherentTopology C) X) := by
  rintro ⟨α, ⟨h, ⟨Y, ⟨π, hπ⟩⟩⟩⟩
  have h_le : Sieve.generate (Presieve.ofArrows _ π) ≤ S := by
    rw [Sieve.sets_iff_generate (Presieve.ofArrows _ π) S]
    apply Presieve.le_of_factorsThru_sieve (Presieve.ofArrows (fun i => Y i) π) S _
    intro W g f
    use W, 𝟙 W
    rcases f with ⟨i⟩
    exact ⟨π i, ⟨hπ.2 i,Category.id_comp (π i) ⟩⟩
  apply Coverage.saturate_of_superset (coherentCoverage C) h_le
  exact Coverage.saturate.of X _ ⟨α, inferInstance, Y, π, ⟨rfl, hπ.1⟩⟩

/-- Every Yoneda-presheaf is a sheaf for the coherent topology. -/
theorem isSheaf_yoneda_obj (W : C) : Presieve.IsSheaf (coherentTopology C) (yoneda.obj W) := by
  rw [isSheaf_coherent]
  intro X α _ Y π H
  have h_colim := isColimitOfEffectiveEpiFamilyStruct Y π H.effectiveEpiFamily.some
  rw [←Sieve.generateFamily_eq] at h_colim
  intro x hx
  let x_ext := Presieve.FamilyOfElements.sieveExtend x
  have hx_ext := Presieve.FamilyOfElements.Compatible.sieveExtend hx
  let S := Sieve.generate (Presieve.ofArrows Y π)
  obtain ⟨t, t_amalg, t_uniq⟩ : ∃! t, x_ext.IsAmalgamation t :=
    (Sieve.forallYonedaIsSheaf_iff_colimit S).mpr ⟨h_colim⟩ W x_ext hx_ext
  refine ⟨t, ?_, ?_⟩
  · convert Presieve.isAmalgamation_restrict (Sieve.le_generate (Presieve.ofArrows Y π)) _ _ t_amalg
    exact (Presieve.restrict_extend hx).symm
  · exact fun y hy ↦ t_uniq y <| Presieve.isAmalgamation_sieveExtend x y hy

/-- The coherent topology on a precoherent category is subcanonical. -/
theorem isSubcanonical : Sheaf.Subcanonical (coherentTopology C) :=
  Sheaf.Subcanonical.of_yoneda_isSheaf _ isSheaf_yoneda_obj

end coherentTopology

variable {C : Type*} [Category C] [Precoherent C]

variable {X : C}

/--
Effective epi families in a precoherent category are transitive, in the sense that an
`EffectiveEpiFamily` and an `EffectiveEpiFamily` over each member, the composition is an
`EffectiveEpiFamily`.
Note: The finiteness condition is an artifact of the proof and is probably unnecessary.
-/
theorem EffectiveEpiFamily.transitive_of_finite {α : Type} [Fintype α] {Y : α → C}
    (π : (a : α) → (Y a ⟶ X)) (h : EffectiveEpiFamily Y π) {β : α → Type} [∀ (a: α), Fintype (β a)]
    {Y_n : (a : α) → β a → C} (π_n : (a : α) → (b : β a) → (Y_n a b ⟶ Y a))
    (H : ∀ a, EffectiveEpiFamily (Y_n a) (π_n a)) :
    EffectiveEpiFamily
      (fun (c : Σ a, β a) => Y_n c.fst c.snd) (fun c => π_n c.fst c.snd ≫ π c.fst) := by
  rw [← Sieve.effectiveEpimorphic_family]
  suffices h₂ : (Sieve.generate (Presieve.ofArrows (fun (⟨a, b⟩ : Σ _, β _) => Y_n a b)
        (fun ⟨a,b⟩ => π_n a b ≫ π a))) ∈ GrothendieckTopology.sieves (coherentTopology C) X by
    change Nonempty _
    rw [← Sieve.forallYonedaIsSheaf_iff_colimit]
    exact fun W => coherentTopology.isSheaf_yoneda_obj W _ h₂
  let h' := h
  rw [← Sieve.effectiveEpimorphic_family] at h'
  let H' := H
  conv at H' =>
    intro a
    rw [← Sieve.effectiveEpimorphic_family]
  -- Show that a covering sieve is a colimit, which implies the original set of arrows is regular
  -- epimorphic. We use the transitivity property of saturation
  apply Coverage.saturate.transitive X (Sieve.generate (Presieve.ofArrows Y π))
  · apply Coverage.saturate.of
    use α, inferInstance, Y, π
  · intro V f ⟨Y₁, h, g, ⟨hY, hf⟩⟩
    rw [← hf, Sieve.pullback_comp]
    apply (coherentTopology C).pullback_stable'
    apply coherentTopology.mem_sieves_of_hasEffectiveEpiFamily
    -- Need to show that the pullback of the family `π_n` to a given `Y i` is effective epimorphic
    rcases hY with ⟨i⟩
    use β i, inferInstance, Y_n i, π_n i, H i
    intro b
    use Y_n i b, (𝟙 _), π_n i b ≫ π i, ⟨(⟨i, b⟩ : Σ (i : α), β i)⟩
    exact Category.id_comp (π_n i b ≫ π i)

/--
A sieve belongs to the coherent topology if and only if it contains a finite
`EffectiveEpiFamily`.
-/
theorem coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily (S : Sieve X) :
(S ∈ GrothendieckTopology.sieves (coherentTopology C) X) ↔
    (∃ (α : Type) (_ : Fintype α) (Y : α → C) (π : (a : α) → (Y a ⟶ X)),
        EffectiveEpiFamily Y π ∧ (∀ a : α, (S.arrows) (π a)) )  := by
  constructor
  · intro h
    induction' h with Y T hS Y Y R S _ _ a b
    · rcases hS with ⟨a, h, Y', π, h'⟩
      use a, h, Y', π, by tauto
      intro a'
      rcases h' with ⟨rfl, _⟩
      simp only [Sieve.generate_apply]
      use Y' a', 𝟙 Y' a', π a', Presieve.ofArrows.mk a'
      apply Category.id_comp
    · use Unit, Unit.fintype, fun _ => Y, fun _ => (𝟙 Y)
      cases' S with arrows downward_closed
      exact ⟨inferInstance, by simp only [Sieve.top_apply, forall_const]⟩
    · rcases a with ⟨α, w, Y₁, π, ⟨h₁,h₂⟩⟩
      choose β _ Y_n π_n H using fun a => b (h₂ a)
      use (Σ a, β a), inferInstance, fun ⟨a,b⟩ => Y_n a b, fun ⟨a, b⟩ => (π_n a b) ≫ (π a)
      constructor
      · exact EffectiveEpiFamily.transitive_of_finite _ h₁ _ (fun a => (H a).1)
      · exact fun c => (H c.fst).2 c.snd
  · exact coherentTopology.mem_sieves_of_hasEffectiveEpiFamily S

end CategoryTheory
