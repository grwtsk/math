-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Balanced.Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Balanced.Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"dae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DTreeMap/Internal/Balanced.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.AC
public import Std.Data.DTreeMap.Internal.Def
import Init.Omega
import Init.RCases


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Balanced.Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711

@[expose] public section

/-!
# `Balanced` predicate

This file defines what it means for a tree map to be balanced. This definition is encoded in the
`Balanced` predicate.
-/

set_option autoImplicit false
set_option linter.all true

universe u v w

variable {α : Type u} {β : α → Type v}

namespace Std.DTreeMap.Internal.Impl

/--
Predicate for local balance at a node of the tree. We don't provide API for this, preferring
instead to use automation to dispatch goals about balance.
-/
@[Std.Internal.tree_tac]
def BalancedAtRoot (left right : Nat) : Prop :=
  left + right ≤ 1 ∨ (left ≤ delta * right ∧ right ≤ delta * left)

/--
Predicate that states that the stored size information in a tree is correct and that it is
balanced.
-/
inductive Balanced : Impl α β → Prop where
  /-- Leaf is balanced. -/
  | leaf : Balanced leaf
  /--
  Inner node is balanced if it is locally balanced, both children are balanced and size
  information is correct.
  -/
  | inner {sz k v l r} : Balanced l → Balanced r →
      BalancedAtRoot l.size r.size → sz = l.size + 1 + r.size → Balanced (inner sz k v l r)

attribute [Std.Internal.tree_tac] Balanced.leaf

@[Std.Internal.tree_tac]
theorem balanced_inner_iff {sz k v l r} : Balanced (Impl.inner sz k v l r : Impl α β) ↔
    Balanced l ∧ Balanced r ∧ BalancedAtRoot l.size r.size ∧ sz = l.size + 1 + r.size :=
  ⟨by rintro (_|⟨h₁, h₂, h₃, h₄⟩); exact ⟨h₁, h₂, h₃, h₄⟩,
   fun ⟨h₁, h₂, h₃, h₄⟩ => .inner h₁ h₂ h₃ h₄⟩

@[simp]
theorem balancedAtRoot_zero_zero : BalancedAtRoot 0 0 := by
  simp only [BalancedAtRoot]; omega

@[simp]
theorem balancedAtRoot_zero_one : BalancedAtRoot 0 1 := by
  simp only [BalancedAtRoot]; omega

@[simp]
theorem balancedAtRoot_one_zero : BalancedAtRoot 1 0 := by
  simp only [BalancedAtRoot]; omega

@[simp]
theorem balancedAtRoot_one_one : BalancedAtRoot 1 1 := by
  simp only [BalancedAtRoot, delta]; omega

@[simp]
theorem balancedAtRoot_two_one : BalancedAtRoot 2 1 := by
  simp only [BalancedAtRoot, delta]; omega

@[simp]
theorem balancedAtRoot_one_two : BalancedAtRoot 1 2 := by
  simp only [BalancedAtRoot, delta]; omega

theorem balanced_one_leaf_leaf {k : α} {v : β k} : (inner 1 k v leaf leaf).Balanced :=
  balanced_inner_iff.2 ⟨.leaf, .leaf, by simp [size_leaf], by simp [size_leaf]⟩

theorem balancedAtRoot_zero_iff {n : Nat} : BalancedAtRoot 0 n ↔ n ≤ 1 := by
  simp only [BalancedAtRoot]; omega

theorem balancedAtRoot_zero_iff' {n : Nat} : BalancedAtRoot n 0 ↔ n ≤ 1 := by
  simp only [BalancedAtRoot]; omega

theorem Balanced.one_le {sz k v l r} (h : (Impl.inner sz k v l r : Impl α β).Balanced) : 1 ≤ sz := by
  cases h; omega

theorem Balanced.eq {sz k v l r} : (Impl.inner sz k v l r : Impl α β).Balanced → sz = l.size + 1 + r.size
  | .inner _ _ _ h => h

theorem Balanced.left {sz k v l r} : (Impl.inner sz k v l r : Impl α β).Balanced → l.Balanced
  | .inner h _ _ _ => h

theorem Balanced.right {sz k v l r} : (Impl.inner sz k v l r : Impl α β).Balanced → r.Balanced
  | .inner _ h _ _ => h

theorem Balanced.at_root {sz k v l r} : (Impl.inner sz k v l r : Impl α β).Balanced →
    BalancedAtRoot l.size r.size
  | .inner _ _ h _ => h

theorem BalancedAtRoot.symm {l r : Nat} (h : BalancedAtRoot l r) : BalancedAtRoot r l := by
  cases h
  next h => exact Or.inl <| Nat.add_comm _ _ ▸ h
  next h => exact Or.inr h.symm

end Std.DTreeMap.Internal.Impl
