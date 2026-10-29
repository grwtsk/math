-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FunctionInjectiveOrderedCancelCommMonoid.Variantda1c42fa71e7341064c11471449b9c13205d9fd58a4a0d3c072fa4db771cdc3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da1c42fa71e7341064c11471449b9c13205d9fd58a4a0d3c072fa4db771cdc3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FunctionInjectiveOrderedCancelCommMonoid.Variantda1c42fa71e7341064c11471449b9c13205d9fd58a4a0d3c072fa4db771cdc3b","mathematical_subject":"Algebra.Groups","original_sha256":"da1c42fa71e7341064c11471449b9c13205d9fd58a4a0d3c072fa4db771cdc3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Monoid/Cancel/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Monoid.Basic
import Mathlib.Algebra.Order.Monoid.Cancel.Defs


namespace GRWTSK.Algebra.GroupTheory.FunctionInjectiveOrderedCancelCommMonoid.Variantda1c42fa71e7341064c11471449b9c13205d9fd58a4a0d3c072fa4db771cdc3b

#align_import algebra.order.monoid.cancel.basic from "leanprover-community/mathlib"@"f1a2caaf51ef593799107fe9a8d5e411599f3996"

/-!
# Basic results on ordered cancellative monoids.

We pull back ordered cancellative monoids along injective maps.
-/


universe u

variable {α : Type u}

open Function

section OrderedCancelCommMonoid

variable [OrderedCancelCommMonoid α]

/-- Pullback an `OrderedCancelCommMonoid` under an injective map.
See note [reducible non-instances]. -/
@[to_additive (attr := reducible) Function.Injective.orderedCancelAddCommMonoid
    "Pullback an `OrderedCancelAddCommMonoid` under an injective map."]
def Function.Injective.orderedCancelCommMonoid {β : Type*} [One β] [Mul β] [Pow β ℕ] (f : β → α)
    (hf : Function.Injective f) (one : f 1 = 1) (mul : ∀ x y, f (x * y) = f x * f y)
    (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n) : OrderedCancelCommMonoid β :=
  { hf.orderedCommMonoid f one mul npow with
    le_of_mul_le_mul_left := fun a b c (bc : f (a * b) ≤ f (a * c)) ↦
      (mul_le_mul_iff_left (f a)).mp (by rwa [← mul, ← mul]) }
#align function.injective.ordered_cancel_comm_monoid Function.Injective.orderedCancelCommMonoid
#align function.injective.ordered_cancel_add_comm_monoid Function.Injective.orderedCancelAddCommMonoid

end OrderedCancelCommMonoid

section LinearOrderedCancelCommMonoid

variable [LinearOrderedCancelCommMonoid α]

/-- Pullback a `LinearOrderedCancelCommMonoid` under an injective map.
See note [reducible non-instances]. -/
@[to_additive (attr := reducible) Function.Injective.linearOrderedCancelAddCommMonoid
    "Pullback a `LinearOrderedCancelAddCommMonoid` under an injective map."]
def Function.Injective.linearOrderedCancelCommMonoid {β : Type*} [One β] [Mul β] [Pow β ℕ]
    [Sup β] [Inf β] (f : β → α) (hf : Function.Injective f) (one : f 1 = 1)
    (mul : ∀ x y, f (x * y) = f x * f y) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (hsup : ∀ x y, f (x ⊔ y) = max (f x) (f y)) (hinf : ∀ x y, f (x ⊓ y) = min (f x) (f y)) :
    LinearOrderedCancelCommMonoid β :=
  { hf.linearOrderedCommMonoid f one mul npow hsup hinf,
    hf.orderedCancelCommMonoid f one mul npow with }
#align function.injective.linear_ordered_cancel_comm_monoid Function.Injective.linearOrderedCancelCommMonoid
#align function.injective.linear_ordered_cancel_add_comm_monoid Function.Injective.linearOrderedCancelAddCommMonoid

end LinearOrderedCancelCommMonoid
