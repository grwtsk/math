# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variantfc370ee3bd509d6b7edb3aa37be460ca326fc0613a071cfdd7228fa3849f0c17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ca4a86975928f1d9c32e31339600004968c3fcc` · SHA-256 `fc370ee3bd509d6b7edb3aa37be460ca326fc0613a071cfdd7228fa3849f0c17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Geoffrey Irving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Geoffrey Irving
-/

import Mathlib.Init
import Aesop.Frontend.Command

/-!
# Bound Rule Set

This module defines the `Bound` Aesop rule set which is used by the
`bound` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/

declare_aesop_rule_sets [Bound]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eac0066b81049f975747283b538e3da3213845dac66033d4a0a33742088d234c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variantfc370ee3bd509d6b7edb3aa37be460ca326fc0613a071cfdd7228fa3849f0c17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
