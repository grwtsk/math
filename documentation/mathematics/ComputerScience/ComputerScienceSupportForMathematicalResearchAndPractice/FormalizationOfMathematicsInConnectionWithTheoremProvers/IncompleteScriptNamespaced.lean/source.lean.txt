-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variant5c1202ddf14898a94bd5c7363092eff59801f3441d244bcc3f688cf47536e133","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c1202ddf14898a94bd5c7363092eff59801f3441d244bcc3f688cf47536e133","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Even.Variant5c1202ddf14898a94bd5c7363092eff59801f3441d244bcc3f688cf47536e133","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5c1202ddf14898a94bd5c7363092eff59801f3441d244bcc3f688cf47536e133","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/IncompleteScript.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variant5c1202ddf14898a94bd5c7363092eff59801f3441d244bcc3f688cf47536e133

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- set_option aesop.check.script.steps false

/--
info: Try this:

  [apply]     intro a
    simp_all only [Nat.add_zero]
    sorry
---
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
n : Nat
P : Nat → Prop
a : P n
⊢ P (n + 1)
-/
#guard_msgs in
example {P : Nat → Prop} : P (n + 0) → P (n + 1) := by
  aesop?

inductive Even : Nat → Prop where
  | zero : Even 0
  | add_two : Even n → Even (n + 2)

/--
info: Try this:

  [apply]   sorry
---
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : Even 5 := by
  aesop?

attribute [aesop safe constructors] Even

/--
info: Try this:

  [apply]     apply Even.add_two
    apply Even.add_two
    sorry
---
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
⊢ Even 1
-/
#guard_msgs in
example : Even 5 := by
  aesop?
