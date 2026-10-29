# Warn Apply Iff — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `972b57f3ef8b8de653b8c78ff66352caa0e38996` · SHA-256 `b943f1fabf7ec2448d6671b6fef4b58fc79cc8f20464fca65b778eb0d5503531`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

/--
warning: Apply builder was used for a theorem with conclusion A ↔ B.
You probably want to use the simp builder or create an alias that applies the theorem in one direction.
Use `set_option aesop.warn.applyIff false` to disable this warning.
-/
#guard_msgs in
@[aesop safe apply]
axiom foo : True ↔ True

@[aesop simp]
axiom bar : True ↔ True

set_option aesop.warn.applyIff false in
@[aesop 1% apply]
axiom baz : True ↔ True
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5dc072610f5654879bcd8a574a0cf0ba33871db71b3a0f9afd4f6e0e4e3144c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WarnApplyIff/Variantb943f1fabf7ec2448d6671b6fef4b58fc79cc8f20464fca65b778eb0d5503531.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
