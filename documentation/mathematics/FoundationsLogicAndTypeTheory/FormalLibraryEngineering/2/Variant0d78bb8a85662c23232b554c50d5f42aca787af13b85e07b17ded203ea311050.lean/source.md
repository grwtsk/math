# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.2.Variant0d78bb8a85662c23232b554c50d5f42aca787af13b85e07b17ded203ea311050

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3162f432216724a1ad8d61f72530e3232da2b10b` · SHA-256 `0d78bb8a85662c23232b554c50d5f42aca787af13b85e07b17ded203ea311050`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

-- This option would make Aesop time out.
set_option aesop.check.all false

inductive Even : Nat → Prop
| zero : Even Nat.zero
| plus_two {n} : Even n → Even (n + 2)

attribute [aesop safe] Even.zero Even.plus_two

example : Even 500 := by
  aesop (config := { maxRuleApplications := 0, maxRuleApplicationDepth := 0 })
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a46a7b7971e40d0674f7feff9db534ed9c2905c319718c0fa5ad5a98d904e28e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/2/Variant0d78bb8a85662c23232b554c50d5f42aca787af13b85e07b17ded203ea311050.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
