# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MacroTrace.Variant6ff2e769e127f9c626d7c2aaf6db1167f3f6abaf0a665655ec442f389b5bbf74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05370281fb38d228d068bcfb106256fc96d0b6df` · SHA-256 `6ff2e769e127f9c626d7c2aaf6db1167f3f6abaf0a665655ec442f389b5bbf74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura

Extra notation that depends on Init/Meta
-/

module

prelude
public meta import Init.Meta
public import Init.Notation
import Init.Data.ToString.Macro

public section

namespace Lean

macro "Macro.trace[" id:ident "]" s:interpolatedStr(term) : term =>
  `(Macro.trace $(quote id.getId.eraseMacroScopes) (s! $s))

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1612a45aa19f9031b0179d7168a62fd56af92a3a7b6ca6c27941241ea303394f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroTrace/Variant6ff2e769e127f9c626d7c2aaf6db1167f3f6abaf0a665655ec442f389b5bbf74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
