# Data Char — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93f5545cfeb2ef935f4f24ce6a80ed3c4bb51e8b` · SHA-256 `aeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.UInt
import Mathlib.Init.Algebra.Order

#align_import data.char from "leanprover-community/mathlib"@"c4658a649d216f57e99621708b09dcb3dcccbd23"

/-!
# More `Char` instances

This file provides a `LinearOrder` instance on `Char`. `Char` is the type of Unicode scalar values.
Provides an additional definition to truncate a `Char` to `UInt8` and a theorem on conversion to
`Nat`.
-/

/-- Convert a character into a `UInt8`, by truncating (reducing modulo 256) if necessary. -/
def Char.toUInt8 (n : Char) : UInt8 := n.1.toUInt8

theorem Char.utf8Size_pos (c : Char) : 0 < c.utf8Size := by
  simp only [utf8Size]
  repeat (split; decide)
  decide

/--
Provides a `LinearOrder` instance on `Char`. `Char` is the type of Unicode scalar values.
-/
instance : LinearOrder Char where
  le_refl := fun _ => @le_refl ℕ _ _
  le_trans := fun _ _ _ => @le_trans ℕ _ _ _ _
  le_antisymm := fun _ _ h₁ h₂ => Char.eq_of_val_eq <| UInt32.eq_of_val_eq <| Fin.ext <|
    @le_antisymm ℕ _ _ _ h₁ h₂
  lt_iff_le_not_le := fun _ _ => @lt_iff_le_not_le ℕ _ _ _
  le_total := fun _ _ => @le_total ℕ _ _ _
  min := fun a b => if a ≤ b then a else b
  max := fun a b => if a ≤ b then b else a
  decidableLE := inferInstance

theorem Char.ofNat_toNat {c : Char} (h : isValidCharNat c.toNat) : Char.ofNat c.toNat = c := by
  rw [Char.ofNat, dif_pos h]
  rfl
#align char.of_nat_to_nat Char.ofNat_toNat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b2c1a7b7bf81b4bacca5c75b50d4b6386e7b792fb81b7e9dbd73a8d3294ed13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
