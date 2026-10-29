-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cmp.Variant7e15e05976732f6508368a0c465073cf0a2a1c5f44c92405800bca93252c40e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e15e05976732f6508368a0c465073cf0a2a1c5f44c92405800bca93252c40e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Cmp.Variant7e15e05976732f6508368a0c465073cf0a2a1c5f44c92405800bca93252c40e1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7e15e05976732f6508368a0c465073cf0a2a1c5f44c92405800bca93252c40e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/Meta/DiscrTree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg, Kim Morrison
-/
module

public import Lean.Meta.DiscrTree
public import Batteries.Data.Array.Merge
public import Batteries.Lean.Meta.Expr
public import Batteries.Lean.PersistentHashMap


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cmp.Variant7e15e05976732f6508368a0c465073cf0a2a1c5f44c92405800bca93252c40e1

@[expose] public section

namespace Lean.Meta.DiscrTree

namespace Key

/--
Compare two `Key`s. The ordering is total but otherwise arbitrary. (It uses
`Name.quickCmp` internally.)
-/
protected def cmp : Key → Key → Ordering
  | .lit v₁,        .lit v₂        => compare v₁ v₂
  | .fvar n₁ a₁,    .fvar n₂ a₂    => n₁.name.quickCmp n₂.name |>.then <| compare a₁ a₂
  | .const n₁ a₁,   .const n₂ a₂   => n₁.quickCmp n₂ |>.then <| compare a₁ a₂
  | .proj s₁ i₁ a₁, .proj s₂ i₂ a₂ =>
    s₁.quickCmp s₂ |>.then <| compare i₁ i₂ |>.then <| compare a₁ a₂
  | k₁,             k₂             => compare k₁.ctorIdx k₂.ctorIdx

instance : Ord Key := ⟨Key.cmp⟩

end Key


namespace Trie

/--
Merge two `Trie`s. Duplicate values are preserved.
-/
partial def mergePreservingDuplicates : Trie α → Trie α → Trie α
  | node vs₁ cs₁, node vs₂ cs₂ =>
    node (vs₁ ++ vs₂) (mergeChildren cs₁ cs₂)
where
  /-- Auxiliary definition for `mergePreservingDuplicates`. -/
  mergeChildren (cs₁ cs₂ : Array (Key × Trie α)) :
      Array (Key × Trie α) :=
    Array.mergeDedupWith
      (ord := ⟨compareOn (·.fst)⟩) cs₁ cs₂
      (fun (k₁, t₁) (_, t₂) => (k₁, mergePreservingDuplicates t₁ t₂))

end Trie

/--
Merge two `DiscrTree`s. Duplicate values are preserved.
-/
@[inline]
def mergePreservingDuplicates (t u : DiscrTree α) : DiscrTree α :=
  ⟨t.root.mergeWith u.root fun _ trie₁ trie₂ =>
    trie₁.mergePreservingDuplicates trie₂⟩
