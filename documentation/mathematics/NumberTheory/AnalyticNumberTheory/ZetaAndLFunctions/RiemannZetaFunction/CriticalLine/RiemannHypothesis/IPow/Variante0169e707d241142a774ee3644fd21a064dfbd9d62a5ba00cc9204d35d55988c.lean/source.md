# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IPow.Variante0169e707d241142a774ee3644fd21a064dfbd9d62a5ba00cc9204d35d55988c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a93e439e4725f41a3023faf8bf4632a9eb60eb0` · SHA-256 `e0169e707d241142a774ee3644fd21a064dfbd9d62a5ba00cc9204d35d55988c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Basic.Complex.Basic

/-!
# Tests for `simp`-reduction about `I ^ _`.
-/

open Complex

-- simp can reduce I ^ n for literal nats n, as well as literal ints n, but not for variables n.
example : I ^ 4 = 1 := by simp
example : I ^ 5 = I := by simp
example : I ^ 100 = 1 := by simp

example : I ^ 3 = -I := by simp

example : I ^ (4 : ℤ) = 1 := by simp
example : I ^ (5 : ℤ) = I := by simp
example : I ^ (-4 : ℤ) = 1 := by simp
example : I ^ (-5 : ℤ) = -I := by simp
example : I ^ (-6 : ℤ) = -1 := by simp
example : I ^ (-7 : ℤ) = I := by simp
example : I ^ (-100 : ℤ) = 1 := by simp

/-- error: `simp` made no progress -/
#guard_msgs in
example {n : ℕ} : I ^ n = I ^ (n % 4) := by simp

-- the appropriate simp only sequence can reduce I ^ n for literal nats n
example : I ^ 5 = I := by simp only [I_pow_eq_pow_mod', Nat.reduceMod, pow_one]
example : I ^ 6 = -1 := by simp only [I_pow_eq_pow_mod', Nat.reduceMod, I_sq]
example : I ^ 7 = -I := by simp only [I_pow_eq_pow_mod', Nat.reduceMod, I_pow_three]
example : I ^ 8 = 1 := by simp only [I_pow_eq_pow_mod', Nat.reduceMod, pow_zero]

-- the appropriate simp only sequence can reduce I ^ n for literal ints n
example : I ^ (5 : ℤ) = I := by
  simp only [zpow_ofNat, I_pow_eq_pow_mod', Nat.reduceMod, pow_one]

-- the appropriate simp only sequence can reduce I ^ (-n) for literal nats n
example : I ^ (-5 : ℤ) = -I := by
  simp only [Int.reduceNeg, zpow_neg, zpow_ofNat, I_pow_eq_pow_mod', Nat.reduceMod, pow_one, inv_I]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4538525014306ce96080a22f1aa380f1af2f52fb269dd8abb185d58ff54ac009 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IPow/Variante0169e707d241142a774ee3644fd21a064dfbd9d62a5ba00cc9204d35d55988c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
