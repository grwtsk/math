-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant3e664ff6c3c8105a2fbc299dd80b33b9329473562f26f63a942e0be619dd6815","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e664ff6c3c8105a2fbc299dd80b33b9329473562f26f63a942e0be619dd6815","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant3e664ff6c3c8105a2fbc299dd80b33b9329473562f26f63a942e0be619dd6815","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3e664ff6c3c8105a2fbc299dd80b33b9329473562f26f63a942e0be619dd6815","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/SimpLetHypotheses.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant3e664ff6c3c8105a2fbc299dd80b33b9329473562f26f63a942e0be619dd6815

set_option aesop.check.all true

-- Aesop `simp` substitutes `let` hypotheses even when `zetaDelta` is disabled
-- (which is the default).

/--
error: unsolved goals
P : Nat → Type
h : P 0
x : Nat := 0
⊢ P 0
-/
#guard_msgs in
example (P : Nat → Type) (h : P 0) : let x := 0; P x := by
  intro x
  aesop (rule_sets := [-builtin,-default])
    (config := { warnOnNonterminal := false })

/--
error: unsolved goals
P : Nat → Type
h : P 0
x : Nat := 0
⊢ P 0
-/
#guard_msgs in
example (P : Nat → Type) (h : P 0) : let x := 0; P x := by
  intro x
  aesop (rule_sets := [-builtin,-default])
    (config := { useSimpAll := false, warnOnNonterminal := false })
