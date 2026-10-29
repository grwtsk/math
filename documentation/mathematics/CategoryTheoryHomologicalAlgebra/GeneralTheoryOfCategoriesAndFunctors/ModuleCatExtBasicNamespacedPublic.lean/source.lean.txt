-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtPostcompSmulIdEqZeroOfMemAnnihilator.Variant839d59bde846f5717d7596386da8cecbeeefe282999987b6e38bb2278ad324af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"839d59bde846f5717d7596386da8cecbeeefe282999987b6e38bb2278ad324af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ExtPostcompSmulIdEqZeroOfMemAnnihilator.Variant839d59bde846f5717d7596386da8cecbeeefe282999987b6e38bb2278ad324af","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"839d59bde846f5717d7596386da8cecbeeefe282999987b6e38bb2278ad324af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/Ext/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Nailin Guan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nailin Guan
-/

module

public import Mathlib.Algebra.Category.ModuleCat.Ext.HasExt
public import Mathlib.Algebra.Homology.DerivedCategory.Ext.Linear
public import Mathlib.RingTheory.Ideal.Maps

/-!

# Some basic lemmas for manipulating `Ext` over `ModuleCat`

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtPostcompSmulIdEqZeroOfMemAnnihilator.Variant839d59bde846f5717d7596386da8cecbeeefe282999987b6e38bb2278ad324af

public section

universe v u

open LinearMap CategoryTheory

variable {R : Type u} [CommRing R]

variable {M N : Type v} [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]

namespace CategoryTheory.Abelian

variable [Small.{v} R] {M N : ModuleCat.{v} R}

/-- If `r • N = 0`, then `r • 𝟙 M` induces the zero endomorphism on `Ext M N n`. -/
lemma Ext.postcomp_smul_id_eq_zero_of_mem_annihilator {r : R} (mem_ann : r ∈ Module.annihilator R N)
    (n : ℕ) : AddCommGrpCat.ofHom ((Ext.mk₀ (r • 𝟙 M)).postcomp N (add_zero n)) = 0 := by
  ext h
  have : r • 𝟙 N = 0 := by
    simp [← ModuleCat.lsmul_eq_smul_id, Module.mem_annihilator_iff_lsmul_eq_zero.mp mem_ann]
  have smul_eq : r • h = (Ext.mk₀ (r • 𝟙 N)).comp h (zero_add n) := by simp [Ext.mk₀_smul]
  simp [Ext.mk₀_smul, this, smul_eq]

/-- `r • 𝟙 M` induces a monomorphism in `Ext M N n` if and only if scalar multiplication by `r`
is faithful on `Ext M N n`. -/
lemma Ext.postcomp_smul_id_mono_iff (r : R) (i : ℕ) :
    Mono (AddCommGrpCat.ofHom ((Ext.mk₀ (r • 𝟙 M)).postcomp N (add_zero i))) ↔
      IsSMulRegular (Ext N M i) r := by
  simp only [IsSMulRegular, AddCommGrpCat.mono_iff_injective]
  congr!
  ext
  simp [Ext.mk₀_smul]

end CategoryTheory.Abelian
