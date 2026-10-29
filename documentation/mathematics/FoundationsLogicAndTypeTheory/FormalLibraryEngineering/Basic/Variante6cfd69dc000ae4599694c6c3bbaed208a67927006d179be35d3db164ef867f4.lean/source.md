# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variante6cfd69dc000ae4599694c6c3bbaed208a67927006d179be35d3db164ef867f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c92368428dc3810ce7decbd61ca90fffbd972c8c` · SHA-256 `e6cfd69dc000ae4599694c6c3bbaed208a67927006d179be35d3db164ef867f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
module

public import ProofWidgets.Component.Basic
public meta import Lean.Elab.Tactic.BuiltinTactic
public import Lean.Widget.Commands

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
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f27162d5e3633f4ccf993a2ace26f45cdc636bd0c6f07846f4a36a311838643f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante6cfd69dc000ae4599694c6c3bbaed208a67927006d179be35d3db164ef867f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
