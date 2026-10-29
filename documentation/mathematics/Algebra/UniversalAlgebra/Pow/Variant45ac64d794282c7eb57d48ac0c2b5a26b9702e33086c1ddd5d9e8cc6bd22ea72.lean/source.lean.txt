-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsLeftRegularProd.Variante3032d5e6f7f95dbf3b41beaa0afa6cd2cdf15ddd931aff5b2841c6c4404f084","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3032d5e6f7f95dbf3b41beaa0afa6cd2cdf15ddd931aff5b2841c6c4404f084","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsLeftRegularProd.Variante3032d5e6f7f95dbf3b41beaa0afa6cd2cdf15ddd931aff5b2841c6c4404f084","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e3032d5e6f7f95dbf3b41beaa0afa6cd2cdf15ddd931aff5b2841c6c4404f084","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Regular/Pow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Regular.Basic

/-!
# Product of regular elements

## TODO

Move to `Mathlib/Algebra/BigOperators/Group/Finset/Basic.lean`?
-/



namespace GRWTSK.Algebra.UniversalAlgebra.IsLeftRegularProd.Variante3032d5e6f7f95dbf3b41beaa0afa6cd2cdf15ddd931aff5b2841c6c4404f084

variable {R : Type*} {a b : R}

section CommMonoid

variable {ι R : Type*} [CommMonoid R] {s : Finset ι} {f : ι → R}

lemma IsLeftRegular.prod (h : ∀ i ∈ s, IsLeftRegular (f i)) :
    IsLeftRegular (∏ i ∈ s, f i) :=
  s.prod_induction _ _ (@IsLeftRegular.mul R _) isRegular_one.left h

lemma IsRightRegular.prod (h : ∀ i ∈ s, IsRightRegular (f i)) :
    IsRightRegular (∏ i ∈ s, f i) :=
  s.prod_induction _ _ (@IsRightRegular.mul R _) isRegular_one.right h

lemma IsRegular.prod (h : ∀ i ∈ s, IsRegular (f i)) :
    IsRegular (∏ i ∈ s, f i) :=
  ⟨IsLeftRegular.prod fun a ha ↦ (h a ha).left,
   IsRightRegular.prod fun a ha ↦ (h a ha).right⟩

end CommMonoid
