-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Traverse.Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Traverse.Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Option/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.TypeStar
import Batteries.Tactic.Alias

/-!
# Extra definitions on `Option`

This file defines more operations involving `Option α`. Lemmas about them are located in other
files under `Mathlib/Data/Option.lean`.
Other basic operations on `Option` are defined in the core library.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Traverse.Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d

namespace Option

/-- Traverse an object of `Option α` with a function `f : α → F β` for an applicative `F`. -/
protected def traverse.{u, v}
    {F : Type u → Type v} [Applicative F] {α : Type*} {β : Type u} (f : α → F β) :
    Option α → F (Option β) := Option.mapA f

variable {α : Type*} {β : Type*}

/-- An elimination principle for `Option`. It is a nondependent version of `Option.rec`. -/
protected def elim' (b : β) (f : α → β) : Option α → β
  | some a => f a
  | none => b

@[simp]
theorem elim'_none (b : β) (f : α → β) : Option.elim' b f none = b := rfl

@[simp]
theorem elim'_some {a : α} (b : β) (f : α → β) : Option.elim' b f (some a) = f a := rfl

@[simp]
theorem elim'_none_some (f : Option α → β) : (Option.elim' (f none) (f ∘ some)) = f :=
  funext fun o ↦ by cases o <;> rfl

lemma elim'_eq_elim {α β : Type*} (b : β) (f : α → β) (a : Option α) :
    Option.elim' b f a = Option.elim a b f := by
  cases a <;> rfl

/-- Inhabited `get` function. Returns `a` if the input is `some a`, otherwise returns `default`. -/
abbrev iget [Inhabited α] : Option α → α
  | some x => x
  | none => default

theorem iget_some [Inhabited α] {a : α} : (some a).iget = a :=
  rfl

instance merge_isCommutative (f : α → α → α) [Std.Commutative f] :
    Std.Commutative (merge f) :=
  ⟨fun a b ↦ by cases a <;> cases b <;> simp [merge, Std.Commutative.comm]⟩

instance merge_isAssociative (f : α → α → α) [Std.Associative f] :
    Std.Associative (merge f) :=
  ⟨fun a b c ↦ by cases a <;> cases b <;> cases c <;> simp [merge, Std.Associative.assoc]⟩

instance merge_isIdempotent (f : α → α → α) [Std.IdempotentOp f] :
    Std.IdempotentOp (merge f) :=
  ⟨fun a ↦ by cases a <;> simp [merge, Std.IdempotentOp.idempotent]⟩

instance merge_isId (f : α → α → α) : Std.LawfulIdentity (merge f) none where
  left_id a := by cases a <;> simp [merge]
  right_id a := by cases a <;> simp [merge]

@[deprecated (since := "2025-04-04")] alias liftOrGet_isCommutative :=
  merge_isCommutative
@[deprecated (since := "2025-04-04")] alias liftOrGet_isAssociative :=
  merge_isAssociative
@[deprecated (since := "2025-04-04")] alias liftOrGet_isIdempotent :=
  merge_isIdempotent
@[deprecated (since := "2025-04-04")] alias liftOrGet_isId := merge_isId

end Option
