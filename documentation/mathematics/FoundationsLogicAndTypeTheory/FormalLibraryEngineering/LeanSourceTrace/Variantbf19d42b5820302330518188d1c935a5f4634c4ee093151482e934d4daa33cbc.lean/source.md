# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanSourceTrace.Variantbf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11f7da7050e92bbf320163230e3a7ef67e8a3165` · SHA-256 `bf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import all Lean
import all Lean.Elab.Extra
import all Lean.Elab.BuiltinTerm
import all tools.LeanSource.Cli

public section

/-! # Pinned Lean source-command tracer -/

private def mainAction (args : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  MathDiscoveryLeanSource.run args

def main (args : List String) : IO Unit := mainAction args
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1523166f82dc198cbf00b2aa8e3680bd981e645037b85d29dbf8668177d1ea8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanSourceTrace/Variantbf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
