# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPContext.Variantdf234f43283109cfc9519850534ebd9e7bcfcf0947073a0751b07caca1096566

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32387726ebc1761290969014e751a86a94671aa4` · SHA-256 `df234f43283109cfc9519850534ebd9e7bcfcf0947073a0751b07caca1096566`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Lean.Data.OpenDecl
public import Lean.Environment
public import Lean.MetavarContext

public section

namespace Lean

/-- Saved context for pretty printing. See `Lean.ppExt`. -/
structure PPContext where
  env           : Environment
  mctx          : MetavarContext := {}
  lctx          : LocalContext := {}
  opts          : Options := {}
  currNamespace : Name := Name.anonymous
  openDecls     : List OpenDecl := []

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b1d393ac62ebbe5834ed670ef90605c69b740f56207686e58e9b8994d7de0ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPContext/Variantdf234f43283109cfc9519850534ebd9e7bcfcf0947073a0751b07caca1096566.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
