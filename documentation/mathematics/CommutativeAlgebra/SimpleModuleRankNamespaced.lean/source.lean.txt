-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsSimpleModuleIffFinrankEqOne.Variant86fee3933b8dcdc394cdfeceb4c43b655a23d80ff926ceb52a1ff9973005cf59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86fee3933b8dcdc394cdfeceb4c43b655a23d80ff926ceb52a1ff9973005cf59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsSimpleModuleIffFinrankEqOne.Variant86fee3933b8dcdc394cdfeceb4c43b655a23d80ff926ceb52a1ff9973005cf59","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"86fee3933b8dcdc394cdfeceb4c43b655a23d80ff926ceb52a1ff9973005cf59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/SimpleModule/Rank.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.RingTheory.SimpleModule.Basic

/-!
# A module over a division ring is simple iff it has rank one
-/


namespace GRWTSK.Algebra.LinearAlgebra.IsSimpleModuleIffFinrankEqOne.Variant86fee3933b8dcdc394cdfeceb4c43b655a23d80ff926ceb52a1ff9973005cf59

theorem isSimpleModule_iff_finrank_eq_one {R M} [DivisionRing R] [AddCommGroup M] [Module R M] :
    IsSimpleModule R M ↔ Module.finrank R M = 1 :=
  ⟨fun h ↦ have := h.nontrivial; have ⟨v, hv⟩ := exists_ne (0 : M)
    (finrank_eq_one_iff_of_nonzero' v hv).mpr (IsSimpleModule.toSpanSingleton_surjective R hv),
  is_simple_module_of_finrank_eq_one⟩
