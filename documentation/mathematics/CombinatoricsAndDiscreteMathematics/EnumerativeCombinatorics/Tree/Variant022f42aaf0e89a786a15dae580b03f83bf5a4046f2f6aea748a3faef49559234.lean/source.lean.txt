-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.PairwiseNode.Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.PairwiseNode.Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Combinatorics/Enumerative/Catalan/Tree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Julian Kuelshammer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julian Kuelshammer
-/
module

public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Combinatorics.Enumerative.Catalan.Basic
public import Mathlib.Data.Finset.NatAntidiagonal
public import Mathlib.Data.Nat.Choose.Central

import Mathlib.Algebra.BigOperators.Group.Finset.Basic


/-!
## Main results
* `treesOfNumNodesEq_card_eq_catalan`: The number of binary trees with `n` internal nodes
  is `catalan n`

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.PairwiseNode.Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8

@[expose] public section

open Finset

open Finset.HasAntidiagonal.antidiagonal (fst_le snd_le)

namespace BinaryTree

/-- Given two finsets, find all trees that can be formed with
  left child in `a` and right child in `b` -/
abbrev pairwiseNode (a b : Finset (BinaryTree Unit)) : Finset (BinaryTree Unit) :=
  (a ×ˢ b).map ⟨fun x => x.1 △ x.2, fun ⟨x₁, x₂⟩ ⟨y₁, y₂⟩ => fun h => by simpa using h⟩

/-- A Finset of all trees with `n` nodes. See `mem_treesOfNodesEq` -/
def treesOfNumNodesEq : ℕ → Finset (BinaryTree Unit)
  | 0 => {nil}
  | n + 1 =>
    (antidiagonal n).attach.biUnion fun ijh =>
      pairwiseNode (treesOfNumNodesEq ijh.1.1) (treesOfNumNodesEq ijh.1.2)
  decreasing_by
    · simp_wf; have := fst_le ijh.2; lia
    · simp_wf; have := snd_le ijh.2; lia

/-- **Alias** of `BinaryTree.treesOfNumNodesEq`. -/
@[deprecated BinaryTree.treesOfNumNodesEq (since := "2026-06-07")]
abbrev _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.PairwiseNode.Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.Tree.treesOfNumNodesEq : ℕ → Finset (Tree Unit) :=
  BinaryTree.treesOfNumNodesEq

@[simp]
theorem treesOfNumNodesEq_zero : treesOfNumNodesEq 0 = {nil} := by rw [treesOfNumNodesEq]

theorem treesOfNumNodesEq_succ (n : ℕ) :
    treesOfNumNodesEq (n + 1) =
      (antidiagonal n).biUnion fun ij =>
        pairwiseNode (treesOfNumNodesEq ij.1) (treesOfNumNodesEq ij.2) := by
  rw [treesOfNumNodesEq]
  ext
  simp

set_option backward.isDefEq.respectTransparency.types false in
@[simp]
theorem mem_treesOfNumNodesEq {x : BinaryTree Unit} {n : ℕ} :
    x ∈ treesOfNumNodesEq n ↔ x.numNodes = n := by
  induction x using BinaryTree.unitRecOn generalizing n <;> cases n <;>
    simp [treesOfNumNodesEq_succ, *]

theorem mem_treesOfNumNodesEq_numNodes (x : BinaryTree Unit) : x ∈ treesOfNumNodesEq x.numNodes :=
  mem_treesOfNumNodesEq.mpr rfl

@[simp, norm_cast]
theorem coe_treesOfNumNodesEq (n : ℕ) :
    ↑(treesOfNumNodesEq n) = { x : BinaryTree Unit | x.numNodes = n } :=
  Set.ext (by simp)

theorem treesOfNumNodesEq_card_eq_catalan (n : ℕ) : #(treesOfNumNodesEq n) = catalan n := by
  induction n using Nat.case_strong_induction_on with
  | hz => simp
  | hi n ih =>
    rw [treesOfNumNodesEq_succ, card_biUnion, catalan_succ']
    · apply sum_congr rfl
      rintro ⟨i, j⟩ H
      rw [card_map, card_product, ih _ (fst_le H), ih _ (snd_le H)]
    · simp_rw [Set.PairwiseDisjoint, Set.Pairwise, disjoint_left]
      aesop

end BinaryTree
