# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardConstant.Variantbf3d6421f4e200213b4e350ee8fc30bab0c171f03704229613018a180ec9f937

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45e1066485e3d14ec17415cbdad022f8748a895f` · SHA-256 `bf3d6421f4e200213b4e350ee8fc30bab0c171f03704229613018a180ec9f937`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

structure Foo where
  foo ::

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : Foo := by
  aesop

example : Foo := by
  aesop (add safe forward Foo.foo)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a99bba75e530ad8fc28adff38a095636c32301cc818354e117e6bb02b38ee99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardConstant/Variantbf3d6421f4e200213b4e350ee8fc30bab0c171f03704229613018a180ec9f937.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
