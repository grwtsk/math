-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NoetherianObject.Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.NoetherianObject.Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Noetherian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Subobject.Lattice
import Mathlib.CategoryTheory.EssentiallySmall
import Mathlib.CategoryTheory.Simple

/-!
# Artinian and noetherian categories

An artinian category is a category in which objects do not
have infinite decreasing sequences of subobjects.

A noetherian category is a category in which objects do not
have infinite increasing sequences of subobjects.

We show that any nonzero artinian object has a simple subobject.

## Future work
The Jordan-Hölder theorem, following https://stacks.math.columbia.edu/tag/0FCK.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NoetherianObject.Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6

namespace CategoryTheory

open CategoryTheory.Limits

variable {C : Type*} [Category C]

/-- A noetherian object is an object
which does not have infinite increasing sequences of subobjects. -/
@[stacks 0FCG]
class NoetherianObject (X : C) : Prop where
  subobject_gt_wellFounded' : WellFounded ((· > ·) : Subobject X → Subobject X → Prop)

lemma NoetherianObject.subobject_gt_wellFounded (X : C) [NoetherianObject X] :
    WellFounded ((· > ·) : Subobject X → Subobject X → Prop) :=
  NoetherianObject.subobject_gt_wellFounded'

/-- An artinian object is an object
which does not have infinite decreasing sequences of subobjects. -/
@[stacks 0FCF]
class ArtinianObject (X : C) : Prop where
  subobject_lt_wellFounded' : WellFounded ((· < ·) : Subobject X → Subobject X → Prop)

lemma ArtinianObject.subobject_lt_wellFounded (X : C) [ArtinianObject X] :
    WellFounded ((· < ·) : Subobject X → Subobject X → Prop) :=
  ArtinianObject.subobject_lt_wellFounded'

variable (C)

/-- A category is noetherian if it is essentially small and all objects are noetherian. -/
class Noetherian : Prop extends EssentiallySmall C where
  noetherianObject : ∀ X : C, NoetherianObject X

attribute [instance] Noetherian.noetherianObject

/-- A category is artinian if it is essentially small and all objects are artinian. -/
class Artinian : Prop extends EssentiallySmall C where
  artinianObject : ∀ X : C, ArtinianObject X

attribute [instance] Artinian.artinianObject

variable {C}

open Subobject

variable [HasZeroMorphisms C] [HasZeroObject C]

theorem exists_simple_subobject {X : C} [ArtinianObject X] (h : ¬IsZero X) :
    ∃ Y : Subobject X, Simple (Y : C) := by
  haveI : Nontrivial (Subobject X) := nontrivial_of_not_isZero h
  haveI := isAtomic_of_orderBot_wellFounded_lt (ArtinianObject.subobject_lt_wellFounded X)
  obtain ⟨Y, s⟩ := (IsAtomic.eq_bot_or_exists_atom_le (⊤ : Subobject X)).resolve_left top_ne_bot
  exact ⟨Y, (subobject_simple_iff_isAtom _).mpr s.1⟩

/-- Choose an arbitrary simple subobject of a non-zero artinian object. -/
noncomputable def simpleSubobject {X : C} [ArtinianObject X] (h : ¬IsZero X) : C :=
  (exists_simple_subobject h).choose

/-- The monomorphism from the arbitrary simple subobject of a non-zero artinian object. -/
noncomputable def simpleSubobjectArrow {X : C} [ArtinianObject X] (h : ¬IsZero X) :
    simpleSubobject h ⟶ X :=
  (exists_simple_subobject h).choose.arrow

instance mono_simpleSubobjectArrow {X : C} [ArtinianObject X] (h : ¬IsZero X) :
    Mono (simpleSubobjectArrow h) := by
  dsimp only [simpleSubobjectArrow]
  infer_instance

instance {X : C} [ArtinianObject X] (h : ¬IsZero X) : Simple (simpleSubobject h) :=
  (exists_simple_subobject h).choose_spec

end CategoryTheory
