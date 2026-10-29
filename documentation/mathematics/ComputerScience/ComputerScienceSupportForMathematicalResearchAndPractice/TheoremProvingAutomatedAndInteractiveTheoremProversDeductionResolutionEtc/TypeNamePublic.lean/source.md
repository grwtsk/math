# Type Name Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f3417614ea26dac194409671c8fca03e730737c` · SHA-256 `e215345c9234087dbfe72e90901ddfd7eacf5e649c6a4ac50401a59bf228213c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Gabriel Ebner
-/
module

prelude
public import Lean.Elab.Deriving.Basic

public section

namespace Lean.Elab
open Command Parser Term

private def deriveTypeNameInstance (declNames : Array Name) : CommandElabM Bool := do
  for declName in declNames do
    let cinfo ← getConstInfo declName
    unless cinfo.levelParams.isEmpty do
      throwError m!"{.ofConstName declName} has universe level parameters"
    withScope (fun scope => { scope with opts := scope.opts.setBool `warn.classDefReducibility false }) do
      elabCommand <| ← withFreshMacroScope `(
        unsafe def instImpl : TypeName @$(mkCIdent declName) := .mk _ $(quote declName)
        @[implemented_by instImpl] opaque inst : TypeName @$(mkCIdent declName)
        instance : TypeName @$(mkCIdent declName) := inst
      )
  return true

initialize
  registerDerivingHandler ``TypeName deriveTypeNameInstance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7c9ee7982ba95fc13d179d4edb1e6e825063e75c7f6f8ed35b1931a2c2dafb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeName/Variante215345c9234087dbfe72e90901ddfd7eacf5e649c6a4ac50401a59bf228213c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
