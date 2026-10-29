-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndexOf.Variant010601c55e45da09bd700511ab2c8ef12a6637268777b3fa9de232ba55c84074","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"010601c55e45da09bd700511ab2c8ef12a6637268777b3fa9de232ba55c84074","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IndexOf.Variant010601c55e45da09bd700511ab2c8ef12a6637268777b3fa9de232ba55c84074","mathematical_subject":"Foundations.Unclassified","original_sha256":"010601c55e45da09bd700511ab2c8ef12a6637268777b3fa9de232ba55c84074","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Tree/Get.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 mathlib community. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Wojciech Nawrocki
-/
import Mathlib.Data.Num.Basic
import Mathlib.Data.Ordering.Basic
import Mathlib.Data.Tree.Basic

/-!
# Binary tree get operation

In this file we define `Tree.indexOf`, `Tree.get`, and `Tree.getOrElse`.
These definitions were moved from the main file to avoid a dependency on `Num`.

## References

<https://leanprover-community.github.io/archive/stream/113488-general/topic/tactic.20question.html#170999997>
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndexOf.Variant010601c55e45da09bd700511ab2c8ef12a6637268777b3fa9de232ba55c84074

namespace Tree

variable {α : Type*}

/-- Finds the index of an element in the tree assuming the tree has been
constructed according to the provided decidable order on its elements.
If it hasn't, the result will be incorrect. If it has, but the element
is not in the tree, returns none. -/
def indexOf (lt : α → α → Prop) [DecidableRel lt] (x : α) : Tree α → Option PosNum
  | nil => none
  | node a t₁ t₂ =>
    match cmpUsing lt x a with
    | Ordering.lt => PosNum.bit0 <$> indexOf lt x t₁
    | Ordering.eq => some PosNum.one
    | Ordering.gt => PosNum.bit1 <$> indexOf lt x t₂

/-- Retrieves an element uniquely determined by a `PosNum` from the tree,
taking the following path to get to the element:
- `bit0` - go to left child
- `bit1` - go to right child
- `PosNum.one` - retrieve from here -/
def get : PosNum → Tree α → Option α
  | _, nil => none
  | PosNum.one, node a _t₁ _t₂ => some a
  | PosNum.bit0 n, node _a t₁ _t₂ => t₁.get n
  | PosNum.bit1 n, node _a _t₁ t₂ => t₂.get n

/-- Retrieves an element from the tree, or the provided default value
if the index is invalid. See `Tree.get`. -/
def getOrElse (n : PosNum) (t : Tree α) (v : α) : α :=
  (t.get n).getD v

end Tree
