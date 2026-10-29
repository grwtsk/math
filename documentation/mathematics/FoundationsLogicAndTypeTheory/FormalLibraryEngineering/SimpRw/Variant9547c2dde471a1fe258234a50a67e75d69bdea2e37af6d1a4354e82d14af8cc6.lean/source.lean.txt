-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithSimpRWRulesSeq.Variant370555fc6c8b2464f87c2dd622d78e4b364a7c53b1bc3f7ed4ed499fea893016","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"370555fc6c8b2464f87c2dd622d78e4b364a7c53b1bc3f7ed4ed499fea893016","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithSimpRWRulesSeq.Variant370555fc6c8b2464f87c2dd622d78e4b364a7c53b1bc3f7ed4ed499fea893016","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"370555fc6c8b2464f87c2dd622d78e4b364a7c53b1bc3f7ed4ed499fea893016","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/SimpRw.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Mario Carneiro, Alex J. Best
-/

import Lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithSimpRWRulesSeq.Variant370555fc6c8b2464f87c2dd622d78e4b364a7c53b1bc3f7ed4ed499fea893016

namespace Mathlib.Tactic

open Lean Parser.Tactic Elab.Tactic

/-- A version of `withRWRulesSeq` (in core) that doesn't attempt to find equation lemmas, and simply
  passes the rw rules on to `x`. -/
def withSimpRWRulesSeq (token : Syntax) (rwRulesSeqStx : Syntax)
  (x : (symm : Bool) → (term : Syntax) → TacticM Unit) : TacticM Unit := do
  let lbrak := rwRulesSeqStx[0]
  let rules := rwRulesSeqStx[1].getArgs
  -- show initial state up to (incl.) `[`
  withTacticInfoContext (mkNullNode #[token, lbrak]) (pure ())
  let numRules := (rules.size + 1) / 2
  for i in [:numRules] do
    let rule := rules[i * 2]!
    let sep  := rules.getD (i * 2 + 1) Syntax.missing
    -- show rule state up to (incl.) next `,`
    withTacticInfoContext (mkNullNode #[rule, sep]) do
      -- show errors on rule
      withRef rule do
        let symm := !rule[0].isNone
        let term := rule[1]
        -- let processId (id : Syntax) : TacticM Unit := do
        x symm term

/--
`simp_rw` functions as a mix of `simp` and `rw`. Like `rw`, it applies each
rewrite rule in the given order, but like `simp` it repeatedly applies these
rules and also under binders like `∀ x, ...`, `∃ x, ...` and `λ x, ...`.
Usage:

- `simp_rw [lemma_1, ..., lemma_n]` will rewrite the goal by applying the
  lemmas in that order. A lemma preceded by `←` is applied in the reverse direction.
- `simp_rw [lemma_1, ..., lemma_n] at h₁ ... hₙ` will rewrite the given hypotheses.
- `simp_rw [...] at *` rewrites in the whole context: all hypotheses and the goal.

Lemmas passed to `simp_rw` must be expressions that are valid arguments to `simp`.
For example, neither `simp` nor `rw` can solve the following, but `simp_rw` can:

```lean
example {a : ℕ}
  (h1 : ∀ a b : ℕ, a - 1 ≤ b ↔ a ≤ b + 1)
  (h2 : ∀ a b : ℕ, a ≤ b ↔ ∀ c, c < a → c < b) :
  (∀ b, a - 1 ≤ b) = ∀ b c : ℕ, c < a → c < b + 1 :=
by simp_rw [h1, h2]
```
-/
elab s:"simp_rw " rws:rwRuleSeq g:(location)? : tactic => do
  evalTactic (← `(tactic| simp%$s (config := { failIfUnchanged := false }) only $g ?))
  withSimpRWRulesSeq s rws fun symm term => do
    evalTactic (← match term with
    | `(term| $e:term) =>
      if symm then
        `(tactic| simp%$e only [←$e:term] $g ?)
      else
        `(tactic| simp%$e only [$e:term] $g ?))
