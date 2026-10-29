-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.P.Variantb334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.P.Variantb334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/SafeExtractionCopyIntroducedMVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.P.Variantb334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a

set_option aesop.check.all true

axiom P : Prop
axiom T : Prop
axiom Q : Nat → Prop
axiom R : Nat → Prop
axiom S : Nat → Prop

@[aesop safe]
axiom q_r_p : ∀ x, Q x → R x → P

@[aesop safe]
axiom s_q : ∀ x y, S y → Q x

@[aesop safe]
axiom s_r : ∀ x y, S y → R x

axiom s : S 0

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
case a.a
⊢ S ?a.y✝

case a.a
⊢ S ?a.y✝

case x
⊢ Nat

case a.a
⊢ S ?a.y✝

case a.a
⊢ S ?a.y✝

case x
⊢ Nat
---
error: (kernel) declaration has metavariables '_example'
-/
#guard_msgs in
example : P := by
  aesop
