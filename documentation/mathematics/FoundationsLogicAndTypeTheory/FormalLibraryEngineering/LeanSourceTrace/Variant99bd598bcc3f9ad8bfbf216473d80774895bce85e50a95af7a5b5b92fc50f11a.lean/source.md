# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanSourceTrace.Variant99bd598bcc3f9ad8bfbf216473d80774895bce85e50a95af7a5b5b92fc50f11a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27cf172e129107210af5f571002788762202d7ee` · SHA-256 `99bd598bcc3f9ad8bfbf216473d80774895bce85e50a95af7a5b5b92fc50f11a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  MathematicsLeanSource.run args

def main (args : List String) : IO Unit := mainAction args
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8f95d7c2d08146bb6537a81662924e7f0c1c196a37bf6fcd4b8f92d1259c66b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanSourceTrace/Variant99bd598bcc3f9ad8bfbf216473d80774895bce85e50a95af7a5b5b92fc50f11a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
