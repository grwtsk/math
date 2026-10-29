-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UScript.Variantfc59c178a83442d842c44923ecaa7c358385b7ee92ece83971ee4153ff492610","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc59c178a83442d842c44923ecaa7c358385b7ee92ece83971ee4153ff492610","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UScript.Variantfc59c178a83442d842c44923ecaa7c358385b7ee92ece83971ee4153ff492610","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fc59c178a83442d842c44923ecaa7c358385b7ee92ece83971ee4153ff492610","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/UScript.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","lake_or_runtime_control","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Script.Step
import Batteries.Lean.Meta.SavedState


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UScript.Variantfc59c178a83442d842c44923ecaa7c358385b7ee92ece83971ee4153ff492610

public section

open Lean Lean.Meta
open Lean.Parser.Tactic (tacticSeq)

namespace Aesop.Script

abbrev UScript := Array Step

namespace UScript

variable [Monad m] [MonadError m] [MonadQuotation m] in
def render (tacticState : TacticState) (s : UScript) :
    m (Array Syntax.Tactic) := do
  let mut script := Array.mkEmpty s.size
  let mut tacticState := tacticState
  for step in s do
    let (script', tacticState') ← step.render script tacticState
    script := script'
    tacticState := tacticState'
  return script

def renderTacticSeq (uscript : UScript) (preState : Meta.SavedState)
    (goal : MVarId) : MetaM (TSyntax ``tacticSeq) := do
  let tacticState ← preState.runMetaM' $ Script.TacticState.mkInitial goal
  `(tacticSeq| $(← uscript.render tacticState):tactic*)

def validate (s : UScript) : MetaM Unit :=
  s.forM (·.validate)

end Aesop.Script.UScript
