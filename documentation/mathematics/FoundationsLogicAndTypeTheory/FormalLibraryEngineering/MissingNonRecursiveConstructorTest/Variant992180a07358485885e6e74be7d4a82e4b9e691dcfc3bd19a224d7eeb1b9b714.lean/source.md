# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MissingNonRecursiveConstructorTest.Variant992180a07358485885e6e74be7d4a82e4b9e691dcfc3bd19a224d7eeb1b9b714

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f559923940b040b5fbc58376c133cec46a5d0f40` · SHA-256 `992180a07358485885e6e74be7d4a82e4b9e691dcfc3bd19a224d7eeb1b9b714`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Plausible.Arbitrary
import Plausible.DeriveArbitrary
import Plausible.Attr

open Plausible

/-- A variant of a binary tree datatype where the
    non-recursive `Leaf` constructor is missing.

    We are unable to derive a generator for this type,
    since it is impossible to construct an inhabitant of this type.

    The test below checks that an appropriate error message is emitted
    by the deriving handler. -/
inductive TreeNoLeaf where
  | Node : Nat → TreeNoLeaf → TreeNoLeaf → TreeNoLeaf

set_option trace.plausible.deriving.arbitrary true in
/-- error: derive Arbitrary failed, TreeNoLeaf has no non-recursive constructors -/
#guard_msgs in
deriving instance Arbitrary for TreeNoLeaf
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67c0f8cc59021d5d4d50a292d1c283ef6862496bdbe9fe796c62db5e45a9206e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingNonRecursiveConstructorTest/Variant992180a07358485885e6e74be7d4a82e4b9e691dcfc3bd19a224d7eeb1b9b714.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
