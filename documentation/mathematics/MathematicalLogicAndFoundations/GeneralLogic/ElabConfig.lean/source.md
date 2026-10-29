# Elab Config — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d55907fd5968b1ffa30ff8c4c3c4efa580eb89b2` · SHA-256 `e594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

/-- error: `noSuchOption` is not a field of structure `Aesop.Options` -/
#guard_msgs in
example : True := by
  aesop (config := { noSuchOption := true })

/-- error: `noSuchOption` is not a field of structure `Lean.Meta.Simp.ConfigCtx` -/
#guard_msgs in
example : True := by
  aesop (simp_config := { noSuchOption := true })
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad1ba09e659aefc5fbc5ba6568c1e4e1ab569fc4495c727b026de624d451a816 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabConfig/Variante594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
