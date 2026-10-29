# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Char.Variante8643075c8d3337da040b45eb41e191860c7623f391e542772beec9e7f7541a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1a38a6ae72aca5b458b9b158a14d1130ec1908d` · SHA-256 `e8643075c8d3337da040b45eb41e191860c7623f391e542772beec9e7f7541a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Nat.Basic
import Mathlib.Order.Defs.LinearOrder

/-!
# More `Char` instances

This file provides a `LinearOrder` instance on `Char`. `Char` is the type of Unicode scalar values.
Provides an additional definition to truncate a `Char` to `UInt8` and a theorem on conversion to
`Nat`.
-/

/--
Provides a `LinearOrder` instance on `Char`. `Char` is the type of Unicode scalar values.
-/
instance : LinearOrder Char where
  le_refl := fun _ => @le_refl ℕ _ _
  le_trans := fun _ _ _ => @le_trans ℕ _ _ _ _
  le_antisymm := fun _ _ h₁ h₂ => Char.eq_of_val_eq <| UInt32.eq_of_toBitVec_eq <|
    BitVec.le_antisymm h₁ h₂
  lt_iff_le_not_le := fun _ _ => @lt_iff_le_not_le ℕ _ _ _
  le_total := fun _ _ => @le_total ℕ _ _ _
  min := fun a b => if a ≤ b then a else b
  max := fun a b => if a ≤ b then b else a
  toDecidableLE := inferInstance
  toDecidableEq := inferInstance
  toDecidableLT := inferInstance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef641890f4e3d8cc2d2c0884934bd9b311bac07b3bca394ccb30130f381b09a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Char/Variante8643075c8d3337da040b45eb41e191860c7623f391e542772beec9e7f7541a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
