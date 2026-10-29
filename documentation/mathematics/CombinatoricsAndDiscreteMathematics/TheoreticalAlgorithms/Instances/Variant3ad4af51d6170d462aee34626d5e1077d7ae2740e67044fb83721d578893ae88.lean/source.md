# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Instances.Variant3ad4af51d6170d462aee34626d5e1077d7ae2740e67044fb83721d578893ae88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa3dcfe717877fca26813b0ba956ae84f458bc3c` · SHA-256 `3ad4af51d6170d462aee34626d5e1077d7ae2740e67044fb83721d578893ae88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
import Init.Data.String.Search
public import Init.Data.ToString.Basic
import Init.Data.Iterators.Consumers.Collect

public section

open Std

instance (priority := low) [ToString α] : ToFormat α :=
  ⟨Std.Format.text ∘ toString⟩

def List.format [ToFormat α] : List α → Format
  | [] => "[]"
  | xs => Format.sbracket <| Format.joinSep xs ("," ++ Format.line)

instance [ToFormat α] : ToFormat (List α) where
  format := List.format

instance [ToFormat α] : ToFormat (Array α) where
  format a := "#" ++ format a.toList

/--
Formats an optional value, with no expectation that the Lean parser should be able to parse the
result.

This function is usually accessed through the `ToFormat (Option α)` instance.
-/
def Option.format {α : Type u} [ToFormat α] : Option α → Format
  | none   => "none"
  | some a => "some " ++ Std.format a

instance {α : Type u} [ToFormat α] : ToFormat (Option α) :=
  ⟨Option.format⟩

instance {α : Type u} {β : Type v} [ToFormat α] [ToFormat β] : ToFormat (Prod α β) where
  format := fun (a, b) => Format.paren <| format a ++ "," ++ Format.line ++ format b

/--
Converts a string to a pretty-printer document, replacing newlines in the string with
`Std.Format.line`.
-/
def String.toFormat (s : String) : Std.Format :=
  Std.Format.joinSep (s.split '\n').toList Std.Format.line

instance : ToFormat String.Pos.Raw where
  format p := format p.byteIdx
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=748a148a59383b443f3c9ab813edf8a39b74dbfbac4dfa55c2b483979f412f21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant3ad4af51d6170d462aee34626d5e1077d7ae2740e67044fb83721d578893ae88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
