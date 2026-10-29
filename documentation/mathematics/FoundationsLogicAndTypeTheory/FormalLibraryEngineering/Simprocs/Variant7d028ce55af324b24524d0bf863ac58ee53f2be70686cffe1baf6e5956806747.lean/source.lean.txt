-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnfoldConst.Variant003bd13b00090db2f644ec4f9b9b4658eb0ff406cdc0b720501c932dd7884fc7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"003bd13b00090db2f644ec4f9b9b4658eb0ff406cdc0b720501c932dd7884fc7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UnfoldConst.Variant003bd13b00090db2f644ec4f9b9b4658eb0ff406cdc0b720501c932dd7884fc7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"003bd13b00090db2f644ec4f9b9b4658eb0ff406cdc0b720501c932dd7884fc7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Simprocs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnfoldConst.Variant003bd13b00090db2f644ec4f9b9b4658eb0ff406cdc0b720501c932dd7884fc7

open Lean Lean.Meta

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def unfoldConst («from» to : Name) : Simp.Simproc := λ e =>
  if e.isConstOf «from» then
    return .done { expr := .const to [] }
  else
    return .continue

@[irreducible] def T₁ := True

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : T₁ := by
  aesop

simproc unfoldT₁ (T₁) := unfoldConst ``T₁ ``True

example : T₁ := by
  aesop

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : T₁ := by
  aesop (config := { useDefaultSimpSet := false })

@[irreducible] def T₂ := True

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : T₂ := by
  aesop

simproc [aesop_builtin] unfoldT₂ (T₂) := unfoldConst ``T₂ ``True

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : T₂ := by
  aesop (rule_sets := [-builtin])

example : T₂ := by
  aesop
