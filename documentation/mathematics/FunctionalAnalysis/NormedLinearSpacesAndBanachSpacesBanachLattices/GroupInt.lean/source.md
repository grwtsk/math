# Group Int — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da0a26bda53f3695c8ae6bd2b9553b4ccf5d455e` · SHA-256 `58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Johannes Hölzl, Yaël Dillies
-/

import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Topology.Instances.Int

/-! # ℤ as a normed group -/

open NNReal

variable {α : Type*}
namespace Int

instance instNormedAddCommGroup : NormedAddCommGroup ℤ where
  norm n := ‖(n : ℝ)‖
  dist_eq m n := by simp only [Int.dist_eq, norm, Int.cast_sub]

@[norm_cast]
theorem norm_cast_real (m : ℤ) : ‖(m : ℝ)‖ = ‖m‖ :=
  rfl

theorem norm_eq_abs (n : ℤ) : ‖n‖ = |(n : ℝ)| :=
  rfl

@[simp]
theorem norm_natCast (n : ℕ) : ‖(n : ℤ)‖ = n := by simp [Int.norm_eq_abs]

theorem _root_.NNReal.natCast_natAbs (n : ℤ) : (n.natAbs : ℝ≥0) = ‖n‖₊ :=
  NNReal.eq <|
    calc
      ((n.natAbs : ℝ≥0) : ℝ) = (n.natAbs : ℤ) := by simp only [Int.cast_natCast, NNReal.coe_natCast]
      _ = |(n : ℝ)| := by simp only [Int.natCast_natAbs, Int.cast_abs]
      _ = ‖n‖ := (norm_eq_abs n).symm

theorem abs_le_floor_nnreal_iff (z : ℤ) (c : ℝ≥0) : |z| ≤ ⌊c⌋₊ ↔ ‖z‖₊ ≤ c := by
  rw [Int.abs_eq_natAbs, Int.ofNat_le, Nat.le_floor_iff (zero_le c), NNReal.natCast_natAbs z]

end Int

-- Now that we've installed the norm on `ℤ`,
-- we can state some lemmas about `zsmul`.
section

variable [SeminormedCommGroup α]

@[to_additive norm_zsmul_le]
theorem norm_zpow_le_mul_norm (n : ℤ) (a : α) : ‖a ^ n‖ ≤ ‖n‖ * ‖a‖ := by
  rcases n.eq_nat_or_neg with ⟨n, rfl | rfl⟩ <;> simpa using norm_pow_le_mul_norm

@[to_additive nnnorm_zsmul_le]
theorem nnnorm_zpow_le_mul_norm (n : ℤ) (a : α) : ‖a ^ n‖₊ ≤ ‖n‖₊ * ‖a‖₊ := by
  simpa only [← NNReal.coe_le_coe, NNReal.coe_mul] using norm_zpow_le_mul_norm n a

end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32b5213d89db17670ebf6e59270af47528f116fe227687584b582791173b0d00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
