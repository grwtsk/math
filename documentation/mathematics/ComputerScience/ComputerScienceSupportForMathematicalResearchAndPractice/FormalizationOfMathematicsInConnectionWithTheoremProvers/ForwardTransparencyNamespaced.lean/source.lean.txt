-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant256dcf3d0fbbdbb5c107598dfefff7490bcdebd7279fd9962ffe435a32c238ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"256dcf3d0fbbdbb5c107598dfefff7490bcdebd7279fd9962ffe435a32c238ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.T.Variant256dcf3d0fbbdbb5c107598dfefff7490bcdebd7279fd9962ffe435a32c238ca","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"256dcf3d0fbbdbb5c107598dfefff7490bcdebd7279fd9962ffe435a32c238ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/ForwardTransparency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant256dcf3d0fbbdbb5c107598dfefff7490bcdebd7279fd9962ffe435a32c238ca

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- Forward rules always operate at reducible transparency.

def T := Unit → Empty

variable {α : Type}

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) (u : Unit) : α := by
  aesop (config := { terminal := true })

def U := Unit

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) (u : U) : α := by
  aesop (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) (u : U) : α := by
  aesop (add forward safe h) (config := { terminal := true })

abbrev V := Unit

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : Unit → Empty) (u : V) : α := by
  aesop (config := { terminal := true })

example (h : Unit → Empty) (u : V) : α := by
  aesop (add forward safe h)
