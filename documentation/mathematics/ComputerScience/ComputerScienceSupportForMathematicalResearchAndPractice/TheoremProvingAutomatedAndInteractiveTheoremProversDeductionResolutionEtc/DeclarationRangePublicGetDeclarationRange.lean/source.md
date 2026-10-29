# Declaration Range Public Get Declaration Range — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d975cf3e6b05fffb1c85d0788ffe803020599b9` · SHA-256 `1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Parser.Command

public section

namespace Lean.Elab

def getDeclarationRange? [Monad m] [MonadFileMap m] (stx : Syntax) : m (Option DeclarationRange) := do
  let some range := stx.getRange?
    | return none
  let fileMap ← getFileMap
  return some <| .ofStringPositions fileMap range.start range.stop

/--
  For most builtin declarations, the selection range is just its name, which is stored in the second position.
  Example:
  ```
  "def " >> declId >> optDeclSig >> declVal
  ```
  If the declaration name is absent, we use the keyword instead.
  This function converts the given `Syntax` into one that represents its "selection range".
-/
def getDeclarationSelectionRef (stx : Syntax) : Syntax :=
  if stx.isOfKind ``Lean.Parser.Command.instance then
    -- must skip `attrKind` and `optPrio` for `instance`
    if !stx[3].isNone then
      stx[3][0]
    else
      stx[1]
  else
    if stx[1][0].isIdent then
      stx[1][0]  -- `declId`
    else if stx[1].isIdent then
      stx[1]  -- raw `ident`
    else
      stx[0]

/--
Derives and adds declaration ranges from given syntax trees. If `rangeStx` does not have a range,
nothing is added. If `selectionRangeStx` does not have a range, it is defaulted to that of
`rangeStx`.
-/
def addDeclarationRangesFromSyntax [Monad m] [MonadEnv m] [MonadFileMap m] (declName : Name)
    (rangeStx : Syntax) (selectionRangeStx : Syntax := .missing) : m Unit := do
  -- may fail on partial syntax, ignore in that case
  let some range ← getDeclarationRange? rangeStx | return
  let selectionRange ← (·.getD range) <$> getDeclarationRange? selectionRangeStx
  Lean.addDeclarationRanges declName { range, selectionRange }

/--
Stores the `range` and `selectionRange` for `declName` where `modsStx` is the modifier part and
`cmdStx` the remaining part of the syntax tree for `declName`.

This method is for the builtin declarations only. User-defined commands should use
`Lean.Elab.addDeclarationRangesFromSyntax` or `Lean.addDeclarationRanges` to store this information
for their commands.
-/
def addDeclarationRangesForBuiltin [Monad m] [MonadEnv m] [MonadFileMap m] (declName : Name)
    (modsStx : TSyntax ``Parser.Command.declModifiers) (declStx : Syntax) : m Unit := do
  if declStx.getKind == ``Parser.Command.«example» then
    return ()
  let stx := mkNullNode #[modsStx, declStx]
  addDeclarationRangesFromSyntax declName stx (getDeclarationSelectionRef declStx)

end Lean.Elab
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0df44bf1c5708986a9d4c9f7e7f219ddef25beaf8521731a68f4f4659b6abf8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclarationRange/Variant1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
