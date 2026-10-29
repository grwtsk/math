# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Contrapose.Variant578a3d03c068e9c1b69698a20a92baa96944f7ef16dd57fb535f80e51f118c40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e52a9915dfc1a7db35e4cd226d1760de6fe22b84` · SHA-256 `578a3d03c068e9c1b69698a20a92baa96944f7ef16dd57fb535f80e51f118c40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

import Mathlib.Tactic.Push

/-! # Contrapose

The `contrapose` tactic transforms the goal into its contrapositive when that goal is an
implication.

* `contrapose`     turns a goal `P → Q` into `¬ Q → ¬ P`
* `contrapose!`    turns a goal `P → Q` into `¬ Q → ¬ P` and pushes negations inside `P` and `Q`
  using `push_neg`
* `contrapose h`   first reverts the local assumption `h`, and then uses `contrapose` and `intro h`
* `contrapose! h`  first reverts the local assumption `h`, and then uses `contrapose!` and `intro h`
* `contrapose h with new_h` uses the name `new_h` for the introduced hypothesis

-/
namespace Mathlib.Tactic.Contrapose

lemma mtr {p q : Prop} : (¬ q → ¬ p) → (p → q) := fun h hp ↦ by_contra (fun h' ↦ h h' hp)

/--
Transforms the goal into its contrapositive.
* `contrapose`     turns a goal `P → Q` into `¬ Q → ¬ P`
* `contrapose h`   first reverts the local assumption `h`, and then uses `contrapose` and `intro h`
* `contrapose h with new_h` uses the name `new_h` for the introduced hypothesis
-/
syntax (name := contrapose) "contrapose" (ppSpace colGt ident (" with " ident)?)? : tactic
macro_rules
  | `(tactic| contrapose) => `(tactic| (refine mtr ?_))
  | `(tactic| contrapose $e) => `(tactic| (revert $e:ident; contrapose; intro $e:ident))
  | `(tactic| contrapose $e with $e') => `(tactic| (revert $e:ident; contrapose; intro $e':ident))

/--
Transforms the goal into its contrapositive and uses pushes negations inside `P` and `Q`.
Usage matches `contrapose`
-/
syntax (name := contrapose!) "contrapose!" (ppSpace colGt ident (" with " ident)?)? : tactic
macro_rules
  | `(tactic| contrapose!) => `(tactic| (contrapose; try push_neg))
  | `(tactic| contrapose! $e) => `(tactic| (revert $e:ident; contrapose!; intro $e:ident))
  | `(tactic| contrapose! $e with $e') => `(tactic| (revert $e:ident; contrapose!; intro $e':ident))

end Mathlib.Tactic.Contrapose
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=570f9917863b3ddaa5f72d335cf0db0a381817bec72128ae596a702588825cd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contrapose/Variant578a3d03c068e9c1b69698a20a92baa96944f7ef16dd57fb535f80e51f118c40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
