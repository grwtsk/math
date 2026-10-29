# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant2584d778430d08315d7590290aebabc7ab6415c59126dcb8615e3544b85d6093

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59a10e637cba40c768be5361a63f14bf4c6d08d7` · SHA-256 `2584d778430d08315d7590290aebabc7ab6415c59126dcb8615e3544b85d6093`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Core

public section

namespace Std.Slice

/--
Wrapper structure for slice types that makes generic slice functions available via dot notation.
The implementation of the functions depends on the type `γ` of the internal representation.

Usually, if `γ` is the internal representation of a slice of some type `α`, then `Slice γ` can be
used directly, but one usually creates an abbreviation `AlphaSlice := Slice γ` and provides
`Self (Slice γ) AlphaSlice` and `Sliceable shape α AlphaSlice` instances. Then `AlphaSlice` can
be worked with without ever thinking of `Slice` and it is possible to extend the API with
`α`/`γ`-specific functions.
-/
structure _root_.Std.Slice (γ : Type u) where
  internalRepresentation : γ

/--
This typeclass determines that some type `α` is equal to `β` and that `β` should be used in APIs
instead of `α`.

`Self` is used in the polymorphic slice library.
-/
class Self (α : Type u) (β : outParam (Type u)) where
  eq : α = β := by rfl

end Std.Slice
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00618995c3a929aa7c11f377059a88a53285c0e316bb83e4b5131cecea4607e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2584d778430d08315d7590290aebabc7ab6415c59126dcb8615e3544b85d6093.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
