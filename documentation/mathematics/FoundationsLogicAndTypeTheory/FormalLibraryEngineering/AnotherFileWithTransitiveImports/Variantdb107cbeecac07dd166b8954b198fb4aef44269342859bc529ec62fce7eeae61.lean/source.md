# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnotherFileWithTransitiveImports.Variantdb107cbeecac07dd166b8954b198fb4aef44269342859bc529ec62fce7eeae61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd9f645316f4ee9cef81538de54711cc8d806191` · SHA-256 `db107cbeecac07dd166b8954b198fb4aef44269342859bc529ec62fce7eeae61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ImportGraph.Tools.ImportDiff
import ImportGraphTest.Unused
import ImportGraphTest.FileWithTransitiveImports

/--
info: The following are already imported (possibly transitively):
ImportGraphTest.FileWithTransitiveImports
---
info: Found 2 additional imports:
ImportGraphTest.FileWithTransitiveImports
ImportGraphTest.Used
-/
#guard_msgs in
#import_diff ImportGraphTest.FileWithTransitiveImports

/--
info: The following are already imported (possibly transitively):
ImportGraphTest.FileWithTransitiveImports
ImportGraphTest.Used
---
info: Found 2 additional imports:
ImportGraphTest.FileWithTransitiveImports
ImportGraphTest.Used
-/
#guard_msgs in
#import_diff ImportGraphTest.FileWithTransitiveImports ImportGraphTest.Used


/-- error: File SomeBogusFilename cannot be found. -/
#guard_msgs in
#import_diff SomeBogusFilename
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1ef12b5c4fb05968dd971b25e0e993ca369d1a8a58a7608e9911255f2954f7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnotherFileWithTransitiveImports/Variantdb107cbeecac07dd166b8954b198fb4aef44269342859bc529ec62fce7eeae61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
