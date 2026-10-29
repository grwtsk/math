# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DummyLibraryNote.Variant0413470aed04455a709dd8d6d873c35ca580356de4c05de251e2c777d4c56c04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f0901a0779a86c8678eebb41bed2936aef0a628` · SHA-256 `0413470aed04455a709dd8d6d873c35ca580356de4c05de251e2c777d4c56c04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Util.LibraryNote

library_note «test1» /--
1: This is a testnote for testing the library note feature of batteries.
The `#help note` command should be able to find this note when imported.
-/

library_note «test2» /--
2: This is a second testnote for testing the library note feature of batteries.
-/

library_note «temporary note» /--
1: This is a testnote whose label also starts with "te", but gets sorted before "test"
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=543afb9386b67e78be8c6b736933af788c7d62f9f83d955fa7ab953db3b09210 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DummyLibraryNote/Variant0413470aed04455a709dd8d6d873c35ca580356de4c05de251e2c777d4c56c04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
