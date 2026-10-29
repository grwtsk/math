-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IterMEquivToListRevEq.Variant4e88a14f8d7cc6655b9385dc8706620e8eaa9fdcfa7616e12bd678f908f3b658","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e88a14f8d7cc6655b9385dc8706620e8eaa9fdcfa7616e12bd678f908f3b658","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IterMEquivToListRevEq.Variant4e88a14f8d7cc6655b9385dc8706620e8eaa9fdcfa7616e12bd678f908f3b658","mathematical_subject":"Logic.Foundations","original_sha256":"4e88a14f8d7cc6655b9385dc8706620e8eaa9fdcfa7616e12bd678f908f3b658","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Consumers/Monadic/Collect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect
public import Std.Data.Iterators.Lemmas.Equivalence.StepCongr
import Init.Data.Iterators.Lemmas.Monadic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IterMEquivToListRevEq.Variant4e88a14f8d7cc6655b9385dc8706620e8eaa9fdcfa7616e12bd678f908f3b658

@[expose] public section

namespace Std
open Std.Iterators

theorem IterM.Equiv.toListRev_eq [Monad m] [LawfulMonad m]
    [Iterator α₁ m β] [Iterator α₂ m β] [Finite α₁ m] [Finite α₂ m]
    {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β} (h : IterM.Equiv ita itb) :
    ita.toListRev = itb.toListRev := by
  induction ita using IterM.inductSteps generalizing itb with | step ita ihy ihs
  rw [IterM.toListRev_eq_match_step, IterM.toListRev_eq_match_step]
  apply h.lift_step_bind_congr
  intro s₁ s₂ h
  simp only [IterStep.bundledQuotient] at h
  cases h₁ : s₁.inflate using PlausibleIterStep.casesOn <;>
    cases h₂ : s₂.inflate using PlausibleIterStep.casesOn
  all_goals try exfalso; simp_all; done
  · simp only [h₁, h₂, IterStep.mapIterator_yield, Function.comp_apply, IterStep.yield.injEq] at h
    simp_all only [bind_pure_comp, List.append_cancel_right_eq, implies_true,
      map_inj_right_of_nonempty]
    apply ihy ‹_›
    exact BundledIterM.Equiv.exact _ _ h.1
  · simp only [h₁, h₂, IterStep.mapIterator_skip, Function.comp_apply, IterStep.skip.injEq] at ⊢ h
    apply ihs ‹_›
    exact BundledIterM.Equiv.exact _ _ h
  · simp

theorem IterM.Equiv.toList_eq {α₁ α₂ : Type w} {m : Type w → Type w'} [Monad m] [LawfulMonad m]
    [Iterator α₁ m β] [Iterator α₂ m β] [Finite α₁ m] [Finite α₂ m]
    {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β} (h : IterM.Equiv ita itb) :
    ita.toList = itb.toList := by
  simp only [← IterM.reverse_toListRev, toListRev_eq h]

theorem IterM.Equiv.toArray_eq [Monad m] [LawfulMonad m]
    [Iterator α₁ m β] [Iterator α₂ m β] [Finite α₁ m] [Finite α₂ m]
    {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β} (h : IterM.Equiv ita itb) :
    ita.toArray = itb.toArray := by
  simp only [← IterM.toArray_toList, toList_eq h]

end Std
