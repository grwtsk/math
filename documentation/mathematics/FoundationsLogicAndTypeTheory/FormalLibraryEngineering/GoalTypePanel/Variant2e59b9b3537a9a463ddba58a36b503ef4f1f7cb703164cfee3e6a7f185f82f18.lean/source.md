# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalTypePanel.Variant2e59b9b3537a9a463ddba58a36b503ef4f1f7cb703164cfee3e6a7f185f82f18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65ab81804f7a1cf1521ab40dd3ebc323f351cd40` · SHA-256 `2e59b9b3537a9a463ddba58a36b503ef4f1f7cb703164cfee3e6a7f185f82f18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import ProofWidgets.Component.Panel.Basic

public meta section

namespace ProofWidgets

/-- Display the goal type using known `Expr` presenters. -/
@[widget_module]
def GoalTypePanel : Component PanelWidgetProps where
  javascript := include_str ".." / ".." / ".." / "widget" / "js" / "goalTypePanel.js"

end ProofWidgets
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6556ce559bdf5216199b24421a8ae9fc40585d22a83230899bf67f0834944a4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalTypePanel/Variant2e59b9b3537a9a463ddba58a36b503ef4f1f7cb703164cfee3e6a7f185f82f18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
