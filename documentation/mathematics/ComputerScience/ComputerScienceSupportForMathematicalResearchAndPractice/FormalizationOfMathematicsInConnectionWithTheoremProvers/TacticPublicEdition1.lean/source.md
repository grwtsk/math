# Tactic Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c83fcacebb4a12c5463a52c74dab1df21f67196b` · SHA-256 `052889108dd0a1847c165ccf0ee9fe6e2ad51f154bb0f7001f22bb883059220d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Init.Notation

public section

namespace Lean.Order
/--
`monotonicity` performs one compositional step solving `monotone` goals,
using lemma tagged with `@[partial_fixpoint_monotone]`.

This tactic is mostly used internally by lean in `partial_fixpoint` definitions, but
can be useful on its own for debugging or when proving new `@[partial_fixpoint_monotone]` lemmas.
-/
scoped syntax (name := monotonicity) "monotonicity" : tactic

end Lean.Order
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3157186884ad9a0cf5fdba6da1ff98b32bfc56dbde8efd37de9af9cc6537d66a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant052889108dd0a1847c165ccf0ee9fe6e2ad51f154bb0f7001f22bb883059220d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
