# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Serialize.Variantb88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a65aa4677ace30e9ab5ab4e210959d3fbdcf4dac` · SHA-256 `b88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import tools.LeanSource.Frontend

public section

/-! # Canonical raw trace serialization -/

open Lean

namespace MathematicsLeanSource

def writeTrace (path : System.FilePath) (trace : RawTrace) : IO Unit := do
  if let some parent := path.parent then
    IO.FS.createDirAll parent
  IO.FS.writeFile path ((toJson trace).compress ++ "\n")

end MathematicsLeanSource
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0da3f08c5b04ca3a357156f008d8f3aa9fec15c0efe791c6feb6ef75424e0e94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialize/Variantb88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
