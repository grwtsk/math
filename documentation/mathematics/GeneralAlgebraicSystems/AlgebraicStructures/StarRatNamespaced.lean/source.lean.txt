-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.StarNnratCast.Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.StarNnratCast.Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Star/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Field.Opposite
import Mathlib.Algebra.Star.Basic
import Mathlib.Data.NNRat.Defs
import Mathlib.Data.Rat.Cast.Defs

/-!
# *-ring structure on ℚ and ℚ≥0.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.StarNnratCast.Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e

instance Rat.instStarRing : StarRing ℚ := starRingOfComm
instance NNRat.instStarRing : StarRing ℚ≥0 := starRingOfComm
instance Rat.instTrivialStar : TrivialStar ℚ := ⟨fun _ ↦ rfl⟩
instance NNRat.instTrivialStar : TrivialStar ℚ≥0 := ⟨fun _ ↦ rfl⟩

variable {R : Type*}

open MulOpposite

@[simp, norm_cast]
lemma star_nnratCast [DivisionSemiring R] [StarRing R] (q : ℚ≥0) : star (q : R) = q :=
  (congr_arg unop <| map_nnratCast (starRingEquiv : R ≃+* Rᵐᵒᵖ) q).trans (unop_nnratCast _)

@[simp, norm_cast]
theorem star_ratCast [DivisionRing R] [StarRing R] (r : ℚ) : star (r : R) = r :=
  (congr_arg unop <| map_ratCast (starRingEquiv : R ≃+* Rᵐᵒᵖ) r).trans (unop_ratCast _)
