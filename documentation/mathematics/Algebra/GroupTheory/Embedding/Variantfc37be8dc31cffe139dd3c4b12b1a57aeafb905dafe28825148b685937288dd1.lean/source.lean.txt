-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MulLeftEmbedding.Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MulLeftEmbedding.Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de","mathematical_subject":"Algebra.Groups","original_sha256":"f01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Embedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Logic.Embedding.Basic
import Mathlib.Algebra.Group.Defs

/-!
# The embedding of a cancellative semigroup into itself by multiplication by a fixed element.
-/


namespace GRWTSK.Algebra.GroupTheory.MulLeftEmbedding.Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de

assert_not_exists MonoidWithZero DenselyOrdered

variable {G : Type*}

section LeftOrRightCancelSemigroup

/-- If left-multiplication by any element is cancellative, left-multiplication by `g` is an
embedding. -/
@[to_additive (attr := simps)
      "If left-addition by any element is cancellative, left-addition by `g` is an
        embedding."]
def mulLeftEmbedding [Mul G] [IsLeftCancelMul G] (g : G) : G ↪ G where
  toFun h := g * h
  inj' := mul_right_injective g

/-- If right-multiplication by any element is cancellative, right-multiplication by `g` is an
embedding. -/
@[to_additive (attr := simps)
      "If right-addition by any element is cancellative, right-addition by `g` is an
        embedding."]
def mulRightEmbedding [Mul G] [IsRightCancelMul G] (g : G) : G ↪ G where
  toFun h := h * g
  inj' := mul_left_injective g

@[to_additive]
theorem mulLeftEmbedding_eq_mulRightEmbedding [CommMagma G] [IsCancelMul G] (g : G) :
    mulLeftEmbedding g = mulRightEmbedding g := by
  ext
  exact mul_comm _ _

end LeftOrRightCancelSemigroup
