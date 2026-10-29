-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetDeclarationRange.Variant1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetDeclarationRange.Variant1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/DeclarationRange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Parser.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetDeclarationRange.Variant1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437

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
