-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.StarProd.Varianta407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.StarProd.Varianta407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"a407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Star/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs

/-! # Big-operators lemmas about `star` algebraic operations

These results are kept separate from `Algebra.Star.Basic` to avoid it needing to import `Finset`.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.StarProd.Varianta407d63ba89013b9686094b95090ba28d60350732e2b039e8b3c252e95624fc5

variable {R : Type*}

@[simp]
theorem star_prod [CommMonoid R] [StarMul R] {α : Type*} (s : Finset α) (f : α → R) :
    star (∏ x ∈ s, f x) = ∏ x ∈ s, star (f x) := map_prod (starMulAut : R ≃* R) _ _

@[simp]
theorem star_sum [AddCommMonoid R] [StarAddMonoid R] {α : Type*} (s : Finset α) (f : α → R) :
    star (∑ x ∈ s, f x) = ∑ x ∈ s, star (f x) := map_sum (starAddEquiv : R ≃+ R) _ _
