# Complete source: GRWTSK.Algebra.Qify.Variantc7f676691a22c3245861d292a59c292fe745b2b79dac61ba80b04812f9a3946c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44845aed1df731ac0445139a541d78a6119259e7` · SHA-256 `c7f676691a22c3245861d292a59c292fe745b2b79dac61ba80b04812f9a3946c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Data.Int.CharZero
import Mathlib.Tactic.Qify

example (a b : ℕ) : (a : ℚ) ≤ b ↔ a ≤ b := by qify
example (a b : ℕ) : (a : ℚ) < b ↔ a < b := by qify
example (a b : ℕ) : (a : ℚ) = b ↔ a = b := by qify
example (a b : ℕ) : (a : ℚ) ≠ b ↔ a ≠ b := by qify

example (a b : ℤ) : (a : ℚ) ≤ b ↔ a ≤ b := by qify
example (a b : ℤ) : (a : ℚ) < b ↔ a < b := by qify
example (a b : ℤ) : (a : ℚ) = b ↔ a = b := by qify
example (a b : ℤ) : (a : ℚ) ≠ b ↔ a ≠ b := by qify

example (a b : ℚ≥0) : (a : ℚ) ≤ b ↔ a ≤ b := by qify
example (a b : ℚ≥0) : (a : ℚ) < b ↔ a < b := by qify
example (a b : ℚ≥0) : (a : ℚ) = b ↔ a = b := by qify
example (a b : ℚ≥0) : (a : ℚ) ≠ b ↔ a ≠ b := by qify

example (a b c : ℕ) (h : a - b = c) (hab : b ≤ a) : a = c + b := by
  qify [hab] at h ⊢ -- `zify` does the same thing here.
  exact sub_eq_iff_eq_add.1 h

example (a b c : ℚ≥0) (h : a - b = c) (hab : b ≤ a) : a = c + b := by
  qify [hab] at h ⊢
  exact sub_eq_iff_eq_add.1 h

example (a b c : ℤ) (h : a / b = c) (hab : b ∣ a) (hb : b ≠ 0) : a = c * b := by
  qify [hab] at h hb ⊢
  exact (div_eq_iff hb).1 h

-- Regression test for https://github.com/leanprover-community/mathlib4/issues/7480
example (a b c : ℕ) (h : a / b = c) (hab : b ∣ a) (hb : b ≠ 0) : a = c * b := by
  qify [hab] at h hb ⊢
  exact (div_eq_iff hb).1 h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3dd797521c332607ce85df7c234a4f141a2cd6e2ed9c22b1ea46cdc99798bbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Qify/Variantc7f676691a22c3245861d292a59c292fe745b2b79dac61ba80b04812f9a3946c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
