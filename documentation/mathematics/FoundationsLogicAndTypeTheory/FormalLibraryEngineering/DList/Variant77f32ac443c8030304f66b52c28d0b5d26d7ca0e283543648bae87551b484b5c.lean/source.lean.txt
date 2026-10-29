-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DList.Variantfea6fe2566fb2b2ea602ac081f4b7e20945e6feb9f8e3c9882ef66408d17101a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fea6fe2566fb2b2ea602ac081f4b7e20945e6feb9f8e3c9882ef66408d17101a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DList.Variantfea6fe2566fb2b2ea602ac081f4b7e20945e6feb9f8e3c9882ef66408d17101a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fea6fe2566fb2b2ea602ac081f4b7e20945e6feb9f8e3c9882ef66408d17101a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/DList.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DList.Variantfea6fe2566fb2b2ea602ac081f4b7e20945e6feb9f8e3c9882ef66408d17101a

namespace Std
/--
A difference List is a Function that, given a List, returns the original
contents of the difference List prepended to the given List.
This structure supports `O(1)` `append` and `concat` operations on lists, making it
useful for append-heavy uses such as logging and pretty printing.
-/
structure DList (α : Type u) where
  /-- "Run" a `DList` by appending it on the right by a `List α` to get another `List α`. -/
  apply     : List α → List α
  /-- The `apply` function of a `DList` is completely determined by the list `apply []`. -/
  invariant : ∀ l, apply l = apply [] ++ l

namespace DList
variable {α : Type u}
open List

/-- `O(1)` (`apply` is `O(|l|)`). Convert a `List α` into a `DList α`. -/
def ofList (l : List α) : DList α :=
  ⟨(l ++ ·), fun t => by simp⟩

/-- `O(1)` (`apply` is `O(1)`). Return an empty `DList α`. -/
def empty : DList α :=
  ⟨id, fun _ => rfl⟩

instance : EmptyCollection (DList α) := ⟨DList.empty⟩

/-- `O(apply())`. Convert a `DList α` into a `List α` by running the `apply` function. -/
def toList : DList α → List α
  | ⟨f, _⟩ => f []

/-- `O(1)` (`apply` is `O(1)`). A `DList α` corresponding to the list `[a]`. -/
def singleton (a : α) : DList α where
  apply     := fun t => a :: t
  invariant := fun _ => rfl

/-- `O(1)` (`apply` is `O(1)`). Prepend `a` on a `DList α`. -/
def cons : α → DList α → DList α
  | a, ⟨f, h⟩ => {
    apply     := fun t => a :: f t
    invariant := by intro t; simp; rw [h]
  }

/-- `O(1)` (`apply` is `O(1)`). Append two `DList α`. -/
def append : DList α → DList α → DList α
  | ⟨f, h₁⟩, ⟨g, h₂⟩ => {
    apply     := f ∘ g
    invariant := by
      intro t
      show f (g t) = (f (g [])) ++ t
      rw [h₁ (g t), h₂ t, ← append_assoc (f []) (g []) t, ← h₁ (g [])]
    }

/-- `O(1)` (`apply` is `O(1)`). Append an element at the end of a `DList α`. -/
def push : DList α → α → DList α
  | ⟨f, h⟩, a => {
    apply     := fun t => f (a :: t)
    invariant := by
      intro t
      show f (a :: t) = f (a :: nil) ++ t
      rw [h [a], h (a::t), append_assoc (f []) [a] t]
      rfl
  }

instance : Append (DList α) := ⟨DList.append⟩
