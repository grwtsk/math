# Basic Basic Public Edition7 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebfb97875820890e8ea4720e8bc79ecd5ca7b230` · SHA-256 `369b448143827845d55f0be502a1661e0d6b039263dfba9a391e455b9a2f461e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Wojciech Nawrocki. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Nawrocki
-/
module

prelude
public import Lean.Elab.InfoTree
public import Lean.Server.InfoUtils

public section

namespace Lean.Widget

open Elab Server

deriving instance TypeName for InfoWithCtx
deriving instance TypeName for LocalContext
deriving instance TypeName for Elab.ContextInfo
deriving instance TypeName for Elab.TermInfo

end Lean.Widget
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e893206391269d600b89f9684e411d7bfacf34164e9eaec200252033a956e671 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant369b448143827845d55f0be502a1661e0d6b039263dfba9a391e455b9a2f461e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
