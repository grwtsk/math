# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinderNameHint.Variant0eae19e013655b6f6e313f9e65c529849e9089d5ac947cd8616ed01faf26c27f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb8c70ecb5d2b6351696040d459b9362f44b4c10` · SHA-256 `0eae19e013655b6f6e313f9e65c529849e9089d5ac947cd8616ed01faf26c27f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Init.Prelude
import Init.Tactics

public section

set_option linter.unusedVariables false in
/--
The expression `binderNameHint v binder e` defined to be `e`.

If it is used on the right-hand side of an equation that is used for rewriting by `rw` or `simp`,
and `v` is a local variable, and `binder` is an expression that (after beta-reduction) is a binder
(`fun w => …` or `∀ w, …`), then it will rename `v` to the name used in that binder, and remove
the `binderNameHint`.

A typical use of this gadget would be as follows; the gadget ensures that after rewriting, the local
variable is still `name`, and not `x`:
```
theorem all_eq_not_any_not (l : List α) (p : α → Bool) :
    l.all p = !l.any fun x => binderNameHint x p (!p x) := sorry

example (names : List String) : names.all (fun name => "Waldo".isPrefixOf name) = true := by
  rw [all_eq_not_any_not]
  -- ⊢ (!names.any fun name => !"Waldo".isPrefixOf name) = true
```

If `binder` is not a binder, then the name of `v` attains a macro scope. This only matters when the
resulting term is used in a non-hygienic way, e.g. in termination proofs for well-founded recursion.

This gadget is supported by
* `simp`, `dsimp` and `rw` in the right-hand-side of an equation
* `simp` in the assumptions of congruence rules

It is ineffective in other positions (hypotheses of rewrite rules) or when used by other tactics
(e.g. `apply`).
-/
/- One might expect/hope that this was `implicit_reducible` rather than `instance_reducible`.
Currently, the test `tests/elab/binderNameHintSimp.lean` fails (in a stage 2 build) if we make this change. -/
@[simp ↓, expose, implicit_reducible]
def binderNameHint {α : Sort u} {β : Sort v} {γ : Sort w} (v : α) (binder : β) (e : γ) : γ := e
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ccc0515a0344a1b275b3d2325c7a1246b996018c78051b11c805d7829c23d5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinderNameHint/Variant0eae19e013655b6f6e313f9e65c529849e9089d5ac947cd8616ed01faf26c27f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
