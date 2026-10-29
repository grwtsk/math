# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScriptWithOptions.Variant124874fd4fe7607a753edcafb15287a8a3a778488ddcf6599a686bd6e2b5a2ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e18c0d3bf80efa7ea0c4dc854894afbd074b641` · SHA-256 `124874fd4fe7607a753edcafb15287a8a3a778488ddcf6599a686bd6e2b5a2ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

/--
info: Try this:

  [apply]   simp_all (config := { }) only
-/
#guard_msgs in
example : True := by
  aesop? (config := {}) (simp_config := {})
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdc9cbfc8f637738ebf13a26032a8b026dc1f8530eac736e5242ed6f6ba8b590 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScriptWithOptions/Variant124874fd4fe7607a753edcafb15287a8a3a778488ddcf6599a686bd6e2b5a2ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
