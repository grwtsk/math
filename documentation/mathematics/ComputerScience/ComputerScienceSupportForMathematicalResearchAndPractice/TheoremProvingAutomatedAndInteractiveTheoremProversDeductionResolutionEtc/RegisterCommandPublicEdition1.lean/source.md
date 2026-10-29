# Register Command Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e37d3983a765d061106801e6899f53318604356` · SHA-256 `40f1691c5d5257d70661c30f566057972725a5f26b0fd96297137da71a739e0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Simp.Attr  -- shake: keep (macro output dependency)
public meta import Lean.Meta.Tactic.Simp.Simproc

public section

namespace Lean.Meta.Simp

macro (name := _root_.Lean.Parser.Command.registerSimpAttr) doc:(docComment)?
  "register_simp_attr" id:ident : command => do
  let str := id.getId.toString
  let idParser := mkIdentFrom id (`Parser.Attr ++ id.getId)
  let descr := quote ((doc.map (·.getDocString) |>.getD s!"simp set for {id.getId.toString}").removeLeadingSpaces)
  let procId := mkIdentFrom id (simpAttrNameToSimprocAttrName id.getId)
  let procStr := procId.getId.toString
  let procIdParser := mkIdentFrom procId (`Parser.Attr ++ procId.getId)
  let procDescr := quote s!"simproc set for {procId.getId.toString}"
  -- TODO: better docComment for simprocs
  `($[$doc:docComment]? public meta initialize ext : SimpExtension ← registerSimpAttr $(quote id.getId) $descr
    $[$doc:docComment]? syntax (name := $idParser:ident) $(quote str):str (Parser.Tactic.simpPre <|> Parser.Tactic.simpPost)? unicode("← ", "<- ")? (prio)? : attr
    /-- Simplification procedure -/
    public meta initialize extProc : SimprocExtension ← registerSimprocAttr $(quote procId.getId) $procDescr none
    /-- Simplification procedure -/
    syntax (name := $procIdParser:ident) $(quote procStr):str (Parser.Tactic.simpPre <|> Parser.Tactic.simpPost)? : attr)

end Lean.Meta.Simp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab64242ebcee71578810dc4ea4a21ea77fcd50f802ca540bd5472d6962ec8247 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterCommand/Variant40f1691c5d5257d70661c30f566057972725a5f26b0fd96297137da71a739e0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
