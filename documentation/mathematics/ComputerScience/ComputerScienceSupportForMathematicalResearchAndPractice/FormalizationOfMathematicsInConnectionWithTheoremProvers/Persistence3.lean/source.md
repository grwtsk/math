# Persistence3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2706e018d4d98887d9261b2155a1fccfed019d4e` · SHA-256 `967855bbe5d05ccb2cd84248fef1298bf8f5f080031a46521f17c09039fc1c85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import AesopTest.Persistence1
import AesopTest.Persistence2

set_option aesop.check.all true

namespace Aesop

@[aesop 50% (rule_sets := [test_persistence2])]
def test (b : Bool) : NatOrBool := by
  aesop (rule_sets := [test_persistence1])

end Aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b401760a034d75430fba9cb17eeb8007782b00e15471a8b66b03bcc11dc2028 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Persistence3/Variant967855bbe5d05ccb2cd84248fef1298bf8f5f080031a46521f17c09039fc1c85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
