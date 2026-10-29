# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variant996f042a39a2ead850d3f2466b52002c7d194b2432d75605f345f460cd92cf44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c77d2ac4c05f3f67210ac886dcde61933411eabd` · SHA-256 `996f042a39a2ead850d3f2466b52002c7d194b2432d75605f345f460cd92cf44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

public import Lean.Syntax

@[expose] public section

/-!
# Helper functions for working with typed syntaxes.
-/

namespace Lean

/--
Applies the given function to every subsyntax.

Like `Syntax.replaceM` but for typed syntax.
(Note there are no guarantees of type correctness here.)
-/
def TSyntax.replaceM [Monad M] (f : Syntax → M (Option Syntax)) (stx : TSyntax k) : M (TSyntax k) :=
  .mk <$> stx.1.replaceM f
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbb3a774646ea6a8f45713735bea0c7ecd62085f0665ecac1fd1f8adf39c3cad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant996f042a39a2ead850d3f2466b52002c7d194b2432d75605f345f460cd92cf44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
