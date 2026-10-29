-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetMainTargetPrimePrime.Variant6eca920dbffa06ba84c7d015909b07e717733a813761ee3b8d9949ebf597c92e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6eca920dbffa06ba84c7d015909b07e717733a813761ee3b8d9949ebf597c92e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetMainTargetPrimePrime.Variant6eca920dbffa06ba84c7d015909b07e717733a813761ee3b8d9949ebf597c92e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6eca920dbffa06ba84c7d015909b07e717733a813761ee3b8d9949ebf597c92e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Lean/Elab/Tactic/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Jon Eugster
-/
module

public import Mathlib.Lean.Meta
/-!
# Additions to `Lean.Elab.Tactic.Basic`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetMainTargetPrimePrime.Variant6eca920dbffa06ba84c7d015909b07e717733a813761ee3b8d9949ebf597c92e

@[expose] public section

open Lean Elab Tactic

namespace Lean.Elab.Tactic

/-- Return expected type for the main goal, cleaning up annotations, using `Lean.MVarId.getType''`.
Remark: note that `MVarId.getType'` uses `whnf` instead of `cleanupAnnotations`, and
`MVarId.getType''` also uses `cleanupAnnotations` -/
def getMainTarget'' : TacticM Expr := do
  (← getMainGoal).getType''

/-- Runs `x`, and if `x` throws an exception, rewinds the tactic state *except* for the `InfoState`
and `Messages`. This means that hovers and error messages created within `x` are preserved.

Note: `x` is run under `withSaveInfoContext` in order to propagate hovers and messages correctly.
This means that pre-existing infotrees are not accessible from within `x`. -/
def commitIfNoExPreservingInfoAndMessages {α} (x : TacticM α) : TacticM α := do
  let saved ← saveState
  Tactic.tryCatch (withSaveInfoContext x) fun ex => do
    let saved := { saved with
      term.meta.core.infoState := ← getInfoState
      term.meta.core.messages := (← getThe Core.State).messages }
    restoreState saved
    throw ex

end Lean.Elab.Tactic
