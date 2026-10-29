# Dummy Library Note2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3f4a8edc2fc5ea48e600bdfac5f853aed2bf2aa` · SHA-256 `c3db2b7e2c9fc0eea006ec3f1942138bd1f3cf43d98e5204f616da859107da26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BatteriesTest.Internal.DummyLibraryNote

library_note «test3» /--
3: this is a note in a different file importing the above testnotes,
but still imported by the actual testfile.
-/

library_note «Test» /--
1: this is a testnote with a label starting with "Te"
-/

library_note «Other» /--
1: this is a testnote with a label not starting with "te",
so it shouldn't appear when looking for notes with label starting with "te".
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c96028013e94907907d07d8228dc6188f298befbb8684e95f22e05eba4fc4688 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DummyLibraryNote2/Variantc3db2b7e2c9fc0eea006ec3f1942138bd1f3cf43d98e5204f616da859107da26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
