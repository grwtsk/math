-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HoverInfo.Variant66ad333b8f47206310020c4abb7fbeaeacc416f2956b10196e5f7b3c57a3fd9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66ad333b8f47206310020c4abb7fbeaeacc416f2956b10196e5f7b3c57a3fd9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HoverInfo.Variant66ad333b8f47206310020c4abb7fbeaeacc416f2956b10196e5f7b3c57a3fd9b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"66ad333b8f47206310020c4abb7fbeaeacc416f2956b10196e5f7b3c57a3fd9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Server/Completion/CompletionUtils.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Marc Huisinga
-/
module

prelude
public import Lean.Meta.WHNF


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HoverInfo.Variant66ad333b8f47206310020c4abb7fbeaeacc416f2956b10196e5f7b3c57a3fd9b

public section

partial def Lean.String.charactersIn (a b : String) : Bool :=
  goFastScalar ⟨0⟩ ⟨0⟩
where
  /-
  This function is the ASCII fast path for `go`
  -/
  goFastScalar (aPos bPos : String.Pos.Raw) : Bool :=
    if ha : ¬aPos < a.rawEndPos then
      true
    else if hb : ¬bPos < b.rawEndPos then
      false
    else
      let aByte := a.getUTF8Byte aPos (by simpa using ha)
      let bByte := b.getUTF8Byte bPos (by simpa using hb)
      -- If a or b are not UTF-8 bytes we give up on the fast path
      if (aByte &&& 0x80 != 0) || (bByte &&& 0x80 != 0) then
        go aPos bPos
      else
        let bPos := ⟨bPos.byteIdx + 1⟩
        if aByte.toAsciiLower == bByte.toAsciiLower then
          let aPos := ⟨aPos.byteIdx + 1⟩
          goFastScalar aPos bPos
        else
          goFastScalar aPos bPos

  go (aPos bPos : String.Pos.Raw) : Bool :=
    if ha : aPos.atEnd a then
      true
    else if hb : bPos.atEnd b then
      false
    else
      let ac := aPos.get' a ha
      let bc := bPos.get' b hb
      let bPos := bPos.next' b hb
      if ac.toLower == bc.toLower then
        let aPos := aPos.next' a ha
        go aPos bPos
      else
        go aPos bPos

namespace Lean.Server.Completion
open Elab

inductive HoverInfo : Type where
  | after
  | inside (delta : Nat)

structure ContextualizedCompletionInfo where
  hoverInfo : HoverInfo
  ctx       : ContextInfo
  info      : CompletionInfo

partial def minimizeGlobalIdentifierInContext (currNamespace : Name) (openDecls : List OpenDecl) (id : Name)
    : Name := Id.run do
  let mut minimized := shortenInCurrentNamespace id currNamespace
  for openDecl in openDecls do
    let candidate? := match openDecl with
      | .simple ns except =>
        let candidate := shortenInOpenNamespace id ns
        if ! except.contains candidate then
          some candidate
        else
          none
      | .explicit alias declName =>
        if declName == id then
          some alias
        else
          none
    if let some candidate := candidate? then
      if candidate.getNumParts < minimized.getNumParts then
        minimized := candidate
  return minimized
where
  shortenInCurrentNamespace (id : Name) (currentNamespace : Name) : Name :=
    if currentNamespace matches .anonymous then
      id
    else
      let maybeShortened := shortenInOpenNamespace id currentNamespace
      if maybeShortened != id then
        maybeShortened
      else
        shortenInCurrentNamespace id currentNamespace.getPrefix
  shortenInOpenNamespace (id : Name) (openNamespace : Name) : Name :=
    if openNamespace == id then
      id
    else
      id.replacePrefix openNamespace .anonymous

def unfoldDefinitionGuarded? (e : Expr) : MetaM (Option Expr) :=
  try Lean.Meta.unfoldDefinition? e catch _ => pure none

/-- Get type names for resolving `id` in `s.id x₁ ... xₙ` notation. -/
partial def getDotCompletionTypeNames (type : Expr) : MetaM (Array Name) :=
  return (← visit type |>.run #[]).2
where
  visit (type : Expr) : StateRefT (Array Name) MetaM Unit := do
    let .const typeName _ := type.getAppFn | return ()
    modify fun s => s.push typeName
    if isStructure (← getEnv) typeName then
      for parentName in (← getAllParentStructures typeName) do
        modify fun s => s.push parentName
    let some type ← unfoldDefinitionGuarded? type | return ()
    visit type

/--
Gets type names for resolving `id` in `.id x₁ ... xₙ` notation.
The process mimics the dotted identifier notation elaboration procedure at `Lean.Elab.App`.
Catches and ignores all errors, so no need to run this within `try`/`catch`.
-/
partial def getDotIdCompletionTypeNames (type : Expr) : MetaM (Array Name) :=
  return (← visit type |>.run #[]).2
where
  visit (type : Expr) : StateRefT (Array Name) MetaM Unit := do
    try
      let type ← try Meta.whnfCoreUnfoldingAnnotations type catch _ => pure type
      if type.isForall then
        Meta.forallTelescope type fun _ type => visit type
      else
        let type ← instantiateMVars type
        let .const typeName _ := type.getAppFn | return ()
        modify fun s => s.push typeName
        if let some type' ← unfoldDefinitionGuarded? type then
          visit type'
    catch _ =>
      pure ()

end Lean.Server.Completion
