# Partial Public Iter — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e306f4c2d620408ba264a049059da32c5eb6ffe5` · SHA-256 `81eb9fe4a9058d878f8c8b48ad3775ee1af1a7bbb17439ea025def8f6c84b276`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic

set_option linter.missingDocs true

public section

namespace Std

/--
A wrapper around an iterator that provides partial consumers. See `Iter.allowNontermination`.
-/
structure Iter.Partial {α : Type w} (β : Type w) where
  /--
  The wrapped iterator, which was wrapped by `Iter.allowNontermination`.
  -/
  it : Iter (α := α) β

/--
For an iterator `it`, `it.allowNontermination` provides potentially nonterminating variants of
consumers such as `toList`. They can be used without any proof of termination such as `Finite`
or `Productive`, but as they are implemented with the `partial` declaration modifier, they are
opaque for the kernel and it is impossible to prove anything about them.
-/
@[always_inline, inline, deprecated "The consumers on iterators do not require proofs of termination anymore. For example, use `it.toList` instead of `it.allowNontermination.toList`." (since := "2026-01-28")]
def Iter.allowNontermination {α : Type w} {β : Type w}
    (it : Iter (α := α) β) : Iter.Partial (α := α) β :=
  ⟨it⟩

end Std
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dca386d2eb4beacfb6050f8b26408683b0ccd90927a4cc4d9059edd0b55a1cc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Partial/Variant81eb9fe4a9058d878f8c8b48ad3775ee1af1a7bbb17439ea025def8f6c84b276.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
