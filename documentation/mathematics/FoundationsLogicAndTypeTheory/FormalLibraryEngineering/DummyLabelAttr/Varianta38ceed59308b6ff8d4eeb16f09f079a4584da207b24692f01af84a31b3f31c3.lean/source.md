# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DummyLabelAttr.Varianta38ceed59308b6ff8d4eeb16f09f079a4584da207b24692f01af84a31b3f31c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7203be2557abc60502adfe82a943cd5f790a2d2c` · SHA-256 `a38ceed59308b6ff8d4eeb16f09f079a4584da207b24692f01af84a31b3f31c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.LabelAttr

/-- A dummy label attribute, which can be used for testing. -/
-- This can't live in `Std.Tactic.LabelAttr`
-- (because we can't use the extension in the same file it is initialized)
-- and it can't live in `test/`, because files there can not import other files in `test/`.
register_label_attr dummy_label_attr
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0299ac1e4c58fc1c7d2e80ed437f319f8b29d71bc6b8e5b09f205065b11edf65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DummyLabelAttr/Varianta38ceed59308b6ff8d4eeb16f09f079a4584da207b24692f01af84a31b3f31c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
