-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WhenLinterOption.Variant9655ce6bb7403ddcdcadcfeb2e2d62474dc8153a57f04bc71428d19ac4d51e68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9655ce6bb7403ddcdcadcfeb2e2d62474dc8153a57f04bc71428d19ac4d51e68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WhenLinterOption.Variant9655ce6bb7403ddcdcadcfeb2e2d62474dc8153a57f04bc71428d19ac4d51e68","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9655ce6bb7403ddcdcadcfeb2e2d62474dc8153a57f04bc71428d19ac4d51e68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/.lake/packages/mathlib/Mathlib/Lean/Linter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Thomas R. Murrills. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas R. Murrills
-/
module

public meta import Lean.Elab.Command
public meta import Lean.Linter.Basic
-- Import this linter explicitly to ensure that
-- this file has a valid copyright header and module docstring.
import Mathlib.Tactic.Linter.Header -- shake: keep

/-!
# Additional utilities and boilerplate for the `Linter` API
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WhenLinterOption.Variant9655ce6bb7403ddcdcadcfeb2e2d62474dc8153a57f04bc71428d19ac4d51e68

public meta section

open Lean Elab Command Linter

namespace Lean.Linter

variable {m : Type → Type} [Monad m] [MonadOptions m] [MonadEnv m]

/--
Runs a `CommandElabM` action when the provided linter option is `true`.

This function assumes you have already called `withSetOptionIn`; use `whenLinterActivated`
to do so automatically. At the start of linter code, `whenLinterActivated` should be preferred when
possible.

Note: this definition is marked as `@[macro_inline]`, so it is okay to supply it with a linter
option which has been registered in the same module.
-/
@[expose, macro_inline]
def whenLinterOption (opt : Lean.Option Bool) (x : m Unit) : m Unit := do
  if getLinterValue opt (← getLinterOptions) then x

/--
Runs a `CommandElabM` action when the provided linter option is `false`.

Note: this definition is marked as `@[macro_inline]`, so it is okay to supply it with a linter
option which has been registered in the same module.
-/
@[expose, macro_inline]
def whenNotLinterOption (opt : Lean.Option Bool) (x : m Unit) : m Unit := do
  unless getLinterValue opt (← getLinterOptions) do x

/--
Processes `set_option ... in`s that wrap the input `stx`, then acts on the inner syntax with
`x` after checking that the provided linter option is `true`.

If `breakOnError` is `true` (the default), avoids running the linter when errors are present.

This is typically used to start off linter code:
```
def myLinter : Linter where
  run := whenLinterActivated linter.myLinter fun stx ↦ do
    ...
```

Note: this definition is marked as `@[macro_inline]`, so it is okay to supply it with a linter
option which has been registered in the same module.
-/
@[expose, macro_inline]
def whenLinterActivated (opt : Lean.Option Bool) (x : CommandElab) (breakOnError := true) :
    CommandElab :=
  withSetOptionIn fun stx => whenLinterOption opt do
    unless ← pure breakOnError <&&> MonadLog.hasErrors do
      x stx

end Lean.Linter
