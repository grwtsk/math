-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.DenseRangeAddCharEqOfEvalOneEq.Variant8670db044e5a1c2db0ad4f0f41a8b503dfcd20ae8b477539df324fadc1431aa7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8670db044e5a1c2db0ad4f0f41a8b503dfcd20ae8b477539df324fadc1431aa7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.DenseRangeAddCharEqOfEvalOneEq.Variant8670db044e5a1c2db0ad4f0f41a8b503dfcd20ae8b477539df324fadc1431aa7","mathematical_subject":"Algebra.Groups","original_sha256":"8670db044e5a1c2db0ad4f0f41a8b503dfcd20ae8b477539df324fadc1431aa7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Monoid/AddChar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Algebra.Group.AddChar
import Mathlib.Topology.DenseEmbedding

/-!
# Additive characters of topological monoids
-/


namespace GRWTSK.Algebra.GroupTheory.DenseRangeAddCharEqOfEvalOneEq.Variant8670db044e5a1c2db0ad4f0f41a8b503dfcd20ae8b477539df324fadc1431aa7

lemma DenseRange.addChar_eq_of_eval_one_eq {A M : Type*} [TopologicalSpace A] [AddMonoidWithOne A]
    [Monoid M] [TopologicalSpace M] [T2Space M] (hdr : DenseRange ((↑) : ℕ → A))
    {κ₁ κ₂ : AddChar A M} (hκ₁ : Continuous κ₁) (hκ₂ : Continuous κ₂) (h : κ₁ 1 = κ₂ 1) :
    κ₁ = κ₂ := by
  refine DFunLike.coe_injective <| hdr.equalizer hκ₁ hκ₂ (funext fun n ↦ ?_)
  simp only [Function.comp_apply, ← nsmul_one, h, AddChar.map_nsmul_eq_pow]
