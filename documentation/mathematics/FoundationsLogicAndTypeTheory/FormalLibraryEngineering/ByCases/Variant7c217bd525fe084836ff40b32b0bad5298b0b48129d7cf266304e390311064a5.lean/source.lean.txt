-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteId.Variant3270f4bafaf99ca67f69b57972d0c3ef73e0ba46d359c8cd4645be254ac97965","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3270f4bafaf99ca67f69b57972d0c3ef73e0ba46d359c8cd4645be254ac97965","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IteId.Variant3270f4bafaf99ca67f69b57972d0c3ef73e0ba46d359c8cd4645be254ac97965","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3270f4bafaf99ca67f69b57972d0c3ef73e0ba46d359c8cd4645be254ac97965","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/ByCases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
module

prelude
public meta import Init.Grind.Tactics
public import Init.Grind.Tactics
import Init.SimpLemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteId.Variant3270f4bafaf99ca67f69b57972d0c3ef73e0ba46d359c8cd4645be254ac97965

public section

/-! # by_cases tactic and if-then-else support -/

/--
`by_cases (h :)? p` splits the main goal into two cases, assuming `h : p` in the first branch, and `h : ¬ p` in the second branch.
-/
syntax "by_cases " (atomic(ident " : "))? term : tactic

macro_rules
  | `(tactic| by_cases $e) => `(tactic| by_cases h : $e)
macro_rules
  | `(tactic| by_cases $h : $e) =>
    `(tactic| open Classical in refine if $h:ident : $e then ?pos else ?neg)

/-! ## if-then-else -/

@[simp] theorem if_true {_ : Decidable True} (t e : α) : ite True t e = t := if_pos trivial

@[simp] theorem if_false {_ : Decidable False} (t e : α) : ite False t e = e := if_neg id

theorem ite_id [Decidable c] {α} (t : α) : (if c then t else t) = t := by split <;> rfl

/-- A function applied to a `dite` is a `dite` of that function applied to each of the branches. -/
theorem apply_dite (f : α → β) (P : Prop) [Decidable P] (x : P → α) (y : ¬P → α) :
    f (dite P x y) = dite P (fun h => f (x h)) (fun h => f (y h)) := by
  by_cases h : P <;> simp [h]

/-- A function applied to a `ite` is a `ite` of that function applied to each of the branches. -/
theorem apply_ite (f : α → β) (P : Prop) [Decidable P] (x y : α) :
    f (ite P x y) = ite P (f x) (f y) :=
  apply_dite f P (fun _ => x) (fun _ => y)

/-- A `dite` whose results do not actually depend on the condition may be reduced to an `ite`. -/
@[simp] theorem dite_eq_ite [Decidable P] :
  (dite P (fun _ => a) (fun _ => b)) = ite P a b := rfl

-- Remark: dite and ite are "defally equal" when we ignore the proofs.
@[deprecated dite_eq_ite (since := "2025-10-29")]
theorem dif_eq_if (c : Prop) {h : Decidable c} {α : Sort u} (t : α) (e : α) : dite c (fun _ => t) (fun _ => e) = ite c t e :=
  match h with
  | isTrue _    => rfl
  | isFalse _   => rfl
