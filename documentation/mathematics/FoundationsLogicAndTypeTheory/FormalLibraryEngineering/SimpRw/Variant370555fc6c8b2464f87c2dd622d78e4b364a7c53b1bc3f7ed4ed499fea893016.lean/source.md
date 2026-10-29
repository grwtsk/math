# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpRw.Variant370555fc6c8b2464f87c2dd622d78e4b364a7c53b1bc3f7ed4ed499fea893016

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e359dbdae83f6fd14496f0bec79bb5b37f869c3` · SHA-256 `370555fc6c8b2464f87c2dd622d78e4b364a7c53b1bc3f7ed4ed499fea893016`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2020 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Mario Carneiro, Alex J. Best
-/

import Lean

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
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d2aa4de4ef37d697db3005959128d638ce95c5cc9387b9300e755d470a61bd0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpRw/Variant370555fc6c8b2464f87c2dd622d78e4b364a7c53b1bc3f7ed4ed499fea893016.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
