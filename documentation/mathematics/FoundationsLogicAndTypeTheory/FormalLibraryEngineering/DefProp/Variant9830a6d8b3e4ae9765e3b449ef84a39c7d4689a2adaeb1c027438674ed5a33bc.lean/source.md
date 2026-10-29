# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefProp.Variant9830a6d8b3e4ae9765e3b449ef84a39c7d4689a2adaeb1c027438674ed5a33bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `200f0b092745759f4c387a6a7c119d511d41e35a` · SHA-256 `9830a6d8b3e4ae9765e3b449ef84a39c7d4689a2adaeb1c027438674ed5a33bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski

Copyright (c) 2020 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Robert Y. Lewis, Gabriel Ebner
-/
module

prelude
public import Lean.Linter.Basic
public import Lean.Linter.Util

public section

namespace Lean.Linter
open Elab Command Meta Term

/--
Enables the `defProp` linter, which warns when a `def` is used to introduce a
declaration whose type is a `Prop`. Such a declaration should be written using
`theorem` instead.
-/
register_builtin_option linter.defProp : Bool := {
  defValue := true
  descr := "enable the `defProp` linter, which warns when a `def` is used to introduce \
    a declaration whose type is a `Prop`; such a declaration should be written using \
    `theorem` instead."
}

namespace DefProp

@[inherit_doc linter.defProp]
def defPropLinter : Linter where run := withSetOptionIn fun _ => do
  unless getLinterValue linter.defProp (← getLinterOptions) do
    return
  if (← get).messages.hasErrors then
    return
  let env ← getEnv
  for t in ← getInfoTrees do
    for declName in getDeclsByBody t do
      let some info := env.find? declName | continue
      unless info.isDefinition do continue
      if info.hints.isAbbrev then continue
      let isPropType ← liftTermElabM <| isProp info.type
      if isPropType then
        logLintIf linter.defProp (← getRef) m!"\
          Definition `{.ofConstName declName}` is a proposition; use `theorem` instead of `def`"

builtin_initialize addLinter defPropLinter

end DefProp
end Lean.Linter
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb63898579a441b2e7cf51388cd1a4410a159c0ae44d35df36c75e3b8fd3c0e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefProp/Variant9830a6d8b3e4ae9765e3b449ef84a39c7d4689a2adaeb1c027438674ed5a33bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
