# Syntax Public Set Args — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0bce270ab4e4be12b6ced88c25fa4339f6f9e0f` · SHA-256 `f424f13ce4972475cdf3bfebd731b75b6f4ab0e1e5d52b37c3b03ffb6e9a9c55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
module
prelude
public import Init.Prelude
import Init.Data.Array.Set
public section

/-!
# Helper functions for `Syntax`.

These are delayed here to allow some time to bootstrap `Array`.
-/

namespace Lean.Syntax

/--
Updates the argument list without changing the node kind.
Does nothing for non-`node` nodes.
-/
def setArgs (stx : Syntax) (args : Array Syntax) : Syntax :=
  match stx with
  | node info k _ => node info k args
  | stx           => stx

/--
Updates the `i`'th argument of the syntax.
Does nothing for non-`node` nodes, or if `i` is out of bounds of the node list.
-/
def setArg (stx : Syntax) (i : Nat) (arg : Syntax) : Syntax :=
  match stx with
  | node info k args => node info k (args.setIfInBounds i arg)
  | stx              => stx

end Lean.Syntax
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbb5efbf6a8e0257101e857fafb1c65fb96e28b9dd00d4c7b5631adfa9165a07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantf424f13ce4972475cdf3bfebd731b75b6f4ab0e1e5d52b37c3b03ffb6e9a9c55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
