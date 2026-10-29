-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variant2c1761205b2a7e14332da3a84ec19a174392624b54ae4eccaed66d83e0d853b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c1761205b2a7e14332da3a84ec19a174392624b54ae4eccaed66d83e0d853b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Card.Variant2c1761205b2a7e14332da3a84ec19a174392624b54ae4eccaed66d83e0d853b7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2c1761205b2a7e14332da3a84ec19a174392624b54ae4eccaed66d83e0d853b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fintype/Parity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Fintype.Card
import Mathlib.Algebra.Group.Even

/-!
# The cardinality of `Fin 2` is even.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variant2c1761205b2a7e14332da3a84ec19a174392624b54ae4eccaed66d83e0d853b7

variable {α : Type*}

namespace Fintype

instance IsSquare.decidablePred [Mul α] [Fintype α] [DecidableEq α] :
    DecidablePred (IsSquare : α → Prop) := fun _ => Fintype.decidableExistsFintype

/-- The cardinality of `Fin 2` is even, `Fact` version.
This `Fact` is needed as an instance by `Matrix.SpecialLinearGroup.instNeg`. -/
instance card_fin_two : Fact (Even (Fintype.card (Fin 2))) :=
  ⟨⟨1, rfl⟩⟩

end Fintype
