# Complete source: GRWTSK.Algebra.UniversalAlgebra.CompleteField.Variant21d402d9880f27eae0d0bab375dbae740d8dc64846387c51a3df4b45d4e78a93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `496296a8c053ff4936ee14e2e9a0b9877aa4e75c` · SHA-256 `21d402d9880f27eae0d0bab375dbae740d8dc64846387c51a3df4b45d4e78a93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Mathlib.Algebra.Order.CompleteField
import Mathlib.Data.Real.Sqrt

/-!
# The reals are a conditionally complete linearly ordered field
-/

/-- The reals are a conditionally complete linearly ordered field. -/
noncomputable instance : ConditionallyCompleteLinearOrderedField ℝ := { }

/-- There exists no nontrivial ring homomorphism `ℝ →+* ℝ`. -/
instance Real.RingHom.unique : Unique (ℝ →+* ℝ) where
  default := RingHom.id ℝ
  uniq f := congr_arg OrderRingHom.toRingHom (@Subsingleton.elim (ℝ →+*o ℝ) _
      ⟨f, ringHom_monotone (fun r hr => ⟨√r, sq_sqrt hr⟩) f⟩ default)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=285d9e5e4d7026d79d8f33164e0230cb199293d2f984e6e8a5dc11026cc6bd86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant21d402d9880f27eae0d0bab375dbae740d8dc64846387c51a3df4b45d4e78a93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
