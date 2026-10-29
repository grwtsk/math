# Monad Backtrack Public Without Modifying State — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f45ee21e4b05ba7d649ff0757a2b532c543dd1b` · SHA-256 `0cd6f3af1933f15cb54a2bf70d27f86225e1711f5fea9c9e12d892bdb18851f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Util.MonadBacktrack

@[expose] public section

namespace Lean

/--
Execute the action `x`, then restore the initial state. Returns the state after
`x` finished.
-/
def withoutModifyingState' [Monad m] [MonadBacktrack s m] [MonadFinally m]
    (x : m α) : m (α × s) :=
  withoutModifyingState do
    let result ← x
    let finalState ← saveState
    return (result, finalState)

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=253af4c2ad125354a8310f135199c06518df6ced1079436769d2df870f02d9c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variant0cd6f3af1933f15cb54a2bf70d27f86225e1711f5fea9c9e12d892bdb18851f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
