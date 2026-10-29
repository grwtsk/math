# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TerminalError.Variant6116fa8a506317b0ffddb6dcf473efb3996510b19ea1e2788b3e69bd1beaa379

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a9a96c0ba98727b77ac6986ed6164437fda592f` · SHA-256 `6116fa8a506317b0ffddb6dcf473efb3996510b19ea1e2788b3e69bd1beaa379`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
Initial goal:
  ⊢ False
Remaining goals after safe rules:
  ⊢ False
-/
#guard_msgs in
example : False := by
  aesop (config := { terminal := true })
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32e632399ad8151756f02b8bd605967b4e1267b8d5ebc3bdc8733f958991a881 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminalError/Variant6116fa8a506317b0ffddb6dcf473efb3996510b19ea1e2788b3e69bd1beaa379.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
