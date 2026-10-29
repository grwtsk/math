# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Serialize.Varianta1e19d589f0057a16e0a507892ceca0dcddb50f72229cc4fe57071c2ec63a284

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `227ddf4c8aa28b813451a07de9509bd40bcfc316` · SHA-256 `a1e19d589f0057a16e0a507892ceca0dcddb50f72229cc4fe57071c2ec63a284`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import tools.LeanSource.Frontend

public section

/-! # Canonical raw trace serialization -/

open Lean

namespace MathDiscoveryLeanSource

def writeTrace (path : System.FilePath) (trace : RawTrace) : IO Unit := do
  if let some parent := path.parent then
    IO.FS.createDirAll parent
  IO.FS.writeFile path ((toJson trace).compress ++ "\n")

end MathDiscoveryLeanSource
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=599e07091d88b7f6bf04b4873d1656496b62f2272867b9938cd39e27dfde68fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialize/Varianta1e19d589f0057a16e0a507892ceca0dcddb50f72229cc4fe57071c2ec63a284.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
