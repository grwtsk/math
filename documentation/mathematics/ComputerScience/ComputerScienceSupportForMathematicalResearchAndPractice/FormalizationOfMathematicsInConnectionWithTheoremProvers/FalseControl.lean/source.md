# False Control — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6598b4884cc76a6b5c342ca737901f97d428eee8` · SHA-256 `5ac1423f715252792897107925092f568482a751a8c25e38c3b7055394b9a5a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.C1
open C2
/- Expected checker failure: false arithmetic must not be admitted. -/
example : unsigned (digits 1) = some 2 := by decide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f314ed4584e3778c0dad4226b00092fac68494491df28348ea42715d548ce33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FalseControl/Variant5ac1423f715252792897107925092f568482a751a8c25e38c3b7055394b9a5a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
