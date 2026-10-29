-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SelectInsertParamsClass.Varianteca4688aa5acd7028676baf4d53cc086139381cc5e8252447bcefd2156d4c53a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eca4688aa5acd7028676baf4d53cc086139381cc5e8252447bcefd2156d4c53a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SelectInsertParamsClass.Varianteca4688aa5acd7028676baf4d53cc086139381cc5e8252447bcefd2156d4c53a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eca4688aa5acd7028676baf4d53cc086139381cc5e8252447bcefd2156d4c53a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Widget/SelectInsertParamsClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
import Mathlib.Init
import Lean.Widget.InteractiveGoal
import Lean.Elab.Deriving.Basic

/-! # SelectInsertParamsClass

Defines the basic class of parameters for a select and insert widget.

This needs to be in a separate file in order to initialize the deriving handler.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SelectInsertParamsClass.Varianteca4688aa5acd7028676baf4d53cc086139381cc5e8252447bcefd2156d4c53a

open Lean Meta Server

/-- Structures providing parameters for a Select and insert widget. -/
class SelectInsertParamsClass (α : Type) where
  /-- Cursor position in the file at which the widget is being displayed. -/
  pos : α → Lsp.Position
  /-- The current tactic-mode goals. -/
  goals : α → Array Widget.InteractiveGoal
  /-- Locations currently selected in the goal state. -/
  selectedLocations : α → Array SubExpr.GoalsLocation
  /-- The range in the source document where the command will be inserted. -/
  replaceRange : α → Lsp.Range

namespace Lean.Elab
open Command Meta Parser Term

private def mkSelectInsertParamsInstance (declName : Name) : TermElabM Syntax.Command :=
  `(command|instance : SelectInsertParamsClass (@$(mkCIdent declName)) :=
    ⟨fun prop => prop.pos, fun prop => prop.goals,
     fun prop => prop.selectedLocations, fun prop => prop.replaceRange⟩)

/-- Handler deriving a `SelectInsertParamsClass` instance. -/
def mkSelectInsertParamsInstanceHandler (declNames : Array Name) : CommandElabM Bool := do
  if (← declNames.allM isInductive) then
    for declName in declNames do
      elabCommand (← liftTermElabM do mkSelectInsertParamsInstance declName)
    return true
  else
    return false

initialize registerDerivingHandler ``SelectInsertParamsClass mkSelectInsertParamsInstanceHandler
end Lean.Elab
