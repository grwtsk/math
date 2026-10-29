# Dummy Label Attr Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d996128a73ba293e692ec0cbc997aa4f6232ce24` · SHA-256 `ea62452093603b9caa47e0cdc54445cd9d734dae00bed8a187558e81f6119cb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Lean.LabelAttribute

/-- A dummy label attribute, which can be used for testing. -/
-- This can't live in `Batteries.Tactic.LabelAttr`
-- (because we can't use the extension in the same file it is initialized)
-- and it can't live in `test/`, because files there can not import other files in `test/`.
register_label_attr dummy_label_attr
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3ac0a17b6db20f013650f4971a3ef6169d8feb8b8c11d1ae863c4a0da0f0ade -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DummyLabelAttr/Variantea62452093603b9caa47e0cdc54445cd9d734dae00bed8a187558e81f6119cb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
