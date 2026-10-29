-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemSections.Variant5c88af95a3eabef5151d12d1732e22b88df74007467fcfdfbd956c2115a10927","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c88af95a3eabef5151d12d1732e22b88df74007467fcfdfbd956c2115a10927","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MemSections.Variant5c88af95a3eabef5151d12d1732e22b88df74007467fcfdfbd956c2115a10927","mathematical_subject":"Computation.DataStructures","original_sha256":"5c88af95a3eabef5151d12d1732e22b88df74007467fcfdfbd956c2115a10927","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/Sections.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.List.Forall2
/-!
# List sections

This file proves some stuff about `List.sections` (definition in `Data.List.Defs`). A section of a
list of lists `[l₁, ..., lₙ]` is a list whose `i`-th element comes from the `i`-th list.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemSections.Variant5c88af95a3eabef5151d12d1732e22b88df74007467fcfdfbd956c2115a10927

public section


open Nat

namespace List

variable {α β : Type*}

theorem mem_sections {L : List (List α)} {f} : f ∈ sections L ↔ Forall₂ (· ∈ ·) f L := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · induction L generalizing f
    · cases mem_singleton.1 h
      exact Forall₂.nil
    simp only [sections, mem_flatMap, mem_map] at h
    rcases h with ⟨_, _, _, _, rfl⟩
    simp only [*, forall₂_cons, true_and]
  · induction h with
    | nil => simp only [sections, mem_singleton]
    | @cons a l f L al fL fs =>
      simp only [sections, mem_flatMap, mem_map]
      exact ⟨f, fs, a, al, rfl⟩

theorem mem_sections_length {L : List (List α)} {f} (h : f ∈ sections L) : length f = length L :=
  (mem_sections.1 h).length_eq

open scoped Relator in
theorem rel_sections {r : α → β → Prop} :
    (Forall₂ (Forall₂ r) ⇒ Forall₂ (Forall₂ r)) sections sections
  | _, _, Forall₂.nil => Forall₂.cons Forall₂.nil Forall₂.nil
  | _, _, Forall₂.cons h₀ h₁ =>
    rel_flatMap (rel_sections h₁) fun _ _ hl => rel_map (fun _ _ ha => Forall₂.cons ha hl) h₀

end List
