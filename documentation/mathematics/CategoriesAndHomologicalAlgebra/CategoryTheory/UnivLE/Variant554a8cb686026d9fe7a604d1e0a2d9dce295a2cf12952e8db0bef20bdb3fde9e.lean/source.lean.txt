-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLEOfEssSurj.Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.UnivLEOfEssSurj.Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"be92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/UnivLE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Logic.UnivLE
import Mathlib.CategoryTheory.EssentialImage
import Mathlib.CategoryTheory.Types

/-!
# Universe inequalities and essential surjectivity of `uliftFunctor`.

We show `UnivLE.{u, v} ↔ EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v)`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLEOfEssSurj.Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99

set_option autoImplicit true

open CategoryTheory

noncomputable section

theorem UnivLE.ofEssSurj.{u, v} (w : EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v)) :
    UnivLE.{u, v} :=
  fun a => by
    obtain ⟨a', ⟨m⟩⟩ := w.mem_essImage a
    exact ⟨a', ⟨(Iso.toEquiv m).symm.trans Equiv.ulift⟩⟩

instance [UnivLE.{u, v}] : EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v) where
  mem_essImage α :=
    ⟨Shrink α, ⟨Equiv.toIso (Equiv.ulift.trans (equivShrink α).symm)⟩⟩

theorem UnivLE_iff_essSurj.{u, v} :
    UnivLE.{u, v} ↔ EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v) :=
  ⟨fun _ => inferInstance, fun w => UnivLE.ofEssSurj w⟩

instance [UnivLE.{u, v}] : IsEquivalence uliftFunctor.{u, v} :=
  Equivalence.ofFullyFaithfullyEssSurj uliftFunctor

def UnivLE.witness.{u, v} [UnivLE.{u, v}] : Type u ⥤ Type v :=
  uliftFunctor.{v, u} ⋙ (uliftFunctor.{u, v}).inv

instance [UnivLE.{u, v}] : Faithful UnivLE.witness.{u, v} :=
  inferInstanceAs <| Faithful (_ ⋙ _)

instance [UnivLE.{u, v}] : Full UnivLE.witness.{u, v} :=
  inferInstanceAs <| Full (_ ⋙ _)
