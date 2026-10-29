-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsFinite.Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsFinite.Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/IsFinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.Grp.Abelian
import Mathlib.Algebra.Category.Grp.EpiMono
import Mathlib.Algebra.Category.Grp.Zero
import Mathlib.Algebra.Homology.ShortComplex.Ab
import Mathlib.CategoryTheory.Abelian.SerreClass.Basic
import Mathlib.Data.Finite.Prod

/-!
# The Serre class of finite abelian groups

In this file, we define `isFinite : ObjectProperty AddCommGrp` and show
that it is a Serre class.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.IsFinite.Variant7ca395cfc8466a96f28c67982f1714e1d91c9d9bd8491606a59d2f619f39cf1a

universe u

open CategoryTheory Limits ZeroObject

namespace AddCommGrp

/-- The Serre class of finite abelian groups
in the category of abelian groups. -/
def isFinite : ObjectProperty AddCommGrp.{u} :=
  fun M ↦ Finite M

@[simp]
lemma prop_isFinite_iff (M : AddCommGrp.{u}) : isFinite M ↔ Finite M := Iff.rfl

instance : isFinite.{u}.IsSerreClass where
  exists_zero := ⟨.of PUnit, isZero_of_subsingleton _,
    by rw [prop_isFinite_iff]; infer_instance⟩
  prop_of_mono {M N} f hf hN := by
    rw [AddCommGrp.mono_iff_injective] at hf
    simp only [prop_isFinite_iff] at hN ⊢
    exact Finite.of_injective _ hf
  prop_of_epi {M N} f hf hM := by
    rw [AddCommGrp.epi_iff_surjective] at hf
    simp only [prop_isFinite_iff] at hM ⊢
    exact Finite.of_surjective _ hf
  prop_X₂_of_shortExact {S} hS h₁ h₃ := by
    simp only [prop_isFinite_iff] at h₁ h₃ ⊢
    have hg := hS.epi_g
    rw [AddCommGrp.epi_iff_surjective] at hg
    obtain ⟨s, hs⟩ := hg.hasRightInverse
    have hφ : Function.Surjective (fun (x₁, x₃) ↦ S.f x₁ + s x₃) := fun x₂ ↦ by
      obtain ⟨x₁, hx₁⟩ := (ShortComplex.ab_exact_iff S).1 hS.exact (x₂ - s (S.g x₂))
        (by simp [hs (S.g x₂)])
      exact ⟨⟨x₁, S.g x₂⟩, by simp [hx₁]⟩
    exact Finite.of_surjective _ hφ

end AddCommGrp
