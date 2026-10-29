# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntrosAllTransparency.Varianta9250cd09ada5422f451c534f902f8f337daa71df26256c72256bdff7789de86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1ca17bc16b78ecb782b6440b11170cc9bd83755` · SHA-256 `a9250cd09ada5422f451c534f902f8f337daa71df26256c72256bdff7789de86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[irreducible] def T := False → True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (config := { terminal := true })

example : T := by
  aesop (config := { introsTransparency? := some .all })
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fb33ac61f7f9b104e3b818d0af6a7be40428201d37245dc60ae89800d94cd4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntrosAllTransparency/Varianta9250cd09ada5422f451c534f902f8f337daa71df26256c72256bdff7789de86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
