-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindOptions.Variante6016a5e6292d31f4f096d7e7691473850e9b57d06e8a26c41e5f7d50d90ab75","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6016a5e6292d31f4f096d7e7691473850e9b57d06e8a26c41e5f7d50d90ab75","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FindOptions.Variante6016a5e6292d31f4f096d7e7691473850e9b57d06e8a26c41e5f7d50d90ab75","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e6016a5e6292d31f4f096d7e7691473850e9b57d06e8a26c41e5f7d50d90ab75","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/PrintPrefix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Shing Tak Lam. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Shing Tak Lam, Daniel Selsam, Mario Carneiro
-/
import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindOptions.Variante6016a5e6292d31f4f096d7e7691473850e9b57d06e8a26c41e5f7d50d90ab75

open Lean Meta Elab Command

namespace Lean
namespace Meta

structure FindOptions where
  stage1       : Bool := true
  checkPrivate : Bool := false

def findCore (ϕ : ConstantInfo → MetaM Bool) (opts : FindOptions := {}) :
  MetaM (Array ConstantInfo) := do
  let matches_ ← if !opts.stage1 then pure #[] else
    (← getEnv).constants.map₁.foldM (init := #[]) check
  (← getEnv).constants.map₂.foldlM (init := matches_) check
where
  check matches_ name cinfo := do
    if opts.checkPrivate || !isPrivateName name then
      if ← ϕ cinfo then pure $ matches_.push cinfo else pure matches_
    else pure matches_

def find (msg : String)
  (ϕ : ConstantInfo → MetaM Bool) (opts : FindOptions := {}) : TermElabM String := do
  let cinfos ← findCore ϕ opts
  let cinfos := cinfos.qsort fun p q ↦ p.name.lt q.name
  let mut msg := msg
  for cinfo in cinfos do
    msg := msg ++ s!"{cinfo.name} : {← Meta.ppExpr cinfo.type}\n"
  pure msg

end Meta

namespace Elab.Command

syntax (name := printPrefix) "#print prefix " ident : command

/--
The command `#print prefix foo` will print all definitions that start with
the namespace `foo`.
-/
@[command_elab printPrefix] def elabPrintPrefix : CommandElab
| `(#print prefix%$tk $name:ident) => do
  let nameId := name.getId
  liftTermElabM do
    let mut msg ← find "" fun cinfo ↦ pure $ nameId.isPrefixOf cinfo.name
    if msg.isEmpty then
      if let [name] ← resolveGlobalConst name then
        msg ← find msg fun cinfo ↦ pure $ name.isPrefixOf cinfo.name
    if !msg.isEmpty then
      logInfoAt tk msg
| _ => throwUnsupportedSyntax

end Elab.Command
end Lean
