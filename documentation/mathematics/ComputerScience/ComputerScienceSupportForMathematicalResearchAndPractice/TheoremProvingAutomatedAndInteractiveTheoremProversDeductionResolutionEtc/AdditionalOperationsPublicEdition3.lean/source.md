# Additional Operations Public Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd45fdda3dd5bf131d82471669d3786fec48d3a4` · SHA-256 `2271906d1878af2c482fb6d1c0e33cfcfb432f2aefec36c64b773b5195aeea1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Lean.Data.NameMap.Basic
public import Std.Data.TreeSet.AdditionalOperations

public section

namespace Lean
namespace NameMap

/-- `filterMap f m` filters an `NameMap` and simultaneously modifies the filtered values.

It takes a function `f : Name → α → Option β` and applies `f name` to the value with key `name`.
The resulting entries with non-`none` value are collected to form the output `NameMap`. -/
def filterMap (f : Name → α → Option β) (m : NameMap α) : NameMap β := Std.TreeMap.filterMap f m

end NameMap
end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=535f0040f12dc99da97c0bb13fff7269bbbadb844c903fdaf97d01114382e376 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionalOperations/Variant2271906d1878af2c482fb6d1c0e33cfcfb432f2aefec36c64b773b5195aeea1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
