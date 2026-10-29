-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant6a9c93660a0824e6f96ba92fa05dd663bb2d278f0135c56caf5245c79a3686b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a9c93660a0824e6f96ba92fa05dd663bb2d278f0135c56caf5245c79a3686b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.T.Variant6a9c93660a0824e6f96ba92fa05dd663bb2d278f0135c56caf5245c79a3686b4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6a9c93660a0824e6f96ba92fa05dd663bb2d278f0135c56caf5245c79a3686b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/NoProgress.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant6a9c93660a0824e6f96ba92fa05dd663bb2d278f0135c56caf5245c79a3686b4

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def T := True

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : T := by
  aesop

@[aesop norm simp]
def F := False

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : F := by
  aesop

def F' := False

@[aesop safe apply]
theorem F'_def : False → F' := id

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : F' := by
  aesop

attribute [-aesop] F'_def
attribute [aesop 100%] F'_def

-- When an unsafe rule is applied, we don't count this as progress because the
-- remaining goal that the user gets to see is exactly the same as the initial
-- goal.

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : F' := by
  aesop
