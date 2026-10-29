-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MulLeftEmbedding.Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MulLeftEmbedding.Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8","mathematical_subject":"Algebra.Groups","original_sha256":"6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Hom/Embedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Group.Defs
import Mathlib.Logic.Embedding.Basic


namespace GRWTSK.Algebra.GroupTheory.MulLeftEmbedding.Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8

#align_import algebra.hom.embedding from "leanprover-community/mathlib"@"70d50ecfd4900dd6d328da39ab7ebd516abe4025"

/-!
# The embedding of a cancellative semigroup into itself by multiplication by a fixed element.
-/


variable {R : Type*}

section LeftOrRightCancelSemigroup

/-- The embedding of a left cancellative semigroup into itself
by left multiplication by a fixed element.
 -/
@[to_additive (attr := simps)
      "The embedding of a left cancellative additive semigroup into itself
         by left translation by a fixed element." ]
def mulLeftEmbedding {G : Type*} [LeftCancelSemigroup G] (g : G) : G ↪ G where
  toFun h := g * h
  inj' := mul_right_injective g
#align mul_left_embedding mulLeftEmbedding
#align add_left_embedding addLeftEmbedding
#align add_left_embedding_apply addLeftEmbedding_apply
#align mul_left_embedding_apply mulLeftEmbedding_apply

/-- The embedding of a right cancellative semigroup into itself
by right multiplication by a fixed element.
 -/
@[to_additive (attr := simps)
      "The embedding of a right cancellative additive semigroup into itself
         by right translation by a fixed element."]
def mulRightEmbedding {G : Type*} [RightCancelSemigroup G] (g : G) : G ↪ G where
  toFun h := h * g
  inj' := mul_left_injective g
#align mul_right_embedding mulRightEmbedding
#align add_right_embedding addRightEmbedding
#align mul_right_embedding_apply mulRightEmbedding_apply
#align add_right_embedding_apply addRightEmbedding_apply

@[to_additive]
theorem mul_left_embedding_eq_mul_right_embedding {G : Type*} [CancelCommMonoid G] (g : G) :
    mulLeftEmbedding g = mulRightEmbedding g := by
  ext
  exact mul_comm _ _
#align mul_left_embedding_eq_mul_right_embedding mul_left_embedding_eq_mul_right_embedding
#align add_left_embedding_eq_add_right_embedding add_left_embedding_eq_add_right_embedding

end LeftOrRightCancelSemigroup
