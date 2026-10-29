-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterDropWhileEqIntermediateDropWhile.Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterDropWhileEqIntermediateDropWhile.Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Combinators/DropWhile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.DropWhile
public import Std.Data.Iterators.Lemmas.Combinators.Monadic.DropWhile
public import Init.Data.Iterators.Lemmas.Consumers
import Init.Data.Bool
import Init.Data.Iterators.Lemmas.Basic
import Init.Data.List.TakeDrop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterDropWhileEqIntermediateDropWhile.Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697

@[expose] public section

namespace Std
open Std.Iterators

theorem Iter.dropWhile_eq_intermediateDropWhile {α β} [Iterator α Id β] {P}
    {it : Iter (α := α) β} :
    it.dropWhile P = Intermediate.dropWhile P true it :=
  rfl

theorem Iter.Intermediate.dropWhile_eq_dropWhile_toIterM {α β} [Iterator α Id β] {P}
    {it : Iter (α := α) β} {dropping} :
    Intermediate.dropWhile P dropping it =
      (IterM.Intermediate.dropWhile P dropping it.toIterM).toIter :=
  rfl

theorem Iter.dropWhile_eq_dropWhile_toIterM {α β} [Iterator α Id β] {P}
    {it : Iter (α := α) β} :
    it.dropWhile P = (it.toIterM.dropWhile P).toIter :=
  rfl

theorem Iter.step_intermediateDropWhile {α β} [Iterator α Id β]
    {it : Iter (α := α) β} {P} {dropping} :
    (Iter.Intermediate.dropWhile P dropping it).step = (match it.step with
      | .yield it' out h =>
        if h' : dropping = true then
          match hP : P out with
          | true =>
            .skip (Intermediate.dropWhile P true it') (.dropped h h' (by simpa))
          | false =>
            .yield (Intermediate.dropWhile P false it') out (.start h h' (by simpa))
        else
          .yield (Intermediate.dropWhile P false it') out
              (.yield h (Bool.not_eq_true _ ▸ h'))
      | .skip it' h =>
        .skip (Intermediate.dropWhile P dropping it') (.skip h)
      | .done h =>
        .done (.done h)) := by
  simp [Intermediate.dropWhile_eq_dropWhile_toIterM, Iter.step, IterM.step_intermediateDropWhile]
  cases it.toIterM.step.run.inflate using PlausibleIterStep.casesOn
  · simp only [IterM.Step.toPure_yield, PlausibleIterStep.yield, toIter_toIterM, toIterM_toIter]
    split
    · split
      · split
        · simp
        · exfalso; simp_all
      · split
        · exfalso; simp_all
        · simp
    · simp
  · simp
  · simp

theorem Iter.val_step_intermediateDropWhile {α β} [Iterator α Id β]
    {it : Iter (α := α) β} {P} {dropping} :
    (Iter.Intermediate.dropWhile P dropping it).step.val = (match it.step.val with
      | .yield it' out =>
        if dropping = true then
          match P out with
          | true => .skip (Intermediate.dropWhile P true it')
          | false => .yield (Intermediate.dropWhile P false it') out
        else
          .yield (Intermediate.dropWhile P false it') out
      | .skip it' => .skip (Intermediate.dropWhile P dropping it')
      | .done => .done) := by
  rw [step_intermediateDropWhile]
  cases it.step using PlausibleIterStep.casesOn
  · cases dropping
    · simp
    · simp only [↓reduceDIte, ↓reduceIte]
      split <;> simp_all
  · simp
  · simp

theorem Iter.step_dropWhile {α β} [Iterator α Id β] {P}
    {it : Iter (α := α) β} :
    (it.dropWhile P).step = (match it.step with
    | .yield it' out h =>
        match hP : P out with
        | true =>
          .skip (Intermediate.dropWhile P true it') (.dropped h rfl (by simpa))
        | false =>
          .yield (Intermediate.dropWhile P false it') out (.start h rfl (by simpa))
    | .skip it' h =>
      .skip (Intermediate.dropWhile P true it') (.skip h)
    | .done h =>
      .done (.done h)) := by
  simp [dropWhile_eq_intermediateDropWhile, step_intermediateDropWhile]

theorem Iter.val_step_dropWhile {α β} [Iterator α Id β] {P}
    {it : Iter (α := α) β} :
    (it.dropWhile P).step.val = (match it.step.val with
    | .yield it' out =>
        match P out with
        | true =>
          .skip (Intermediate.dropWhile P true it')
        | false =>
          .yield (Intermediate.dropWhile P false it') out
    | .skip it' => .skip (Intermediate.dropWhile P true it')
    | .done => .done) := by
  simp only [step_dropWhile]
  split <;> rename_i heq
  · simp only [heq]
    split <;> simp_all
  · simp [heq]
  · simp [heq]

theorem Iter.toList_intermediateDropWhile_of_finite {α β} [Iterator α Id β] {P dropping}
    [Finite α Id] {it : Iter (α := α) β} :
    (Intermediate.dropWhile P dropping it).toList =
      if dropping = true then it.toList.dropWhile P else it.toList := by
  induction it using Iter.inductSteps generalizing dropping with | step it ihy ihs
  rw [toList_eq_match_step, toList_eq_match_step, val_step_intermediateDropWhile]
  cases it.step using PlausibleIterStep.casesOn
  · rename_i hp
    simp [List.dropWhile_cons]
    cases dropping
    · simp [ihy hp]
    · cases P _ <;> simp [ihy hp]
  · rename_i hp
    simp [ihs hp]
  · simp

@[cbv_eval, simp]
theorem Iter.toList_dropWhile_of_finite {α β} [Iterator α Id β] {P}
    [Finite α Id]
    {it : Iter (α := α) β} :
    (it.dropWhile P).toList = it.toList.dropWhile P := by
  simp [dropWhile_eq_intermediateDropWhile, toList_intermediateDropWhile_of_finite]

@[cbv_eval, simp]
theorem Iter.toArray_dropWhile_of_finite {α β} [Iterator α Id β] {P}
    [Finite α Id]
    {it : Iter (α := α) β} :
    (it.dropWhile P).toArray = (it.toList.dropWhile P).toArray := by
  simp only [← toArray_toList, toList_dropWhile_of_finite]

@[simp]
theorem Iter.toListRev_dropWhile_of_finite {α β} [Iterator α Id β] {P}
    [Finite α Id]
    {it : Iter (α := α) β} :
    (it.dropWhile P).toListRev = (it.toList.dropWhile P).reverse := by
  rw [toListRev_eq, toList_dropWhile_of_finite]

end Std
