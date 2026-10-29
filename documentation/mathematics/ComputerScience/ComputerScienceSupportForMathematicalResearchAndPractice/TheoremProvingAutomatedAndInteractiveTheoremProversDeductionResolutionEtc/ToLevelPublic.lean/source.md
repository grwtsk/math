# To Level Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42eb9a1554290225848ac66cf3f8cce7e0b0fa42` · SHA-256 `72e279385dd3bcd8b83acbf3adac4a9a1ca7680135de9fdc0f28049b3f1b5a77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller, Alex Keizer
-/
module

prelude
public import Lean.Expr

public section

/-!
# `ToLevel` class
This module defines `Lean.ToLevel`, which is the `Lean.Level` analogue to `Lean.ToExpr`.
-/

namespace Lean

/-- A class to create `Level` expressions that denote particular universe levels in Lean.
`Lean.ToLevel.toLevel.{u}` evaluates to a `Lean.Level` term representing `u` -/
class ToLevel.{u} : Type where
  /-- A `Level` that represents the universe level `u`. -/
  toLevel : Level
  /-- A hack to avoid the "unused universe parameter" error.
    We can remove this field pending issue https://github.com/leanprover/lean4/issues/2116 -/
  univ : ∀ (_ : Sort u), True := fun _ => trivial
export ToLevel (toLevel)

instance : ToLevel.{0} where
  toLevel := .zero

instance [ToLevel.{u}] : ToLevel.{u+1} where
  toLevel := .succ toLevel.{u}

/-- `ToLevel` for `max u v`. This is not an instance since it causes divergence. -/
@[instance_reducible]
def ToLevel.max [ToLevel.{u}] [ToLevel.{v}] : ToLevel.{max u v} where
  toLevel := .max toLevel.{u} toLevel.{v}

/-- `ToLevel` for `imax u v`. This is not an instance since it causes divergence. -/
@[instance_reducible]
def ToLevel.imax [ToLevel.{u}] [ToLevel.{v}] : ToLevel.{imax u v} where
  toLevel := .imax toLevel.{u} toLevel.{v}

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ac545d52fa722d4c043e53e2567e26b3e1f420d5f4787523ef4b2d72bbd5d51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLevel/Variant72e279385dd3bcd8b83acbf3adac4a9a1ca7680135de9fdc0f28049b3f1b5a77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
