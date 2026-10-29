# Complete source: GRWTSK.Algebra.UniversalAlgebra.Int.Variant4862a2a854a840e3d943087d8763aeeeae00d7be3ad09ad0a64b1fc73dcd65a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52a32eb56c3cbbffcf37cac626e99a94df2db077` · SHA-256 `4862a2a854a840e3d943087d8763aeeeae00d7be3ad09ad0a64b1fc73dcd65a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Louis Carlin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Louis Carlin, Mario Carneiro
-/
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.EuclideanDomain.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Int
import Mathlib.Algebra.Ring.Int.Defs

/-!
# Instances for Euclidean domains
* `Int.euclideanDomain`: shows that `ℤ` is a Euclidean domain.
-/

instance Int.euclideanDomain : EuclideanDomain ℤ :=
  { inferInstanceAs (CommRing Int), inferInstanceAs (Nontrivial Int) with
    quotient := (· / ·), quotient_zero := Int.ediv_zero, remainder := (· % ·),
    quotient_mul_add_remainder_eq := Int.ediv_add_emod,
    r := fun a b => a.natAbs < b.natAbs,
    r_wellFounded := (measure natAbs).wf
    remainder_lt := fun a b b0 => Int.ofNat_lt.1 <| by
      rw [Int.natAbs_of_nonneg (Int.emod_nonneg _ b0), ← Int.abs_eq_natAbs]
      exact Int.emod_lt_abs _ b0
    mul_left_not_lt := fun a b b0 =>
      not_lt_of_ge <| by
        rw [← mul_one a.natAbs, Int.natAbs_mul]
        rw [← Int.natAbs_pos] at b0
        exact Nat.mul_le_mul_left _ b0 }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ee5a66f6f7708cca684bdd2be739607c25792e6d878bc19bd182070a3e7eb44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Int/Variant4862a2a854a840e3d943087d8763aeeeae00d7be3ad09ad0a64b1fc73dcd65a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
