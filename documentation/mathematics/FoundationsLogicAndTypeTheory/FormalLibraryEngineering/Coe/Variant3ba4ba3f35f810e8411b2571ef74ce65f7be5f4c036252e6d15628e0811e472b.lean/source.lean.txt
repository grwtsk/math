-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShouldWarnOnDeprecatedCoercions.Variantcaf8b9237b9749081aef75c6bf8c975c77a4c2534778c02548ddaaa369d07bb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"caf8b9237b9749081aef75c6bf8c975c77a4c2534778c02548ddaaa369d07bb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ShouldWarnOnDeprecatedCoercions.Variantcaf8b9237b9749081aef75c6bf8c975c77a4c2534778c02548ddaaa369d07bb8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"caf8b9237b9749081aef75c6bf8c975c77a4c2534778c02548ddaaa369d07bb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/Coe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Lean.Elab.Command
public import Lean.Server.InfoUtils
import Lean.Linter.Init
import all Lean.Elab.Term.TermElabM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShouldWarnOnDeprecatedCoercions.Variantcaf8b9237b9749081aef75c6bf8c975c77a4c2534778c02548ddaaa369d07bb8

public section
set_option linter.missingDocs true -- keep it documented

namespace Lean.Linter.Coe

/--
`set_option linter.deprecatedCoercions true` enables a linter emitting warnings on deprecated
coercions.
-/
register_builtin_option linter.deprecatedCoercions : Bool := {
  defValue := true
  descr := "Validate that no deprecated coercions are used."
}

/--
Checks whether the "deprecated coercions" linter is enabled.
-/
def shouldWarnOnDeprecatedCoercions [Monad m] [MonadOptions m] : m Bool :=
  return (← getOptions).get linter.deprecatedCoercions.name true

/-- A list of coercion names that must not be used in core. -/
def coercionsBannedInCore : Array Name := #[``optionCoe, ``instCoeSubarrayArray]

/-- Validates that no coercions are used that are either deprecated or are banned in core. -/
def coeLinter : Linter where
  run := fun _ => do
    let mainModule ← getMainModule
    let isCoreModule := mainModule = `elab.linterCoe ∨ (mainModule.getRoot ∈ [`Init, `Std])
    let shouldWarnOnDeprecated := getLinterValue linter.deprecatedCoercions (← getLinterOptions)
    let trees ← Elab.getInfoTrees
    for tree in trees do
      tree.visitM' (m := Elab.Command.CommandElabM) (fun _ info _ => do
        match info with
        | .ofCustomInfo ci =>
          if let some trace := ci.value.get? Elab.Term.CoeExpansionTrace then
            for coeDecl in trace.expandedCoeDecls do
              if isCoreModule && coeDecl ∈ coercionsBannedInCore then
                logWarningAt ci.stx m!"This term uses the coercion `{coeDecl}`, which is banned in Lean's core library."
              if shouldWarnOnDeprecated then
                let some attr := deprecatedAttr.getParam? (← getEnv) coeDecl | pure ()
                logLint linter.deprecatedCoercions ci.stx <| .tagged ``deprecatedAttr <|
                  m!"This term uses the deprecated coercion `{.ofConstName coeDecl true}`."
        | _ => pure ()
        return true) (fun _ _ _ _ => return)

builtin_initialize addLinter coeLinter

end Lean.Linter.Coe
