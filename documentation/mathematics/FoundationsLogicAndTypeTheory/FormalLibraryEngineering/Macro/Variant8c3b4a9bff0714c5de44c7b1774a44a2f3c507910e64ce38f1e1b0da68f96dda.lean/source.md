# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Macro.Variant8c3b4a9bff0714c5de44c7b1774a44a2f3c507910e64ce38f1e1b0da68f96dda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2c51ee4ba6c90a495cf4e225e6cc49b30af6964` · SHA-256 `8c3b4a9bff0714c5de44c7b1774a44a2f3c507910e64ce38f1e1b0da68f96dda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public meta import Init.Meta
public import Init.Notation

public section

namespace Std

syntax:max "f!" interpolatedStr(term) : term

macro_rules
  | `(f! $interpStr) => do interpStr.expandInterpolatedStr (← `(Format)) (← `(Std.format))

end Std
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=213ec456b2e8da2ad5745686f3734a6d13d6746cb9ff7a20e03b238341161ab7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant8c3b4a9bff0714c5de44c7b1774a44a2f3c507910e64ce38f1e1b0da68f96dda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
