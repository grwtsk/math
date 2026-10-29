# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Position.Variantf26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b8946efac3f132b8a3796c03e3a98e6b256b3e4` · SHA-256 `f26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Syntax
import Lean.Data.Lsp.Utf16

/-- Gets the LSP range from a `String.Range`. -/
def Lean.FileMap.utf8RangeToLspRange (text : FileMap) (range : String.Range) : Lsp.Range :=
  { start := text.utf8PosToLspPos range.start, «end» := text.utf8PosToLspPos range.stop }

/-- Gets the LSP range of syntax `stx`. -/
def Lean.FileMap.rangeOfStx? (text : FileMap) (stx : Syntax) : Option Lsp.Range :=
  text.utf8RangeToLspRange <$> stx.getRange?

/-- Convert a `Lean.Position` to a `String.Pos`. -/
def Lean.FileMap.ofPosition (text : FileMap) (pos : Position) : String.Pos :=
  let colPos :=
    if h : pos.line - 1 < text.positions.size then
      text.positions.get ⟨pos.line - 1, h⟩
    else if text.positions.isEmpty then
      0
    else
      text.positions.back
  String.Iterator.nextn ⟨text.source, colPos⟩ pos.column |>.pos

/-- Return the beginning of the line contatining character `pos`. -/
def Lean.findLineStart (s : String) (pos : String.Pos) : String.Pos :=
  match s.revFindAux (· = '\n') pos with
  | none => 0
  | some n => ⟨n.byteIdx + 1⟩

/--
Return the indentation (number of leading spaces) of the line containing `pos`,
and whether `pos` is the first non-whitespace character in the line.
-/
def Lean.findIndentAndIsStart (s : String) (pos : String.Pos) : Nat × Bool :=
  let start := findLineStart s pos
  let body := s.findAux (· ≠ ' ') pos start
  ((body - start).1, body == pos)

/-- Returns a synthetic Syntax which has the specified `String.Range`. -/
def Lean.Syntax.ofRange (range : String.Range) (canonical := true) : Lean.Syntax :=
  .atom (.synthetic range.start range.stop canonical) ""

/-- Returns the position of the start of (1-based) line `line`. -/
def Lean.FileMap.lineStart (map : FileMap) (line : Nat) : String.Pos :=
  if h : line - 1 < map.positions.size then
    map.positions.get ⟨line - 1, h⟩
  else map.positions.back?.getD 0
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e48b85bb667061d524874614ac9f097fef35fea22b832c6930c685e76cda259 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantf26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
