# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imports.Variant4d4d808896ffe6bcf741327d16b436265f362fbc6856f02742d3b808c190d15f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbd0f5d36870d4b812c9934dd2c3ff43650b6b2f` · SHA-256 `4d4d808896ffe6bcf741327d16b436265f362fbc6856f02742d3b808c190d15f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import Mathlib.Util.Imports
import Mathlib.Util.WhatsNew

open Lean Meta
#eval show MetaM _ from do
  guard <| (← redundantImports).toArray = #[`Mathlib.Util.Imports, `Mathlib.Util.WhatsNew]

#redundant_imports
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee0e22d16128f2bcdb24b2a28af5b7372c9718be7d428912d368cf92c340eed3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant4d4d808896ffe6bcf741327d16b436265f362fbc6856f02742d3b808c190d15f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
