# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprPresentation.Variant011dffb62a4924f1c36bfdb33fda8022bda23fbdc76dc191effed39da467f103

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbcae93e1b9558a73e3f3ef3474331d788515e89` · SHA-256 `011dffb62a4924f1c36bfdb33fda8022bda23fbdc76dc191effed39da467f103`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import ProofWidgets.Component.Panel.SelectionPanel
public import ProofWidgets.Component.Panel.GoalTypePanel
public import ProofWidgets.Presentation.Expr

public meta section

open ProofWidgets Jsx

@[expr_presenter]
def presenter : ExprPresenter where
  userName := "With octopodes"
  layoutKind := .inline
  present e :=
    return <span>
        {.text "🐙 "}<InteractiveCode fmt={← Lean.Widget.ppExprTagged e} />{.text " 🐙"}
      </span>

example : 2 + 2 = 4 ∧ 3 + 3 = 6 := by
  with_panel_widgets [GoalTypePanel]
    -- Place cursor here.
    constructor
    rfl
    rfl

example (_h : 2 + 2 = 5) : 2 + 2 = 4 := by
  with_panel_widgets [SelectionPanel]
    -- Place cursor here and select subexpressions in the goal with shift-click.
    rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f42230f9465e22783ef7134b52b2889291bc1b68e2222ce6f5942e68f7d24cb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPresentation/Variant011dffb62a4924f1c36bfdb33fda8022bda23fbdc76dc191effed39da467f103.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
