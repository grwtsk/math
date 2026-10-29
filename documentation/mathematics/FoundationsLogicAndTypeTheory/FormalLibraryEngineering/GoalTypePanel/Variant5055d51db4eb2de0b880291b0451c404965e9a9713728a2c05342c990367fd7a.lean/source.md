# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalTypePanel.Variant5055d51db4eb2de0b880291b0451c404965e9a9713728a2c05342c990367fd7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7278fa58d807bf4ef793fa9dbb1f519d4891e4bc` · SHA-256 `5055d51db4eb2de0b880291b0451c404965e9a9713728a2c05342c990367fd7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ProofWidgets.Component.Panel

namespace ProofWidgets

/-- Display the goal type using known `Expr` presenters. -/
@[widget_module]
def GoalTypePanel : Component PanelWidgetProps where
  javascript := include_str ".." / ".." / "build" / "js" / "goalTypePanel.js"

end ProofWidgets
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f168a795bdd4d1a53f250e03698152129dc3fc24d66df0dce0b1d7319b97c0bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalTypePanel/Variant5055d51db4eb2de0b880291b0451c404965e9a9713728a2c05342c990367fd7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
