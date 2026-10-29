# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MVarRenaming.Variant9b7afc8ffc565c527d652823a58c1a02d1c98701e01f96e6e9d5960e46b87205

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43af7d5bf000cd89d3a80dfabe32e8e85eea0e6b` · SHA-256 `9b7afc8ffc565c527d652823a58c1a02d1c98701e01f96e6e9d5960e46b87205`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.ReplaceExpr

public section

namespace Lean.Meta

/-- A mapping from MVarId to MVarId -/
structure MVarRenaming where
  map : MVarIdMap MVarId := {}

def MVarRenaming.isEmpty (s : MVarRenaming) : Bool :=
  s.map.isEmpty

def MVarRenaming.find? (s : MVarRenaming) (mvarId : MVarId) : Option MVarId :=
  s.map.get? mvarId

def MVarRenaming.find! (s : MVarRenaming) (mvarId : MVarId) : MVarId :=
  (s.find? mvarId).get!

def MVarRenaming.insert (s : MVarRenaming) (mvarId mvarId' : MVarId) : MVarRenaming :=
  { s with map := s.map.insert mvarId mvarId' }

def MVarRenaming.apply (s : MVarRenaming) (e : Expr) : Expr :=
  if !e.hasMVar then e
  else if s.map.isEmpty then e
  else e.replace fun e => match e with
    | Expr.mvar mvarId => match s.map.get? mvarId with
      | none           => e
      | some newMVarId => mkMVar newMVarId
    | _ => none

end Lean.Meta
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=761761c1863c6c021386e0dde3b017c94ed478fc6f72ad7b3db81dbdf57dde33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MVarRenaming/Variant9b7afc8ffc565c527d652823a58c1a02d1c98701e01f96e6e9d5960e46b87205.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
