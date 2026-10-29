-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Len.Variant5daaafc34e92e9cdaf35446c2958461e515856ff8fae91a5f6c71d49f97aa0cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5daaafc34e92e9cdaf35446c2958461e515856ff8fae91a5f6c71d49f97aa0cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Len.Variant5daaafc34e92e9cdaf35446c2958461e515856ff8fae91a5f6c71d49f97aa0cd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5daaafc34e92e9cdaf35446c2958461e515856ff8fae91a5f6c71d49f97aa0cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/ForwardRedundantHypsWithMVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Son Ho, Jannis Limperg
-/

-- Regression test for a failure of the `forward` rule builder to realise that
-- it had already added certain hypotheses. The `saturate` loop below adds the
-- same hyp over and over again, only with different level mvars. Thanks to Son
-- Ho for providing this test case.

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Len.Variant5daaafc34e92e9cdaf35446c2958461e515856ff8fae91a5f6c71d49f97aa0cd

set_option aesop.check.all true

axiom len {α} (ls : List α) : Int

@[aesop safe forward (pattern := len ls)]
axiom len_pos {α} {ls : List α} : 0 ≤ len (ls : List α)

/--
error: unsolved goals
a : Type u_1
l : List a
fwd : 0 ≤ len l
⊢ 0 ≤ len l
-/
#guard_msgs in
example (l: List a): 0 ≤ len l := by
  saturate
