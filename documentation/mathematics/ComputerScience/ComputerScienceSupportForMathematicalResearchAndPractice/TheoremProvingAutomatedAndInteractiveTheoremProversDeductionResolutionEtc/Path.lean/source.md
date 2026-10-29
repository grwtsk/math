# Path — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9488c0dc8dc5d51ee0c66f1af4ca967a9117ea1` · SHA-256 `e9ea2765ac2ed29ca54f285f17b0c314ce4ca8fc1348e7e0ffd010cf2a0aed12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.Term

/-!
# `compile_time_search_path%` term elaborator.

Use this as `searchPathRef.set compile_time_search_path%`.
-/

open Lean System

-- Ideally this instance would be constructed simply by `deriving instance ToExpr for FilePath`
-- but for now we have decided not to upstream the `ToExpr` derive handler from `Mathlib`.
-- https://leanprover.zulipchat.com/#narrow/stream/348111-std4/topic/ToExpr.20derive.20handler/near/386476438
instance : ToExpr FilePath where
  toTypeExpr := mkConst ``FilePath
  toExpr path := mkApp (mkConst ``FilePath.mk) (toExpr path.1)

/--
Term elaborator that retrieves the current `SearchPath`.

Typical usage is `searchPathRef.set compile_time_search_path%`.

This must not be used in files that are potentially compiled on another machine and then
imported.
(That is, if used in an imported file it will embed the search path from whichever machine
compiled the `.olean`.)
-/
elab "compile_time_search_path%" : term =>
  return toExpr (← searchPathRef.get)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbf5cc290b93d1099fe70e73acc8159d5dc87f11a70ba8293359f98128fd628c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variante9ea2765ac2ed29ca54f285f17b0c314ce4ca8fc1348e7e0ffd010cf2a0aed12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
