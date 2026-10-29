# LOption Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf1fd9411d853947ecb6e618354a39a44f77ee03` · SHA-256 `25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.String.Basic

public section
universe u

open Lean

namespace Lean

inductive LOption (α : Type u) where
  | none  : LOption α
  | some  : α → LOption α
  | undef : LOption α
  deriving Inhabited, BEq

instance [ToString α] : ToString (LOption α) where
  toString
    | .none   => "none"
    | .undef  => "undef"
    | .some a => "(some " ++ toString a ++ ")"

def LOption.toOption : LOption α → Option α
  | .some a => .some a
  | _ => .none

def Option.toLOption {α : Type u} : Option α → LOption α
  | none   => .none
  | some a => .some a

@[inline] def toLOptionM {α} {m : Type → Type} [Monad m] (x : m (Option α)) : m (LOption α) := do
  let b ← x
  return b.toLOption

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b151c164e4611756e330802aded208650686ca0d7d4a8fba170d4be1dec31bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
