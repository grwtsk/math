# Syntax Public Format Info — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4965480f0039826531522f1c3841ba031567376c` · SHA-256 `fd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
import Init.Data.ToString.Name
public import Init.Data.ToString.Basic
import Init.Data.Format.Instances
import Init.Data.Format.Macro

public section

namespace Lean.Syntax

open Std
open Std.Format

private def formatInfo (showInfo : Bool) (info : SourceInfo) (f : Format) : Format :=
  match showInfo, info with
  | true, SourceInfo.original lead pos trail endPos => f!"{repr lead.toString}:{pos}:{f}:{endPos}:{repr trail.toString}"
  | true, SourceInfo.synthetic pos endPos true      => f!"{pos}!:{f}:{endPos}"
  | true, SourceInfo.synthetic pos endPos false     => f!"{pos}:{f}:{endPos}"
  | _,    _                                         => f

partial def formatStxAux (maxDepth : Option Nat) (showInfo : Bool) (depth : Nat) : Syntax → Format
  | atom info val        => formatInfo showInfo info <| format (repr val)
  | ident info _ val _   => formatInfo showInfo info <| format "`" ++ format val
  | missing              => "<missing>"
  | node info kind args  =>
    let depth := depth + 1;
    if kind == nullKind then
      sbracket <|
        if args.size > 0 && depth > maxDepth.getD depth then
          ".."
        else
          joinSep (args.toList.map (formatStxAux maxDepth showInfo depth)) line
    else
      let shorterName := kind.replacePrefix `Lean.Parser Name.anonymous
      let header      := formatInfo showInfo info <| format shorterName
      let body : List Format :=
        if args.size > 0 && depth > maxDepth.getD depth then
          [".."]
        else
          args.toList.map (formatStxAux maxDepth showInfo depth)
      paren <| joinSep (header :: body) line

/-- Pretty print the given syntax `stx` as a `Format`.
Nodes deeper than `maxDepth` are omitted.
Setting the `showInfo` flag will also print the `SourceInfo` for each node. -/
def formatStx (stx : Syntax) (maxDepth : Option Nat := none) (showInfo := false) : Format :=
  formatStxAux maxDepth showInfo 0 stx

instance : ToFormat (Syntax) := ⟨formatStx⟩
instance : ToString (Syntax) := ⟨@toString Format _ ∘ format⟩

instance : ToFormat (TSyntax k) := ⟨(format ·.raw)⟩
instance : ToString (TSyntax k) := ⟨(toString ·.raw)⟩

end Lean.Syntax
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a418de641e0517700c5b203a7eec93be1b8410a250a3d87d96ec15fc7348ecb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantfd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
