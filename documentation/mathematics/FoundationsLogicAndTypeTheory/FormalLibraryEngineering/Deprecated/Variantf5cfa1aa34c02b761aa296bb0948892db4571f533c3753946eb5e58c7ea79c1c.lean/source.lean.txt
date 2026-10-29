-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedCodeActionProvider.Varianteb8e4c2b5e86626e3fc291c77d31b29f036e788808d838df6c3b6d4f0d8a5b84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb8e4c2b5e86626e3fc291c77d31b29f036e788808d838df6c3b6d4f0d8a5b84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DeprecatedCodeActionProvider.Varianteb8e4c2b5e86626e3fc291c77d31b29f036e788808d838df6c3b6d4f0d8a5b84","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"eb8e4c2b5e86626e3fc291c77d31b29f036e788808d838df6c3b6d4f0d8a5b84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/CodeAction/Deprecated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Lean.Server.CodeActions.Provider


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedCodeActionProvider.Varianteb8e4c2b5e86626e3fc291c77d31b29f036e788808d838df6c3b6d4f0d8a5b84

public meta section

/-!
# Code action for @[deprecated] replacements

This is an opt-in mechanism for making machine-applicable `@[deprecated]` definitions. When enabled
(by setting the `machineApplicableDeprecated` tag attribute), a code action will be triggered
whenever the deprecation lint also fires, allowing the user to replace the usage of the deprecated
constant.
-/

namespace Batteries

open Lean Elab Server Lsp RequestM CodeAction

/-- An environment extension for identifying `@[deprecated]` definitions which can be auto-fixed -/
initialize machineApplicableDeprecated : TagDeclarationExtension ← mkTagDeclarationExtension

namespace CodeAction

/-- A code action which applies replacements for `@[deprecated]` definitions. -/
@[code_action_provider]
def deprecatedCodeActionProvider : CodeActionProvider := fun params snap => do
  let mut i := 0
  let doc ← readDoc
  let mut msgs := #[]
  for m in snap.msgLog.toList do
    if m.data.isDeprecationWarning then
      if h : _ then
        msgs := msgs.push (snap.cmdState.messages.toList[i]'h)
    i := i + 1
  if msgs.isEmpty then return #[]
  let start := doc.meta.text.lspPosToUtf8Pos params.range.start
  let stop := doc.meta.text.lspPosToUtf8Pos params.range.end
  for msg in msgs do
    let some endPos := msg.endPos | continue
    let pos := doc.meta.text.ofPosition msg.pos
    let endPos' := doc.meta.text.ofPosition endPos
    unless start ≤ endPos' && pos ≤ stop do continue
    let some (ctx, .node (.ofTermInfo info@{ expr := .const c .., ..}) _) :=
      findInfoTree? identKind ⟨pos, endPos'⟩ none snap.infoTree fun _ i =>
        (i matches .ofTermInfo { elaborator := .anonymous, expr := .const .., ..})
      | continue
    unless machineApplicableDeprecated.isTagged snap.cmdState.env c do continue
    let some c' := Linter.getDeprecatedNewName snap.cmdState.env c | continue
    let eager : CodeAction := {
      title := s!"Replace {c} with {c'}"
      kind? := "quickfix"
      isPreferred? := true
    }
    return #[{
      eager
      lazy? := some do
        let c' ← info.runMetaM ctx (unresolveNameGlobal c')
        let pos := doc.meta.text.leanPosToLspPos msg.pos
        let endPos' := doc.meta.text.leanPosToLspPos endPos
        pure { eager with
          edit? := some <| .ofTextEdit doc.versionedIdentifier {
            range := ⟨pos, endPos'⟩
            newText := toString c'
          }
        }
    }]
  return #[]
