-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LtOrEqOfLe.Variantdad8c93067d59e2cbfbc38079f3c3a2468d32156dde521527ce6737c87dae208","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dad8c93067d59e2cbfbc38079f3c3a2468d32156dde521527ce6737c87dae208","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LtOrEqOfLe.Variantdad8c93067d59e2cbfbc38079f3c3a2468d32156dde521527ce6737c87dae208","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"dad8c93067d59e2cbfbc38079f3c3a2468d32156dde521527ce6737c87dae208","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Int/Compare.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro, Paul Reichert
-/
module

prelude
public import Init.Data.Ord.Basic
public import Init.Data.Order.ClassesExtra
import all Init.Data.Ord.Basic
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LtOrEqOfLe.Variantdad8c93067d59e2cbfbc38079f3c3a2468d32156dde521527ce6737c87dae208

public section

/-! # Basic lemmas about comparing integers

This file introduces some basic lemmas about `compare` as applied to integers.

Import `Std.Classes.Ord` in order to obtain the `TransOrd` and `LawfulEqOrd` instances for `Int`.
-/
namespace Int

protected theorem lt_or_eq_of_le {n m : Int} (h : n ≤ m) : n < m ∨ n = m := by
  omega

theorem compare_eq_ite_lt (a b : Int) :
    compare a b = if a < b then .lt else if b < a then .gt else .eq := by
  simp only [compare, compareOfLessAndEq]
  split
  · rfl
  next h =>
    match Int.lt_or_eq_of_le (Int.not_lt.1 h) with
    | .inl h => simp [h, Int.ne_of_gt h]
    | .inr rfl => simp

theorem compare_eq_ite_le (a b : Int) :
    compare a b = if a ≤ b then if b ≤ a then .eq else .lt else .gt := by
  rw [compare_eq_ite_lt]
  split
  next hlt => simp [Int.le_of_lt hlt, Int.not_le.2 hlt]
  next hge =>
    split
    next hgt => simp [Int.not_le.2 hgt]
    next hle => simp [Int.not_lt.1 hge, Int.not_lt.1 hle]

protected theorem compare_swap (a b : Int) : (compare a b).swap = compare b a := by
  simp only [compare_eq_ite_le]; (repeat' split) <;> try rfl
  next h1 h2 => cases h1 (Int.le_of_not_le h2)

protected theorem compare_eq_eq {a b : Int} : compare a b = .eq ↔ a = b := by
  rw [compare_eq_ite_lt]; (repeat' split) <;> simp [Int.ne_of_lt, Int.ne_of_gt, *]
  next hlt hgt => exact Int.le_antisymm (Int.not_lt.1 hgt) (Int.not_lt.1 hlt)

protected theorem compare_eq_lt {a b : Int} : compare a b = .lt ↔ a < b := by
  rw [compare_eq_ite_lt]; (repeat' split) <;> simp [*]

protected theorem compare_eq_gt {a b : Int} : compare a b = .gt ↔ b < a := by
  rw [compare_eq_ite_lt]; (repeat' split) <;> simp [Int.le_of_lt, *]

protected theorem compare_ne_gt {a b : Int} : compare a b ≠ .gt ↔ a ≤ b := by
  rw [compare_eq_ite_le]; (repeat' split) <;> simp [*]

protected theorem compare_ne_lt {a b : Int} : compare a b ≠ .lt ↔ b ≤ a := by
  rw [compare_eq_ite_le]; (repeat' split) <;> simp [Int.le_of_not_le, *]

protected theorem isLE_compare {a b : Int} :
    (compare a b).isLE ↔ a ≤ b := by
  simp only [Int.compare_eq_ite_le]
  repeat' split <;> simp_all

protected theorem isGE_compare {a b : Int} :
    (compare a b).isGE ↔ b ≤ a := by
  rw [← Int.compare_swap, Ordering.isGE_swap]
  exact Int.isLE_compare

instance : Std.LawfulOrderOrd Int where
  isLE_compare _ _ := Int.isLE_compare
  isGE_compare _ _ := Int.isGE_compare

end Int
