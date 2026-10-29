# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.CharZero.Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2580be563498e91e4d37bb9d51c7e9674190d71d` · SHA-256 `9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Group.Support
import Mathlib.Data.Int.Cast.Field
import Mathlib.Data.Int.Cast.Lemmas
import Mathlib.Data.Int.Cast.Pi

/-!
# Injectivity of `Int.Cast` into characteristic zero rings and fields.

-/

open Nat Set

variable {α β : Type*}

namespace Int

@[simp, norm_cast]
theorem cast_div_charZero {k : Type*} [DivisionRing k] [CharZero k] {m n : ℤ} (n_dvd : n ∣ m) :
    ((m / n : ℤ) : k) = m / n := by
  rcases eq_or_ne n 0 with (rfl | hn)
  · simp [Int.ediv_zero]
  · exact cast_div n_dvd (cast_ne_zero.mpr hn)

-- Necessary for confluence with `ofNat_ediv` and `cast_div_charZero`.
@[simp, norm_cast]
theorem cast_div_ofNat_charZero {k : Type*} [DivisionRing k] [CharZero k] {m n : ℕ}
    (n_dvd : n ∣ m) : (((m : ℤ) / (n : ℤ) : ℤ) : k) = m / n := by
  rw [cast_div_charZero (Int.ofNat_dvd.mpr n_dvd), cast_natCast, cast_natCast]

end Int

theorem RingHom.injective_int {α : Type*} [NonAssocRing α] (f : ℤ →+* α) [CharZero α] :
    Function.Injective f :=
  Subsingleton.elim (Int.castRingHom _) f ▸ Int.cast_injective

namespace Function
variable [AddGroupWithOne β] [CharZero β] {n : ℤ}

lemma support_intCast (hn : n ≠ 0) : support (n : α → β) = univ :=
  support_const <| Int.cast_ne_zero.2 hn

lemma mulSupport_intCast (hn : n ≠ 1) : mulSupport (n : α → β) = univ :=
  mulSupport_const <| Int.cast_ne_one.2 hn

end Function
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e149aa7f9c3c58dc119e601e907e2e87646ed98e34b0895215cbef2a9102e806 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
