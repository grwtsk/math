# Complete source: GRWTSK.Algebra.UniversalAlgebra.WithBot.Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f523f068f8d40a1afa713dce23981a195b7c2dc3` · SHA-256 `4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/

import Mathlib.Data.Nat.Order.Basic
import Mathlib.Algebra.Order.Monoid.WithTop

#align_import data.nat.with_bot from "leanprover-community/mathlib"@"966e0cf0685c9cedf8a3283ac69eef4d5f2eaca2"

/-!
# `WithBot ℕ`

Lemmas about the type of natural numbers with a bottom element adjoined.
-/


namespace Nat

namespace WithBot

instance : WellFoundedRelation (WithBot ℕ) where
  rel := (· < ·)
  wf := IsWellFounded.wf

theorem add_eq_zero_iff {n m : WithBot ℕ} : n + m = 0 ↔ n = 0 ∧ m = 0 := by
  rcases n, m with ⟨_ | _, _ | _⟩
  any_goals (exact ⟨fun h => Option.noConfusion h, fun h => Option.noConfusion h.1⟩)
  exact ⟨fun h => Option.noConfusion h, fun h => Option.noConfusion h.2⟩
  repeat' erw [WithBot.coe_eq_coe]
  exact add_eq_zero_iff' (zero_le _) (zero_le _)
#align nat.with_bot.add_eq_zero_iff Nat.WithBot.add_eq_zero_iff

theorem add_eq_one_iff {n m : WithBot ℕ} : n + m = 1 ↔ n = 0 ∧ m = 1 ∨ n = 1 ∧ m = 0 := by
  rcases n, m with ⟨_ | _, _ | _⟩
  any_goals refine' ⟨fun h => Option.noConfusion h, fun h => _⟩; aesop
  repeat' erw [WithBot.coe_eq_coe]
  exact Nat.add_eq_one_iff
#align nat.with_bot.add_eq_one_iff Nat.WithBot.add_eq_one_iff

theorem add_eq_two_iff {n m : WithBot ℕ} :
    n + m = 2 ↔ n = 0 ∧ m = 2 ∨ n = 1 ∧ m = 1 ∨ n = 2 ∧ m = 0 := by
  rcases n, m with ⟨_ | _, _ | _⟩
  any_goals refine' ⟨fun h => Option.noConfusion h, fun h => _⟩; aesop
  repeat' erw [WithBot.coe_eq_coe]
  exact Nat.add_eq_two_iff
#align nat.with_bot.add_eq_two_iff Nat.WithBot.add_eq_two_iff

theorem add_eq_three_iff {n m : WithBot ℕ} :
    n + m = 3 ↔ n = 0 ∧ m = 3 ∨ n = 1 ∧ m = 2 ∨ n = 2 ∧ m = 1 ∨ n = 3 ∧ m = 0 := by
  rcases n, m with ⟨_ | _, _ | _⟩
  any_goals refine' ⟨fun h => Option.noConfusion h, fun h => _⟩; aesop
  repeat' erw [WithBot.coe_eq_coe]
  exact Nat.add_eq_three_iff
#align nat.with_bot.add_eq_three_iff Nat.WithBot.add_eq_three_iff

theorem coe_nonneg {n : ℕ} : 0 ≤ (n : WithBot ℕ) := by
  rw [← WithBot.coe_zero]
  exact WithBot.coe_le_coe.mpr (Nat.zero_le n)
#align nat.with_bot.coe_nonneg Nat.WithBot.coe_nonneg

@[simp]
theorem lt_zero_iff (n : WithBot ℕ) : n < 0 ↔ n = ⊥ := by
 refine' Option.casesOn n _ _
 exact of_eq_true (eq_true_of_decide (Eq.refl true))
 intro n
 refine' ⟨fun h => _, fun h => _⟩
 exfalso
 · rw [WithBot.some_eq_coe] at h
   exact not_le_of_lt h WithBot.coe_nonneg
 · rw [h]
   exact of_eq_true (eq_true_of_decide (Eq.refl true))
#align nat.with_bot.lt_zero_iff Nat.WithBot.lt_zero_iff

theorem one_le_iff_zero_lt {x : WithBot ℕ} : 1 ≤ x ↔ 0 < x := by
  refine' ⟨fun h => lt_of_lt_of_le (WithBot.coe_lt_coe.mpr zero_lt_one) h, fun h => _⟩
  induction x using WithBot.recBotCoe
  · exact (not_lt_bot h).elim
  · exact WithBot.coe_le_coe.mpr (Nat.succ_le_iff.mpr (WithBot.coe_lt_coe.mp h))
#align nat.with_bot.one_le_iff_zero_lt Nat.WithBot.one_le_iff_zero_lt

theorem lt_one_iff_le_zero {x : WithBot ℕ} : x < 1 ↔ x ≤ 0 :=
  not_iff_not.mp (by simpa using one_le_iff_zero_lt)
#align nat.with_bot.lt_one_iff_le_zero Nat.WithBot.lt_one_iff_le_zero

theorem add_one_le_of_lt {n m : WithBot ℕ} (h : n < m) : n + 1 ≤ m := by
  cases n
  · exact bot_le
  cases m
  exacts [(not_lt_bot h).elim, WithBot.some_le_some.2 (WithBot.some_lt_some.1 h)]
#align nat.with_bot.add_one_le_of_lt Nat.WithBot.add_one_le_of_lt

end WithBot

end Nat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba78148f9558e1919c7f632fecd2d8f66d4e3845c81e7c67b0a99eb5931cd3e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/WithBot/Variant4686c080904951fe3199d0e668d93b1541d6d6a1f76590785a005ff6c5a152f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
