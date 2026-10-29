# Nanos Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c6d177859a891e710de5de3cfdf5ee35e62993d` · SHA-256 `3dbae06eb9ecab0376f6202c2586a81327ef38871773a7c6a35d54b3998c2616`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Data.Json.FromToJson.Basic

public section

open Lean

namespace Aesop

structure Nanos where
  nanos : Nat
  deriving Inhabited, BEq, Ord

namespace Nanos

instance : OfNat Nanos n where
  ofNat := ⟨n⟩

instance : LT Nanos where
  lt | ⟨n₁⟩, ⟨n₂⟩ => n₁ < n₂

instance : DecidableRel (α := Nanos) (· < ·) :=
  λ ⟨n₁⟩ ⟨n₂⟩ => inferInstanceAs (Decidable (n₁ < n₂))

instance : LE Nanos where
  le | ⟨n₁⟩, ⟨n₂⟩ => n₁ ≤ n₂

instance : DecidableRel (α := Nanos) (· ≤ ·) :=
  λ ⟨n₁⟩ ⟨n₂⟩ => inferInstanceAs (Decidable (n₁ ≤ n₂))

instance : Add Nanos where
  add n m := ⟨n.nanos + m.nanos⟩

instance : HDiv Nanos Nat Nanos where
  hDiv n m := ⟨n.nanos / m⟩

instance : ToJson Nanos where
  toJson | ⟨n⟩ => toJson n

def printAsMillis (n : Nanos) : String :=
  let str := toString (n.nanos.toFloat / 1000000)
  match str.splitToList λ c => c == '.' with
  | [beforePoint] => beforePoint ++ "ms"
  | [beforePoint, afterPoint] => beforePoint ++ "." ++ afterPoint.take 1 ++ "ms"
  | _ => unreachable!

end Aesop.Nanos
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6655b9e228d3e7d5a17d95c49f6f2d63238ecd62ee890c4dce86546026b7452 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nanos/Variant3dbae06eb9ecab0376f6202c2586a81327ef38871773a7c6a35d54b3998c2616.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
