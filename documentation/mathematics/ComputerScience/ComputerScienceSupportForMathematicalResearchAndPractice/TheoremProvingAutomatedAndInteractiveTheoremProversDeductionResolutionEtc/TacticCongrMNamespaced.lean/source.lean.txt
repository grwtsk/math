-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TermCongr.Variantb7188bf1b7527aba194770a2623766b973c0bf89a392af91435fd8f93eb3e0d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7188bf1b7527aba194770a2623766b973c0bf89a392af91435fd8f93eb3e0d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TermCongr.Variantb7188bf1b7527aba194770a2623766b973c0bf89a392af91435fd8f93eb3e0d4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b7188bf1b7527aba194770a2623766b973c0bf89a392af91435fd8f93eb3e0d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/CongrM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Moritz Doll, Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll, Gabriel Ebner, Damiano Testa, Kyle Miller
-/
import Mathlib.Tactic.TermCongr
import Mathlib.Tactic.WithoutCDot

/-!
# The `congrm` tactic

The `congrm` tactic ("`congr` with matching")
is a convenient frontend for `congr(...)` congruence quotations.
Roughly, `congrm e` is `refine congr(e')`, where `e'` is `e` with every `?m` placeholder
replaced by `$(?m)`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TermCongr.Variantb7188bf1b7527aba194770a2623766b973c0bf89a392af91435fd8f93eb3e0d4

namespace Mathlib.Tactic
open Lean Parser Tactic Elab Tactic Meta

initialize registerTraceClass `Tactic.congrm

/--
`congrm e` is a tactic for proving goals of the form `lhs = rhs`, `lhs ↔ rhs`, `HEq lhs rhs`,
or `R lhs rhs` when `R` is a reflexive relation.
The expression `e` is a pattern containing placeholders `?_`,
and this pattern is matched against `lhs` and `rhs` simultaneously.
These placeholders generate new goals that state that corresponding subexpressions
in `lhs` and `rhs` are equal.
If the placeholders have names, such as `?m`, then the new goals are given tags with those names.

Examples:
```lean
example {a b c d : ℕ} :
    Nat.pred a.succ * (d + (c + a.pred)) = Nat.pred b.succ * (b + (c + d.pred)) := by
  congrm Nat.pred (Nat.succ ?h1) * (?h2 + ?h3)
  /-  Goals left:
  case h1 ⊢ a = b
  case h2 ⊢ d = b
  case h3 ⊢ c + a.pred = c + d.pred
  -/
  sorry
  sorry
  sorry

example {a b : ℕ} (h : a = b) : (fun y : ℕ => ∀ z, a + a = z) = (fun x => ∀ z, b + a = z) := by
  congrm fun x => ∀ w, ?_ + a = w
  -- ⊢ a = b
  exact h
```

The `congrm` command is a convenient frontend to `congr(...)` congruence quotations.
If the goal is an equality, `congrm e` is equivalent to `refine congr(e')` where `e'` is
built from `e` by replacing each placeholder `?m` by `$(?m)`.
The pattern `e` is allowed to contain `$(...)` expressions to immediately substitute
equality proofs into the congruence, just like for congruence quotations.
-/
syntax (name := congrM) "congrm " term : tactic

elab_rules : tactic
  | `(tactic| congrm $expr:term) => do
    -- Wrap all synthetic holes `?m` as `c(?m)` to form `congr(...)` pattern
    let pattern ← expr.raw.replaceM fun stx =>
      if stx.isOfKind ``Parser.Term.syntheticHole then
        pure <| stx.mkAntiquotNode `term
      else if stx.isAntiquots then
        -- Don't look into `$(..)` expressions
        pure stx
      else
        pure none
    trace[Tactic.congrm] "pattern: {pattern}"
    -- Chain together transformations as needed to convert the goal to an Eq if possible.
    liftMetaTactic fun g => do
      return [← (← g.iffOfEq).liftReflToEq]
    -- Apply `congr(...)`
    withMainContext do
      let gStx ← Term.exprToSyntax (← getMainTarget)
      -- Gives the expected type to `refine` as a workaround for its elaboration order.
      evalTactic <| ← `(tactic| refine without_cdot(congr($(⟨pattern⟩)) : $gStx))

end Mathlib.Tactic
