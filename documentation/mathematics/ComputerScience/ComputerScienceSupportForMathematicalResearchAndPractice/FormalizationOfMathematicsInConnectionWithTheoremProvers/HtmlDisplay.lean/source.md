# Html Display — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `534dbb8e4c8909baecbffede0c766800bcfed989` · SHA-256 `5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Server.Rpc.Basic

import ProofWidgets.Data.Html

namespace ProofWidgets
open Lean Server

structure HtmlDisplayProps where
  html : Html

#mkrpcenc HtmlDisplayProps

@[widget_module]
def HtmlDisplay : Component HtmlDisplayProps where
  javascript := include_str ".." / ".." / "build" / "js" / "htmlDisplay.js"

@[widget_module]
def HtmlDisplayPanel : Component HtmlDisplayProps where
  javascript := include_str ".." / ".." / "build" / "js" / "htmlDisplayPanel.js"

open Elab in
unsafe def evalHtmlUnsafe (stx : Term) : TermElabM Html := do
  let htmlT := mkConst ``Html
  Term.evalTerm Html htmlT stx

open Elab in
@[implemented_by evalHtmlUnsafe]
opaque evalHtml : Term → TermElabM Html

syntax (name := htmlCmd) "#html " term : command

open Elab Command Json in
@[command_elab htmlCmd]
def elabHtmlCmd : CommandElab := fun
  | stx@`(#html $t:term) =>
    runTermElabM fun _ => do
      let ht ← evalHtml <| ← `(ProofWidgets.Html.ofTHtml $t)
      savePanelWidgetInfo stx ``HtmlDisplayPanel do
        return json% { html: $(← rpcEncode ht) }
  | stx => throwError "Unexpected syntax {stx}."

syntax (name := htmlTac) "html! " term : tactic

open Elab Tactic Json in
@[tactic htmlTac]
def elabHtmlTac : Tactic
  | stx@`(tactic| html! $t:term) => do
    let ht ← evalHtml <| ← `(ProofWidgets.Html.ofTHtml $t)
    savePanelWidgetInfo stx ``HtmlDisplayPanel do
      return json% { html: $(← rpcEncode ht) }
  | stx => throwError "Unexpected syntax {stx}."

end ProofWidgets
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8655d1cfcb45e21a9558a1c0362a250f265120da372262bb709b3d7788a7f1a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
