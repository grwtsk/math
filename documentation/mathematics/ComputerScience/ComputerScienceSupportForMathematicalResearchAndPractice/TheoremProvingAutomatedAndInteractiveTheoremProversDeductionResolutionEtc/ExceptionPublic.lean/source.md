# Exception Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `531a7c13a949e5bc850ae03fb1e24863d1d4ebd7` · SHA-256 `1eae03b3c64d6d73ca03fafd81eecfcd1e6d6fb4540b9238313817e43fd705ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Exception

public section

open Lean

namespace Aesop

scoped macro "declare_aesop_exception"
    excName:ident idName:ident testName:ident : command =>
  `(initialize $idName : InternalExceptionId ←
      Lean.registerInternalExceptionId $(quote $ `Aesop ++ excName.getId)

    def $excName : Exception :=
      .internal $idName

    def $testName : Exception → Bool
      | .internal id _ => id == $idName
      | _ => false)

end Aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f10a871d9344aa0771873a04757687e2ee3d4a0b91d10b98f3a63b89a7e98580 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant1eae03b3c64d6d73ca03fafd81eecfcd1e6d6fb4540b9238313817e43fd705ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
