-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThis.Variant4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TryThis.Variant4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/TryThis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Init
import Lean.Meta.Tactic.TryThis

/-!
# 'Try this' tactic macro

This is a convenient shorthand intended for macro authors to be able to generate "Try this"
recommendations. (It is not the main implementation of 'Try this',
which is implemented in Lean core, see `Lean.Meta.Tactic.TryThis`.)
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThis.Variant4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a

namespace Mathlib.Tactic
open Lean

/-- Produces the text `Try this: <tac>` with the given tactic, and then executes it. -/
elab tk:"try_this" tac:tactic info:(str)? : tactic => do
  Elab.Tactic.evalTactic tac
  Meta.Tactic.TryThis.addSuggestion tk
    { suggestion := tac, postInfo? := TSyntax.getString <$> info }
    (origSpan? := ← getRef)

/-- Produces the text `Try this: <tac>` with the given conv tactic, and then executes it. -/
elab tk:"try_this" tac:conv info:(str)? : conv => do
  Elab.Tactic.evalTactic tac
  Meta.Tactic.TryThis.addSuggestion tk
    { suggestion := tac, postInfo? := TSyntax.getString <$> info }
    (origSpan? := ← getRef)

end Mathlib.Tactic
