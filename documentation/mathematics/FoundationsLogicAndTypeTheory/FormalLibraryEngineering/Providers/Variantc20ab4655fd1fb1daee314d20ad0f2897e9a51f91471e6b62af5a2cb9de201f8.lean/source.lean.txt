-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContainsKind.Variante0f621d90bf7a73bd6440f3425d2a23149b1554a64b1540f808d11d7227f4c11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0f621d90bf7a73bd6440f3425d2a23149b1554a64b1540f808d11d7227f4c11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ContainsKind.Variante0f621d90bf7a73bd6440f3425d2a23149b1554a64b1540f808d11d7227f4c11","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e0f621d90bf7a73bd6440f3425d2a23149b1554a64b1540f808d11d7227f4c11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/tools/LeanSource/Providers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import tools.LeanSource.CommandState
import all Lean
import all Lean.Syntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContainsKind.Variante0f621d90bf7a73bd6440f3425d2a23149b1554a64b1540f808d11d7227f4c11

public section

/-! # Conservative parser/elaborator-state provider classification -/

open Lean

namespace MathematicsLeanSource

private partial def containsKind (stx : Syntax) (kinds : Array Name) : Bool :=
  kinds.any (fun candidate => decide (candidate = Lean.Syntax.getKind stx)) ||
    (Lean.Syntax.getArgs stx).any (containsKind · kinds)

private def rootKind (stx : Syntax) : Name :=
  Lean.Syntax.getKind stx

def providerKinds (stx : Syntax) (source : String) : Array String := Id.run do
  let kind := rootKind stx
  let mut providers := #[]
  if #[`Lean.Parser.Command.namespace, `Lean.Parser.Command.section,
      `Lean.Parser.Command.end].contains kind then
    providers := providers.push "scope"
  if kind == `Lean.Parser.Command.open then
    providers := providers.push "open"
  if #[`Lean.Parser.Command.variable, `Lean.Parser.Command.universe,
      `Lean.Parser.Command.include, `Lean.Parser.Command.omit].contains kind then
    providers := providers.push "binder"
  if kind == `Lean.Parser.Command.set_option then
    providers := providers.push "option"
  if kind == `Lean.Parser.Command.attribute then
    providers := providers.push "attribute"
  if containsKind stx #[`Lean.Parser.Command.syntax, `Lean.Parser.Command.syntaxAbbrev,
      `Lean.Parser.Command.syntaxCat] then
    providers := providers.push "syntax"
  if containsKind stx #[`Lean.Parser.Command.macro, `Lean.Parser.Command.macro_rules] then
    providers := providers.push "macro"
  if containsKind stx #[`Lean.Parser.Command.notation, `Lean.Parser.Command.mixfix] then
    providers := providers.push "notation"
  if containsKind stx #[`Lean.Parser.Command.elab, `Lean.Parser.Command.elab_rules] &&
      source.contains "command" then
    providers := providers.push "command-elaborator"
  if kind == `Lean.Parser.Command.initialize then
    providers := providers.push "persistent-extension"
  if containsKind stx #[`Lean.Parser.Command.instance] &&
      (source.trimAscii.startsWith "local instance" || source.trimAscii.startsWith "scoped instance") then
    providers := providers.push "instance"
  return providers

def shouldReplayContext (kind source : String) : Bool :=
  kind == "Lean.Parser.Command.namespace" || kind == "Lean.Parser.Command.section" ||
  kind == "Lean.Parser.Command.end" || kind == "Lean.Parser.Command.open" ||
  kind == "Lean.Parser.Command.variable" || kind == "Lean.Parser.Command.universe" ||
  kind == "Lean.Parser.Command.include" || kind == "Lean.Parser.Command.omit" ||
  kind == "Lean.Parser.Command.setOption" ||
  source.startsWith "noncomputable section"

end MathematicsLeanSource
