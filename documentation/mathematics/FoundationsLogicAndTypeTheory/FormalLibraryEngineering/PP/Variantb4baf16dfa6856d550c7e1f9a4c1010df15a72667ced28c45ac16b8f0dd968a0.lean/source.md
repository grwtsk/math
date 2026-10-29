# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PP.Variantb4baf16dfa6856d550c7e1f9a4c1010df15a72667ced28c45ac16b8f0dd968a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fc44447ca9cca918492b78ff83a2cbc19e5adea` · SHA-256 `b4baf16dfa6856d550c7e1f9a4c1010df15a72667ced28c45ac16b8f0dd968a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.Types
import Lean.Meta.Tactic.Grind.Arith.Linear.Model
import Lean.Meta.Tactic.Grind.Arith.Util
import Init.Omega
public section
namespace Lean.Meta.Grind.Arith.Linear

def ppStruct? (goal : Goal) (s : Struct) : MetaM (Option MessageData) := do
  let model ← mkModel goal s.id
  if model.isEmpty then return none
  let mut ms := #[]
  for (e, val) in model do
    ms := ms.push <| .trace { cls := `assign } m!"{Arith.quoteIfArithTerm e} := {val}" #[]
  return some (.trace { cls := `linarith } m!"Linarith assignment for `{s.type}`" ms)

def pp? (goal : Goal) : MetaM (Option MessageData) := do
  let mut msgs := #[]
  for struct in (← linearExt.getStateCore goal).structs do
    let some msg ← ppStruct? goal struct | pure ()
    msgs := msgs.push msg
  if msgs.isEmpty then
    return none
  else if h : msgs.size = 1 then
    return some msgs[0]
  else
    return some (.trace { cls := `linarith } "Linarith" msgs)

end Lean.Meta.Grind.Arith.Linear
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f0b38fb8b41292891e63e058ec60d85bcb0bae3e27a2d2a286bd675d6bb9bae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantb4baf16dfa6856d550c7e1f9a4c1010df15a72667ced28c45ac16b8f0dd968a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
