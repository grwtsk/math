-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DistinctKeys.Variant28b8d8d2419e3ffcc403f3f6ede1344bedc1db35016f1f2060aa1f6191722b22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28b8d8d2419e3ffcc403f3f6ede1344bedc1db35016f1f2060aa1f6191722b22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DistinctKeys.Variant28b8d8d2419e3ffcc403f3f6ede1344bedc1db35016f1f2060aa1f6191722b22","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"28b8d8d2419e3ffcc403f3f6ede1344bedc1db35016f1f2060aa1f6191722b22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Internal/List/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.BinderPredicates
public import Init.NotationExtra


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DistinctKeys.Variant28b8d8d2419e3ffcc403f3f6ede1344bedc1db35016f1f2060aa1f6191722b22

public section

/-!
This is an internal implementation file of the hash map. Users of the hash map should not rely on
the contents of this file.

File contents: definitions on lists needed to state the well-formedness predicate
-/

set_option linter.missingDocs true
set_option autoImplicit false

universe u v w

variable {α : Type u} {β : α → Type v} {γ : α → Type w}

open List (Pairwise)

namespace Std.Internal.List

/-- Internal implementation detail of the hash map -/
def keys : List ((a : α) × β a) → List α
  | [] => []
  | ⟨k, _⟩ :: l => k :: keys l

/-- Internal implementation detail of the hash map -/
structure DistinctKeys [BEq α] (l : List ((a : α) × β a)) : Prop where
  /-- Internal implementation detail of the hash map -/
  distinct : Pairwise (fun a b => (a == b) = false) (keys l)

/-- Internal implementation detail of the hash map -/
def values {β : Type v} : List ((_ : α) × β) → List β
  | [] => []
  | ⟨_, v⟩ :: l => v :: values l

end Std.Internal.List
