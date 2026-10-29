-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyProd.Variant5587f46e11119cd487c5c56c8954c1016212cb73de46129a8411df0f42bbfca2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5587f46e11119cd487c5c56c8954c1016212cb73de46129a8411df0f42bbfca2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MyProd.Variant5587f46e11119cd487c5c56c8954c1016212cb73de46129a8411df0f42bbfca2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5587f46e11119cd487c5c56c8954c1016212cb73de46129a8411df0f42bbfca2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/ExtScript.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyProd.Variant5587f46e11119cd487c5c56c8954c1016212cb73de46129a8411df0f42bbfca2

set_option aesop.check.all true

@[ext]
structure MyProd (α β : Type _) where
  fst : α
  snd : β

variable {α β γ δ ι: Type}

/--
info: Try this:

  [apply]     ext : 1
    · sorry
    · sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example {p q : MyProd α β} : p = q := by
  aesop? (add safe Aesop.BuiltinRules.ext)
    (config := { warnOnNonterminal := false })
  all_goals sorry

/--
info: Try this:

  [apply]     ext : 1
    · sorry
    · ext : 1
      · sorry
      · sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example {p q : MyProd α (MyProd β γ)} : p = q := by
  aesop? (add safe Aesop.BuiltinRules.ext)
    (config := { warnOnNonterminal := false })
  all_goals sorry

/--
info: Try this:

  [apply]     ext : 1
    · ext x : 1
      sorry
    · sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example {p q : MyProd (α → β) γ} : p = q := by
  aesop? (add safe Aesop.BuiltinRules.ext)
    (config := { warnOnNonterminal := false })
  all_goals sorry

/--
info: Try this:

  [apply]     ext : 1
    · ext x : 1
      sorry
    · ext x x_1 : 2
      sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example {p q : (α → β) × (γ → δ → ι)} : p = q := by
  aesop? (add safe Aesop.BuiltinRules.ext)
    (erase Aesop.BuiltinRules.destructProducts)
    (config := { warnOnNonterminal := false })
  all_goals sorry

-- This test case checks script generation for ext calls which generate subgoals
-- with different numbers of new hypotheses.

axiom T : Type
axiom U : Type
axiom u : U
axiom v : U

@[ext (iff := false)]
axiom T_ext : ∀ x y : T, u = v → (∀ u v : U, u = v) → x = y

/--
info: Try this:

  [apply]     ext u v : 1
    · sorry
    · sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example (x y : T) : x = y := by
  aesop? (add safe Aesop.BuiltinRules.ext)
    (config := { warnOnNonterminal := false })
  all_goals sorry
