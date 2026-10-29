# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replace.Variant405886712b9e9b00c4d8b4ea62bf46a39d027c6d79f4915d1ad2f591f662dcba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77238ac5ad5ca4fb3c238b4d9d0f43b30b4dfdee` · SHA-256 `405886712b9e9b00c4d8b4ea62bf46a39d027c6d79f4915d1ad2f591f662dcba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Mario Carneiro
-/
import Lean.Elab.Tactic.Basic
import Lean.Elab.Do
import Lean.Meta.Tactic.Clear

namespace Std.Tactic

open Lean Elab.Tactic

/--
Acts like `have`, but removes a hypothesis with the same name as
this one if possible. For example, if the state is:

```lean
f : α → β
h : α
⊢ goal
```

Then after `replace h := f h` the state will be:

```lean
f : α → β
h : β
⊢ goal
```

whereas `have h := f h` would result in:

```lean
f : α → β
h† : α
h : β
⊢ goal
```

This can be used to simulate the `specialize` and `apply at` tactics of Coq.
-/
syntax "replace" haveDecl : tactic

elab_rules : tactic
  | `(tactic| replace $decl:haveDecl) =>
    withMainContext do
      let vars ← Elab.Term.Do.getDoHaveVars <| mkNullNode #[.missing, decl]
      let origLCtx ← getLCtx
      evalTactic $ ← `(tactic| have $decl:haveDecl)
      let mut toClear := #[]
      for fv in vars do
        if let some ldecl := origLCtx.findFromUserName? fv.getId then
          toClear := toClear.push ldecl.fvarId
      liftMetaTactic1 (·.tryClearMany toClear)
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5571a9a368b6f44bdedf6d17d6a681b1a9b38f658eed8e4eec1bb7147abccc78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variant405886712b9e9b00c4d8b4ea62bf46a39d027c6d79f4915d1ad2f591f662dcba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
