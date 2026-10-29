# Lawful Hashable Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad09888fc660f798249754f33e09631669429540` · SHA-256 `14a5635bf79ab8693d34e2c9dc8166f1ec37de9e5996cab1b03c88ed41d47d19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Core

public section

/--
The `BEq α` and `Hashable α` instances on `α` are compatible. This means that `a == b` implies
`hash a = hash b`.

This is automatic if the `BEq` instance is lawful.
-/
class LawfulHashable (α : Type u) [BEq α] [Hashable α] where
  /-- If `a == b`, then `hash a = hash b`. -/
  hash_eq (a b : α) : a == b → hash a = hash b

/--
A lawful hash function respects its Boolean equality test.
-/
theorem hash_eq [BEq α] [Hashable α] [LawfulHashable α] {a b : α} : a == b → hash a = hash b :=
  LawfulHashable.hash_eq a b

instance (priority := low) [BEq α] [Hashable α] [LawfulBEq α] : LawfulHashable α where
  hash_eq _ _ h := eq_of_beq h ▸ rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17f24a9d0783299dcee75df7067ca321c240fbd0fd8026a74894c0c4aacd1bbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulHashable/Variant14a5635bf79ab8693d34e2c9dc8166f1ec37de9e5996cab1b03c88ed41d47d19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
