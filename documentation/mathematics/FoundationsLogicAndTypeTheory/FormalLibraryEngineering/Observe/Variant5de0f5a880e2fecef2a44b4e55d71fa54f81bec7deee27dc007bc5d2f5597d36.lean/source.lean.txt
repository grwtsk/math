-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThis.Variante915ed7b6e6d728e166e267b2c85c9763dbd5c64e14bfa055bec1a76f52ef5fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e915ed7b6e6d728e166e267b2c85c9763dbd5c64e14bfa055bec1a76f52ef5fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TryThis.Variante915ed7b6e6d728e166e267b2c85c9763dbd5c64e14bfa055bec1a76f52ef5fc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e915ed7b6e6d728e166e267b2c85c9763dbd5c64e14bfa055bec1a76f52ef5fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Observe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Init
import Lean.Meta.Tactic.TryThis
import Lean.Elab.Tactic.ElabTerm
import Lean.Meta.Tactic.LibrarySearch

/-!
# The `observe` tactic.

`observe hp : p` asserts the proposition `p`, and tries to prove it using `exact?`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThis.Variante915ed7b6e6d728e166e267b2c85c9763dbd5c64e14bfa055bec1a76f52ef5fc

namespace Mathlib.Tactic.LibrarySearch

open Lean Meta Elab Tactic Meta.Tactic.TryThis LibrarySearch

/-- `observe hp : p` asserts the proposition `p`, and tries to prove it using `exact?`.
If no proof is found, the tactic fails.
In other words, this tactic is equivalent to `have hp : p := by exact?`.

If `hp` is omitted, then the placeholder `this` is used.

The variant `observe? hp : p` will emit a trace message of the form `have hp : p := proof_term`.
This may be particularly useful to speed up proofs. -/
syntax (name := observe) "observe" "?"? (ppSpace ident)? " : " term
  (" using " (colGt term),+)? : tactic

elab_rules : tactic |
  `(tactic| observe%$tk $[?%$trace]? $[$n?:ident]? : $t:term $[using $[$required:term],*]?) => do
  let name : Name := match n? with
    | none   => `this
    | some n => n.getId
  withMainContext do
    let (type, _) ← elabTermWithHoles t none (← getMainTag) true
    let .mvar goal ← mkFreshExprMVar type | failure
    if let some _ ← librarySearch goal then
      reportOutOfHeartbeats `library_search tk
      throwError "observe did not find a solution"
    else
      let v := (← instantiateMVars (mkMVar goal)).headBeta
      if trace.isSome then
        addHaveSuggestion tk (some name) type v (checkState? := (← saveState))
      let (_, newGoal) ← (← getMainGoal).note name v
      replaceMainGoal [newGoal]

@[inherit_doc observe] macro "observe?" h:(ppSpace ident)? " : " t:term : tactic =>
  `(tactic| observe ? $[$h]? : $t)

@[inherit_doc observe]
macro "observe?" h:(ppSpace ident)? " : " t:term " using " terms:(colGt term),+ : tactic =>
  `(tactic| observe ? $[$h]? : $t using $[$terms],*)

end Mathlib.Tactic.LibrarySearch
