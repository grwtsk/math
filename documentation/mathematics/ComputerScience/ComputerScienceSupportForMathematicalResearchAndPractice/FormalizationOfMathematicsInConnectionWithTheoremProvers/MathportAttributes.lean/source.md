# Mathport Attributes — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b912a0f9f566daed30b1ce3f4dc3e66855a51240` · SHA-256 `76e1568996176fd4e199deec46030ff44de3db6cffdfbdba851c5da3b70838d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Attributes

namespace Lean.Attr

initialize substAttr : TagAttribute ← registerTagAttribute `subst "substitution"

initialize hintTacticAttr : TagAttribute ←
  registerTagAttribute `hint_tactic "A tactic that should be tried by `hint`."
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4df08ab5f0e54275251f6fbdf9dfb86f9cf0a889a9e02f9ba02e0292ee61e86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant76e1568996176fd4e199deec46030ff44de3db6cffdfbdba851c5da3b70838d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
