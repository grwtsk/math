# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unreachable.Variant5f130b72a971acfc287ebd903e8973a61d83211fb006fb818a7b3823998a1b62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94c2bb892a905ae201133d02001a9a339a027673` · SHA-256 `5f130b72a971acfc287ebd903e8973a61d83211fb006fb818a7b3823998a1b62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.ElabRules

namespace Std.Tactic

/--
This tactic causes a panic when run (at compile time).
(This is distinct from `exact unreachable!`, which inserts code which will panic at run time.)

It is intended for tests to assert that a tactic will never be executed, which is otherwise an
unusual thing to do (and the `unreachableTactic` linter will give a warning if you do).

The `unreachableTactic` linter has a special exception for uses of `unreachable!`.
```
example : True := by trivial <;> unreachable!
```
-/
elab (name := unreachable) "unreachable!" : tactic => do
  panic! "unreachable tactic has been reached"
  -- Note that `panic!` does not actually halt execution or early exit,
  -- so we still have to throw an error after panicking.
  throwError "unreachable tactic has been reached"

@[inherit_doc unreachable] macro (name := unreachableConv) "unreachable!" : conv =>
  `(conv| tactic' => unreachable!)
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3100ee629379bee2ea47be0e40d9b8f058a21dd8bc800723975ad761c94c9bd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unreachable/Variant5f130b72a971acfc287ebd903e8973a61d83211fb006fb818a7b3823998a1b62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
