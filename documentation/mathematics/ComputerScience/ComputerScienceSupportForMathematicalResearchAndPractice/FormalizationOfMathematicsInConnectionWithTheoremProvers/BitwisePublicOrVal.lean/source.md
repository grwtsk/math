# Bitwise Public Or Val — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0a7b17c020b8d9d70785a63e0ee75d0350ff1e9` · SHA-256 `7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.Fin.Basic
import Init.Data.Nat.Bitwise.Lemmas
import Init.Data.Nat.Div.Basic

public section

namespace Fin

@[simp] theorem and_val (a b : Fin n) : (a &&& b).val = a.val &&& b.val :=
  Nat.mod_eq_of_lt (Nat.lt_of_le_of_lt Nat.and_le_left a.isLt)

@[simp] theorem or_val_of_two_pow {w} (a b : Fin (2 ^ w)) : (a ||| b).val = a.val ||| b.val :=
  Nat.mod_eq_of_lt (Nat.or_lt_two_pow a.isLt b.isLt)

@[simp] theorem or_val_of_uInt8Size (a b : Fin UInt8.size) : (a ||| b).val = a.val ||| b.val := or_val_of_two_pow (w := 8) a b
@[simp] theorem or_val_of_uInt16Size (a b : Fin UInt16.size) : (a ||| b).val = a.val ||| b.val := or_val_of_two_pow (w := 16) a b
@[simp] theorem or_val_of_uInt32Size (a b : Fin UInt32.size) : (a ||| b).val = a.val ||| b.val := or_val_of_two_pow (w := 32) a b
@[simp] theorem or_val_of_uInt64Size (a b : Fin UInt64.size) : (a ||| b).val = a.val ||| b.val := or_val_of_two_pow (w := 64) a b
@[simp] theorem or_val_of_uSizeSize (a b : Fin USize.size) : (a ||| b).val = a.val ||| b.val := or_val_of_two_pow a b

theorem or_val (a b : Fin n) : (a ||| b).val = (a.val ||| b.val) % n := rfl

@[simp] theorem xor_val_of_two_pow {w} (a b : Fin (2 ^ w)) : (a ^^^ b).val = a.val ^^^ b.val :=
  Nat.mod_eq_of_lt (Nat.xor_lt_two_pow a.isLt b.isLt)

@[simp] theorem xor_val_of_uInt8Size (a b : Fin UInt8.size) : (a ^^^ b).val = a.val ^^^ b.val := xor_val_of_two_pow (w := 8) a b
@[simp] theorem xor_val_of_uInt16Size (a b : Fin UInt16.size) : (a ^^^ b).val = a.val ^^^ b.val := xor_val_of_two_pow (w := 16) a b
@[simp] theorem xor_val_of_uInt32Size (a b : Fin UInt32.size) : (a ^^^ b).val = a.val ^^^ b.val := xor_val_of_two_pow (w := 32) a b
@[simp] theorem xor_val_of_uInt64Size (a b : Fin UInt64.size) : (a ^^^ b).val = a.val ^^^ b.val := xor_val_of_two_pow (w := 64) a b
@[simp] theorem xor_val_of_uSizeSize (a b : Fin USize.size) : (a ^^^ b).val = a.val ^^^ b.val := xor_val_of_two_pow a b

theorem xor_val (a b : Fin n) : (a ^^^ b).val = (a.val ^^^ b.val) % n := rfl

@[simp] theorem shiftLeft_val (a b : Fin n) : (a <<< b).val = (a.val <<< b.val) % n := rfl

@[simp] theorem shiftRight_val (a b : Fin n) : (a >>> b).val = a.val >>> b.val :=
  Nat.mod_eq_of_lt (Nat.lt_of_le_of_lt (Nat.shiftRight_le _ _) a.isLt)

end Fin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=041f71a9e77d9ac014ef354cc2a14039661baf6bfa85fc978e2fd3e83c7a1af0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
