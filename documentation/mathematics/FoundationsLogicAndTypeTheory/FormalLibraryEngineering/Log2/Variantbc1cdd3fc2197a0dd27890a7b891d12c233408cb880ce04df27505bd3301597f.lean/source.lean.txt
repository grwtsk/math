-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Log2Terminates.Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"afef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Log2Terminates.Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"afef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Nat/Log2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Robin Arnez
-/
module

prelude
public import Init.Grind.Tactics
import Init.Data.Nat.Div.Basic
import Init.NotationExtra
import Init.WFTactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Log2Terminates.Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b

public section

namespace Nat

theorem log2_terminates : ∀ n, n ≥ 2 → n / 2 < n
  | 2, _ => by decide
  | 3, _ => by decide
  | n+4, _ => by
    rw [div_eq, if_pos]
    refine succ_lt_succ (Nat.lt_trans ?_ (lt_succ_self _))
    exact log2_terminates (n+2) (by simp)
    simp

/--
Base-two logarithm of natural numbers. Returns `⌊max 0 (log₂ n)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `Nat.log2 0 = 0`
 * `Nat.log2 1 = 0`
 * `Nat.log2 2 = 1`
 * `Nat.log2 4 = 2`
 * `Nat.log2 7 = 2`
 * `Nat.log2 8 = 3`
-/
@[expose, extern "lean_nat_log2"]
def log2 (n : @& Nat) : Nat :=
  -- Lean "assembly"
  n.rec (fun _ => nat_lit 0) (fun _ ih n =>
    ((nat_lit 2).ble n).rec (nat_lit 0) ((ih (n.div (nat_lit 2))).succ)) n

private theorem log2_rec_irrel {n k k' : Nat} (hk : n ≤ k) (hk' : n ≤ k') :
    (k.rec (fun _ => 0) (fun _ ih n => ((2).ble n).rec 0 ((ih (n / 2)).succ)) n : Nat) =
      k'.rec (fun _ => 0) (fun _ ih n => ((2).ble n).rec 0 ((ih (n / 2)).succ)) n := by
  induction k generalizing n k' with
  | zero => cases hk; cases k' <;> rfl
  | succ k ih =>
    cases k'
    · cases hk'; rfl
    · dsimp only
      cases h : ble 2 n
      · rfl
      · have hn : n / 2 < n := log2_terminates n (Nat.le_of_ble_eq_true h)
        exact congrArg Nat.succ (ih (Nat.le_of_lt_add_one (Nat.lt_of_lt_of_le hn hk))
          (Nat.le_of_lt_add_one (Nat.lt_of_lt_of_le hn hk')))

theorem log2_def (n : Nat) : n.log2 = if 2 ≤ n then (n / 2).log2 + 1 else 0 := by
  rw [Nat.log2, Nat.log2]
  cases n
  · rfl
  split
  · rename_i n h
    simp only [ble_eq_true_of_le h]
    exact congrArg Nat.succ
      (log2_rec_irrel (Nat.le_of_lt_add_one (log2_terminates _ h)) (Nat.le_refl _))
  · simp only [mt le_of_ble_eq_true ‹_›]

theorem log2_le_self (n : Nat) : Nat.log2 n ≤ n := by
  rw [log2_def]; split
  next h =>
    have := log2_le_self (n / 2)
    exact Nat.lt_of_le_of_lt this (Nat.div_lt_self (Nat.le_of_lt h) (by decide))
  · apply Nat.zero_le
decreasing_by exact Nat.log2_terminates _ ‹_›
