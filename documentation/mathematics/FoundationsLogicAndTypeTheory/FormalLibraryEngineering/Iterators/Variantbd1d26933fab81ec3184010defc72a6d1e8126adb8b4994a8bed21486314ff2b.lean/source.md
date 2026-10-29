# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterators.Variantbd1d26933fab81ec3184010defc72a6d1e8126adb8b4994a8bed21486314ff2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1093f26d4bb9aaff60b4b0b456819e42a71bbd2` · SHA-256 `bd1d26933fab81ec3184010defc72a6d1e8126adb8b4994a8bed21486314ff2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic
public import Init.Data.Iterators.PostconditionMonad
public import Init.Data.Iterators.Consumers
public import Init.Data.Iterators.Producers
public import Init.Data.Iterators.Combinators
public import Init.Data.Iterators.Lemmas
public import Init.Data.Iterators.ToIterator
public import Init.Data.Iterators.Internal

public section

/-!
# Iterators

See `Std.Data.Iterators` for an overview over the iterator API.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee74fc655787ba15dfe5bbf81a4c6e70805266ae3acda018be3675facec1d602 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Variantbd1d26933fab81ec3184010defc72a6d1e8126adb8b4994a8bed21486314ff2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
