-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardExt.Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ForwardExt.Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/GCongr/ForwardAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro, Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Heather Macbeth
-/
import Mathlib.Init
import Batteries.Tactic.Basic

/-!
# Environment extension for the forward-reasoning part of the `gcongr` tactic
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardExt.Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da

open Lean Meta Elab Tactic

namespace Mathlib.Tactic.GCongr

/-- An extension for `gcongr_forward`. -/
structure ForwardExt where
  eval (h : Expr) (goal : MVarId) : MetaM Unit

/-- Read a `gcongr_forward` extension from a declaration of the right type. -/
def mkForwardExt (n : Name) : ImportM ForwardExt := do
  let { env, opts, .. } ← read
  IO.ofExcept <| unsafe env.evalConstCheck ForwardExt opts ``ForwardExt n

/-- Environment extensions for `gcongrForward` declarations -/
initialize forwardExt : PersistentEnvExtension Name (Name × ForwardExt)
    (List Name × List (Name × ForwardExt)) ←
  registerPersistentEnvExtension {
    mkInitial := pure ([], {})
    addImportedFn := fun s => do
      let dt ← s.foldlM (init := {}) fun dt s => s.foldlM (init := dt) fun dt n => do
        return (n, ← mkForwardExt n) :: dt
      pure ([], dt)
    addEntryFn := fun (entries, s) (n, ext) => (n :: entries, (n, ext) :: s)
    exportEntriesFn := fun s => s.1.reverse.toArray
  }

initialize registerBuiltinAttribute {
  name := `gcongr_forward
  descr := "adds a gcongr_forward extension"
  applicationTime := .afterCompilation
  add := fun declName stx kind => match stx with
    | `(attr| gcongr_forward) => do
      unless kind == AttributeKind.global do
        throwError "invalid attribute 'gcongr_forward', must be global"
      let env ← getEnv
      unless (env.getModuleIdxFor? declName).isNone do
        throwError "invalid attribute 'gcongr_forward', declaration is in an imported module"
      if (IR.getSorryDep env declName).isSome then return -- ignore in progress definitions
      let ext ← mkForwardExt declName
      setEnv <| forwardExt.addEntry env (declName, ext)
    | _ => throwUnsupportedSyntax
}

end GCongr

end Mathlib.Tactic
