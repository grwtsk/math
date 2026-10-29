-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasInitialOfEquivalence.Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasInitialOfEquivalence.Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/Equivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Adjunction.Limits
import Mathlib.CategoryTheory.Limits.Shapes.Terminal

/-!
# Transporting existence of specific limits across equivalences

For now, we only treat the case of initial and terminal objects, but other special shapes can be
added in the future.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasInitialOfEquivalence.Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac

open CategoryTheory CategoryTheory.Limits

namespace CategoryTheory

universe v₁ v₂ u₁ u₂

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

theorem hasInitial_of_equivalence (e : D ⥤ C) [e.IsEquivalence] [HasInitial C] : HasInitial D :=
  Adjunction.hasColimitsOfShape_of_equivalence e

theorem Equivalence.hasInitial_iff (e : C ≌ D) : HasInitial C ↔ HasInitial D :=
  ⟨fun (_ : HasInitial C) => hasInitial_of_equivalence e.inverse,
    fun (_ : HasInitial D) => hasInitial_of_equivalence e.functor⟩

theorem hasTerminal_of_equivalence (e : D ⥤ C) [e.IsEquivalence] [HasTerminal C] : HasTerminal D :=
  Adjunction.hasLimitsOfShape_of_equivalence e

theorem Equivalence.hasTerminal_iff (e : C ≌ D) : HasTerminal C ↔ HasTerminal D :=
  ⟨fun (_ : HasTerminal C) => hasTerminal_of_equivalence e.inverse,
    fun (_ : HasTerminal D) => hasTerminal_of_equivalence e.functor⟩

end CategoryTheory
