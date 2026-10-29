-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllCons.Variant392c659de980da9f9664d632752fe83d05c9a0d52b1abbe1f9e2e80428f92e40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"392c659de980da9f9664d632752fe83d05c9a0d52b1abbe1f9e2e80428f92e40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AllCons.Variant392c659de980da9f9664d632752fe83d05c9a0d52b1abbe1f9e2e80428f92e40","mathematical_subject":"Computation.DataStructures","original_sha256":"392c659de980da9f9664d632752fe83d05c9a0d52b1abbe1f9e2e80428f92e40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/26.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/

import Aesop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllCons.Variant392c659de980da9f9664d632752fe83d05c9a0d52b1abbe1f9e2e80428f92e40

set_option aesop.check.all true

attribute [-simp] List.all_cons List.all_nil List.all_eq_true

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
case left
α : Type u_1
P : α → Bool
x : α
xs : List α
h : (x :: xs).all P = true
⊢ P x = true

case right
α : Type u_1
P : α → Bool
x : α
xs : List α
h : (x :: xs).all P = true
⊢ xs.all P = true
-/
#guard_msgs in
theorem all_cons (P : α → Bool) (x : α) (xs : List α) (h : (x :: xs).all P)
  : P x ∧ xs.all P := by
  aesop
