# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BasicAux.Variant237165012461d0591f8ab3a838871a06e4aa2cb0b1ac7a446a8840e3ecfd9dda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b68c1538729830a80d3a7d682b37862659c4f99` · SHA-256 `237165012461d0591f8ab3a838871a06e4aa2cb0b1ac7a446a8840e3ecfd9dda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Marc Huisinga. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga, Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.Json.FromToJson.Basic

public section

/-
This module exists to cut the dependency on `Std.Data.TreeMap.AdditionalOperations` from a large
chunk of the meta framework.
-/

namespace Lean
namespace Lsp

open Json

abbrev DocumentUri := String

/-- We adopt the convention that zero-based UTF-16 positions as sent by LSP clients
are represented by `Lsp.Position` while internally we mostly use `String.Pos` UTF-8
offsets. For diagnostics, one-based `Lean.Position`s are used internally.
`character` is accepted liberally: actual character := min(line length, character) -/
structure Position where
  line : Nat
  character : Nat
  deriving Inhabited, BEq, Ord, Hashable, ToJson, FromJson, Repr

instance : ToString Position := ⟨fun p =>
  "(" ++ toString p.line ++ ", " ++ toString p.character ++ ")"⟩

instance : LT Position := ltOfOrd
instance : LE Position := leOfOrd

structure Range where
  start : Position
  «end» : Position
  deriving Inhabited, BEq, Hashable, ToJson, FromJson, Ord, Repr

instance : LT Range := ltOfOrd
instance : LE Range := leOfOrd

end Lsp
end Lean


```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=137fde9f012d06b3e7df3b0039dd1845e8536579e1e83a03b80efeef48e71e53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BasicAux/Variant237165012461d0591f8ab3a838871a06e4aa2cb0b1ac7a446a8840e3ecfd9dda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
