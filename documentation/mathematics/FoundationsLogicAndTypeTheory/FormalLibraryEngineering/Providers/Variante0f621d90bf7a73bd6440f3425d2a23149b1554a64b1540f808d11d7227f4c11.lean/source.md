# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Providers.Variante0f621d90bf7a73bd6440f3425d2a23149b1554a64b1540f808d11d7227f4c11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daf7a398983809dec15c34e06ceaa4c8e8513364` · SHA-256 `e0f621d90bf7a73bd6440f3425d2a23149b1554a64b1540f808d11d7227f4c11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import tools.LeanSource.CommandState
import all Lean
import all Lean.Syntax

public section

/-! # Conservative parser/elaborator-state provider classification -/

open Lean

namespace MathematicsLeanSource

private partial def containsKind (stx : Syntax) (kinds : Array Name) : Bool :=
  kinds.any (fun candidate => decide (candidate = Lean.Syntax.getKind stx)) ||
    (Lean.Syntax.getArgs stx).any (containsKind · kinds)

private def rootKind (stx : Syntax) : Name :=
  Lean.Syntax.getKind stx

def providerKinds (stx : Syntax) (source : String) : Array String := Id.run do
  let kind := rootKind stx
  let mut providers := #[]
  if #[`Lean.Parser.Command.namespace, `Lean.Parser.Command.section,
      `Lean.Parser.Command.end].contains kind then
    providers := providers.push "scope"
  if kind == `Lean.Parser.Command.open then
    providers := providers.push "open"
  if #[`Lean.Parser.Command.variable, `Lean.Parser.Command.universe,
      `Lean.Parser.Command.include, `Lean.Parser.Command.omit].contains kind then
    providers := providers.push "binder"
  if kind == `Lean.Parser.Command.set_option then
    providers := providers.push "option"
  if kind == `Lean.Parser.Command.attribute then
    providers := providers.push "attribute"
  if containsKind stx #[`Lean.Parser.Command.syntax, `Lean.Parser.Command.syntaxAbbrev,
      `Lean.Parser.Command.syntaxCat] then
    providers := providers.push "syntax"
  if containsKind stx #[`Lean.Parser.Command.macro, `Lean.Parser.Command.macro_rules] then
    providers := providers.push "macro"
  if containsKind stx #[`Lean.Parser.Command.notation, `Lean.Parser.Command.mixfix] then
    providers := providers.push "notation"
  if containsKind stx #[`Lean.Parser.Command.elab, `Lean.Parser.Command.elab_rules] &&
      source.contains "command" then
    providers := providers.push "command-elaborator"
  if kind == `Lean.Parser.Command.initialize then
    providers := providers.push "persistent-extension"
  if containsKind stx #[`Lean.Parser.Command.instance] &&
      (source.trimAscii.startsWith "local instance" || source.trimAscii.startsWith "scoped instance") then
    providers := providers.push "instance"
  return providers

def shouldReplayContext (kind source : String) : Bool :=
  kind == "Lean.Parser.Command.namespace" || kind == "Lean.Parser.Command.section" ||
  kind == "Lean.Parser.Command.end" || kind == "Lean.Parser.Command.open" ||
  kind == "Lean.Parser.Command.variable" || kind == "Lean.Parser.Command.universe" ||
  kind == "Lean.Parser.Command.include" || kind == "Lean.Parser.Command.omit" ||
  kind == "Lean.Parser.Command.setOption" ||
  source.startsWith "noncomputable section"

end MathematicsLeanSource
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a51605f6ceec773c792115d00bc3772725f18eee9679c03b6c36ea87337b4e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Providers/Variante0f621d90bf7a73bd6440f3425d2a23149b1554a64b1540f808d11d7227f4c11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
