-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Products.Varianta37c8bce56259d5eaae65418063957a942fec454b056d02b72763ffed1833fb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a37c8bce56259d5eaae65418063957a942fec454b056d02b72763ffed1833fb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.Products.Varianta37c8bce56259d5eaae65418063957a942fec454b056d02b72763ffed1833fb7","mathematical_subject":"Logic.SetTheory","original_sha256":"a37c8bce56259d5eaae65418063957a942fec454b056d02b72763ffed1833fb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/SmallComplete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Products
public import Mathlib.SetTheory.Cardinal.Basic

/-!
# Any small complete category is a preorder

We show that any small category which has all (small) limits is a preorder: In particular, we show
that if a small category `C` in universe `u` has products of size `u`, then for any `X Y : C`
there is at most one morphism `X ⟶ Y`.
Note that in Lean, a preorder category is strictly one where the morphisms are in `Prop`, so
we instead show that the homsets are subsingleton.

## References

* https://ncatlab.org/nlab/show/complete+small+category#in_classical_logic

## Tags

small complete, preorder, Freyd
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Products.Varianta37c8bce56259d5eaae65418063957a942fec454b056d02b72763ffed1833fb7

public section


namespace CategoryTheory

open Category Limits

open Cardinal

universe u

variable {C : Type u} [SmallCategory C] [HasProducts.{u} C]

/-- A small category with products is a thin category.

in Lean, a preorder category is one where the morphisms are in Prop, which is weaker than the usual
notion of a preorder/thin category which says that each homset is subsingleton; we show the latter
rather than providing a `Preorder C` instance.
-/
instance (priority := 100) : Quiver.IsThin C := fun X Y =>
  ⟨fun r s => by
    by_contra r_ne_s
    have z : (2 : Cardinal) ≤ #(X ⟶ Y) := by
      rw [Cardinal.two_le_iff]
      exact ⟨_, _, r_ne_s⟩
    let md := Σ Z W : C, Z ⟶ W
    let α := #md
    apply not_le_of_gt (Cardinal.cantor α)
    let yp : C := ∏ᶜ fun _ : md => Y
    apply _root_.trans _ _
    · exact #(X ⟶ yp)
    · apply le_trans (Cardinal.power_le_power_right z)
      rw [Cardinal.power_def]
      apply le_of_eq
      rw [Cardinal.eq]
      refine ⟨⟨Pi.lift, fun f k => f ≫ Pi.π _ k, ?_, ?_⟩⟩
      · intro f
        ext k
        simp [yp]
      · intro f
        ext ⟨j⟩
        simp [yp]
    · apply Cardinal.mk_le_of_injective _
      · intro f
        exact ⟨_, _, f⟩
      · rintro f g k
        cases k
        rfl⟩

end CategoryTheory
