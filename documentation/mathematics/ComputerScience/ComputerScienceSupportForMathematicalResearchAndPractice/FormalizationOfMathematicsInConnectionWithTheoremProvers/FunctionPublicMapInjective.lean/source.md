# Function Public Map Injective — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1735a438a2aa87c2da2ad993e267d3b73da5742` · SHA-256 `1d257ac17db23ea7d125ffb56c43a409b6d48e5aa1b0b2cfb0fbaa8ef71d27d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.Function
import Init.NotationExtra

public section

namespace Option

theorem map_injective {f : α → β} (hf : Function.Injective f) :
    Function.Injective (Option.map f) := by
  intros a b hab
  cases a <;> cases b
  · simp
  · simp at hab
  · simp at hab
  · simp only [map_some, some.injEq] at hab
    simpa using hf hab

end Option
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82b2797211ae9b13b850bbd240b8cab3561356f8b1e9171ec9e152d95aa229c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant1d257ac17db23ea7d125ffb56c43a409b6d48e5aa1b0b2cfb0fbaa8ef71d27d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
