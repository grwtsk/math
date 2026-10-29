-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PanelWidgetProps.Variante6cfd69dc000ae4599694c6c3bbaed208a67927006d179be35d3db164ef867f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6cfd69dc000ae4599694c6c3bbaed208a67927006d179be35d3db164ef867f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PanelWidgetProps.Variante6cfd69dc000ae4599694c6c3bbaed208a67927006d179be35d3db164ef867f4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e6cfd69dc000ae4599694c6c3bbaed208a67927006d179be35d3db164ef867f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/Panel/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import ProofWidgets.Component.Basic
public meta import Lean.Elab.Tactic.BuiltinTactic
public import Lean.Widget.Commands


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PanelWidgetProps.Variante6cfd69dc000ae4599694c6c3bbaed208a67927006d179be35d3db164ef867f4

public meta section

namespace ProofWidgets
open Lean Elab Tactic

/-- In the infoview, an **info block** is a top-level collapsible block corresponding to a given
location in a Lean file (e.g. with the header `▼ Basic.lean:12:34`).

A **panel widget** is a component which can appear as a panel inside an info block in the infoview.
For example, a tactic state display.
The type `PanelWidgetProps` represents the props passed to a panel widget.
The TypeScript version is exported as `PanelWidgetProps` from `@leanprover/infoview`.

Note that to be a good citizen which doesn't mess up the infoview layout,
a panel widget should be a block element,
and should provide some way to collapse it,
for example by using `<details>` as the top-level tag. -/
structure PanelWidgetProps : Type where
  /-- Cursor position in the file at which the widget is being displayed. -/
  pos : Lsp.Position
  /-- The current tactic-mode goals. -/
  goals : Array Widget.InteractiveGoal
  /-- The current term-mode goal, if any. -/
  termGoal? : Option Widget.InteractiveTermGoal
  /-- Locations currently selected in the goal state. -/
  selectedLocations : Array SubExpr.GoalsLocation
  deriving Server.RpcEncodable

/-- Display the selected panel widgets in the nested tactic script. For example,
assuming we have written a `GeometryDisplay` component,
```lean
by with_panel_widgets [GeometryDisplay]
  simp
  rfl
```
will show the geometry display alongside the usual tactic state throughout the proof.
-/
syntax (name := withPanelWidgetsTacticStx)
  "with_panel_widgets" "[" Widget.widgetInstanceSpec,+ "]" tacticSeq : tactic

@[tactic withPanelWidgetsTacticStx]
def withPanelWidgets : Tactic
  | stx@`(tactic| with_panel_widgets [ $specs,* ] $seq) => do
    specs.getElems.forM fun specStx => do
      let spec ← Widget.elabWidgetInstanceSpec specStx
      let wi ← Widget.evalWidgetInstance spec
      Widget.savePanelWidgetInfo wi.javascriptHash wi.props stx
    evalTacticSeq seq
  | _ => throwUnsupportedSyntax

end ProofWidgets
