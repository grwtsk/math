-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Canonical.Variante392cac5a76c358b795d5c7ddffeaa626efe0197ee8ad1dbc65e19262002212f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e392cac5a76c358b795d5c7ddffeaa626efe0197ee8ad1dbc65e19262002212f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Canonical.Variante392cac5a76c358b795d5c7ddffeaa626efe0197ee8ad1dbc65e19262002212f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e392cac5a76c358b795d5c7ddffeaa626efe0197ee8ad1dbc65e19262002212f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/GroupWithZero/WithZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard
-/
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
/-!

# Covariant instances on `WithZero`

Adding a zero to a type with a preorder and multiplication which satisfies some
axiom, gives us a new type which satisfies some variant of the axiom.

## Example

If `α` satisfies `b₁ < b₂ → a * b₁ < a * b₂` for all `a`,
then `WithZero α` satisfies `b₁ < b₂ → a * b₁ < a * b₂` for all `a > 0`,
which is `PosMulStrictMono (WithZero α)`.

## Application

The type `ℤₘ₀ := WithZero (Multiplicative ℤ)` is used a lot in mathlib's valuation
theory. These instances enable lemmas such as `mul_pos` to fire on `ℤₘ₀`.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.Canonical.Variante392cac5a76c358b795d5c7ddffeaa626efe0197ee8ad1dbc65e19262002212f

assert_not_exists Ring

-- this makes `mul_lt_mul_left`, `mul_pos` etc work on `ℤₘ₀`
instance {α : Type*} [Mul α] [Preorder α] [MulLeftStrictMono α] :
    PosMulStrictMono (WithZero α) where
  elim := @fun
    | ⟨(x : α), hx⟩, 0, (b : α), _ => by
        simpa only [mul_zero] using WithZero.zero_lt_coe _
    | ⟨(x : α), hx⟩, (a : α), (b : α), h => by
        dsimp only at h ⊢
        norm_cast at h ⊢
        exact mul_lt_mul_left' h x

open Function in
instance {α : Type*} [Mul α] [Preorder α] [MulRightStrictMono α] :
    MulPosStrictMono (WithZero α) where
  elim := @fun
    | ⟨(x : α), hx⟩, 0, (b : α), _ => by
        simpa only [mul_zero] using WithZero.zero_lt_coe _
    | ⟨(x : α), hx⟩, (a : α), (b : α), h => by
        dsimp only at h ⊢
        norm_cast at h ⊢
        exact mul_lt_mul_right' h x

instance {α : Type*} [Mul α] [Preorder α] [MulLeftMono α] :
    PosMulMono (WithZero α) where
  elim := @fun
    | ⟨0, _⟩, a, b, _ => by
        simp only [zero_mul, le_refl]
    | ⟨(x : α), _⟩, 0, _, _ => by
        simp only [mul_zero, WithZero.zero_le]
    | ⟨(x : α), _⟩, (a : α), 0, h =>
        (lt_irrefl 0 (lt_of_lt_of_le (WithZero.zero_lt_coe a) h)).elim
    | ⟨(x : α), hx⟩, (a : α), (b : α), h => by
        dsimp only at h ⊢
        norm_cast at h ⊢
        exact mul_le_mul_left' h x

-- This makes `lt_mul_of_le_of_one_lt'` work on `ℤₘ₀`
open Function in
instance {α : Type*} [Mul α] [Preorder α] [MulRightMono α] :
    MulPosMono (WithZero α) where
  elim := @fun
    | ⟨0, _⟩, a, b, _ => by
        simp only [mul_zero, le_refl]
    | ⟨(x : α), _⟩, 0, _, _ => by
        simp only [zero_mul, WithZero.zero_le]
    | ⟨(x : α), _⟩, (a : α), 0, h =>
        (lt_irrefl 0 (lt_of_lt_of_le (WithZero.zero_lt_coe a) h)).elim
    | ⟨(x : α), hx⟩, (a : α), (b : α), h => by
        dsimp only at h ⊢
        norm_cast at h ⊢
        exact mul_le_mul_right' h x
