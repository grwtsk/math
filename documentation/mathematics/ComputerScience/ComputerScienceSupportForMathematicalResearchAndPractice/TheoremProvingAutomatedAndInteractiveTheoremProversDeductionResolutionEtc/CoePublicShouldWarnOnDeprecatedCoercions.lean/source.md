# Coe Public Should Warn On Deprecated Coercions — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18f7bf8820bedf77df338b6bc34924b059c8e02b` · SHA-256 `caf8b9237b9749081aef75c6bf8c975c77a4c2534778c02548ddaaa369d07bb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5ee579c52d3bfd70ef35b26798e8a5f49fb4f87e8491d5f21ec91f713afce32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantcaf8b9237b9749081aef75c6bf8c975c77a4c2534778c02548ddaaa369d07bb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
