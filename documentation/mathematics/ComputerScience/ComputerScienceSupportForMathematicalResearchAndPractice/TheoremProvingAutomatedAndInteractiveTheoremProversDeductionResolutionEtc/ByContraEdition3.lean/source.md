# By Contra Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c04034caa40f4e12366d11f71094681e0b5b3afc` · SHA-256 `e0ea8a78a3e4b4f5a07c66f6bbfa269ea8774ad9e28654433efc41491817291f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard
-/
import Batteries.Tactic.Init
import Mathlib.Tactic.Push

/-!
# The `by_contra` tactic

The `by_contra!` tactic is a variant of the `by_contra` tactic, for proofs of contradiction.
-/

open Lean Lean.Parser Parser.Tactic Elab Command Elab.Tactic Meta

/--
If the target of the main goal is a proposition `p`,
`by_contra!` reduces the goal to proving `False` using the additional hypothesis `this : ¬ p`.
`by_contra! h` can be used to name the hypothesis `h : ¬ p`.
The hypothesis `¬ p` will be negation normalized using `push_neg`.
For instance, `¬ a < b` will be changed to `b ≤ a`.
`by_contra! h : q` will normalize negations in `¬ p`, normalize negations in `q`,
and then check that the two normalized forms are equal.
The resulting hypothesis is the pre-normalized form, `q`.
If the name `h` is not explicitly provided, then `this` will be used as name.
This tactic uses classical reasoning.
It is a variant on the tactic `by_contra`.
Examples:
```lean
example : 1 < 2 := by
  by_contra! h
  -- h : 2 ≤ 1 ⊢ False

example : 1 < 2 := by
  by_contra! h : ¬ 1 < 2
  -- h : ¬ 1 < 2 ⊢ False
```
-/
syntax (name := byContra!) "by_contra!" (ppSpace colGt binderIdent)? Term.optType : tactic

macro_rules
  | `(tactic| by_contra! $[: $ty]?) =>
    `(tactic| by_contra! $(mkIdent `this):ident $[: $ty]?)
  | `(tactic| by_contra! _%$under $[: $ty]?) =>
    `(tactic| by_contra! $(mkIdentFrom under `this):ident $[: $ty]?)
  | `(tactic| by_contra! $e:ident) => `(tactic| (by_contra $e:ident; try push_neg at $e:ident))
  | `(tactic| by_contra! $e:ident : $y) => `(tactic|
       (by_contra! h
        -- if the below `exact` call fails then this tactic should fail with the message
        -- tactic failed: <goal type> and <type of h> are not definitionally equal
        have $e:ident : $y := by { (try push_neg); exact h }
        clear h))
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa4ea937255c3b865c1663056cf71067db2f77001849fe414d2a527a1f3571b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByContra/Variante0ea8a78a3e4b4f5a07c66f6bbfa269ea8774ad9e28654433efc41491817291f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
