-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.MkLeOfModule.Variant07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.MkLeOfModule.Variant07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7","mathematical_subject":"Logic.SetTheory","original_sha256":"07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/Card.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Algebra.NoZeroSMulDivisors.Basic
import Mathlib.SetTheory.Cardinal.Basic

/-!
# Cardinality of a module

This file proves that the cardinality of a module without zero divisors is at least the cardinality
of its base ring.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.MkLeOfModule.Variant07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7

open Function

universe u v

namespace Cardinal

/-- The cardinality of a nontrivial module over a ring is at least the cardinality of the ring if
there are no zero divisors (for instance if the ring is a field) -/
theorem mk_le_of_module (R : Type u) (E : Type v)
    [AddCommGroup E] [Ring R] [Module R E] [Nontrivial E] [NoZeroSMulDivisors R E] :
    Cardinal.lift.{v} (#R) ≤ Cardinal.lift.{u} (#E) := by
  obtain ⟨x, hx⟩ : ∃ (x : E), x ≠ 0 := exists_ne 0
  have : Injective (fun k ↦ k • x) := smul_left_injective R hx
  exact lift_mk_le_lift_mk_of_injective this

end Cardinal
