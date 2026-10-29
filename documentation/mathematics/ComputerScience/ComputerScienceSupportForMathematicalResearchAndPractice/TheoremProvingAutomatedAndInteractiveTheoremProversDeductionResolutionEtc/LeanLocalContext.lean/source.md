# Lean Local Context — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c410ec6b63e69322c24be905aaa438e8758e621` · SHA-256 `a453de8d62af6c2a84e786a52e4f29bb3fec6e1febd18b5c7ac06bfed2eec795`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.LocalContext

/-!
# Additional methods about `LocalContext`
-/

namespace Lean.LocalContext

universe u v
variable {m : Type u → Type v} [Monad m] [Alternative m]
variable {β : Type u}

/-- Return the result of `f` on the first local declaration on which `f` succeeds. -/
@[specialize] def firstDeclM (lctx : LocalContext) (f : LocalDecl → m β) : m β :=
  do match (← lctx.findDeclM? (optional ∘ f)) with
  | none   => failure
  | some b => pure b

/-- Return the result of `f` on the last local declaration on which `f` succeeds. -/
@[specialize] def lastDeclM (lctx : LocalContext) (f : LocalDecl → m β) : m β :=
  do match (← lctx.findDeclRevM? (optional ∘ f)) with
  | none   => failure
  | some b => pure b

end Lean.LocalContext
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb16fccc4cd60204e2c9d95217cb9e32e11a60fb66fe996521078bfc6efe871d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Varianta453de8d62af6c2a84e786a52e4f29bb3fec6e1febd18b5c7ac06bfed2eec795.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
