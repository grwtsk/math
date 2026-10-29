# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetLike.Variant5416b7e5dddfc7b1f12191705915811f64bce9ee4e87109b00d7f552ca89b166

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f55f3606d7d7ed2c1dfac877668892a41778bac` · SHA-256 `5416b7e5dddfc7b1f12191705915811f64bce9ee4e87109b00d7f552ca89b166`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

import Mathlib.Init
import Aesop

/-!
# SetLike Rule Set

This module defines the `SetLike` Aesop rule set which is used by the
`SetLike` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/

declare_aesop_rule_sets [SetLike] (default := true)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1e2c6220a0009b59ebbf1b18f1c8c979a8482a6b00f6f5422c155e485083333 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetLike/Variant5416b7e5dddfc7b1f12191705915811f64bce9ee4e87109b00d7f552ca89b166.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
