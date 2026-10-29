# Complete source: GRWTSK.Algebra.Matrix.Variant50d5875684c54487177858e97304044f19d3ea9e8eca455b2921372ad1c442eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1c98522981f6c87ec4de7554200e6967b02c668` · SHA-256 `50d5875684c54487177858e97304044f19d3ea9e8eca455b2921372ad1c442eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Yunzhou Xie
-/
import Mathlib.Algebra.Central.Basic
import Mathlib.Data.Matrix.Basis

/-!
# The matrix algebra is a central algebra
-/

namespace Algebra.IsCentral

variable (K D : Type*) [CommSemiring K] [Semiring D] [Algebra K D] [IsCentral K D]

open Matrix in
instance matrix (ι : Type*) [Fintype ι] [DecidableEq ι] :
    Algebra.IsCentral K (Matrix ι ι D) where
  out m h := by
    refine isEmpty_or_nonempty ι |>.recOn
      (fun h => Algebra.mem_bot.2 ⟨0, Matrix.ext fun i _ => h.elim i⟩) fun ⟨i⟩ => ?_
    obtain ⟨d, rfl⟩ := mem_range_scalar_of_commute_single (M := m) (fun _ _ _ =>
      Subalgebra.mem_center_iff.mp h _)
    have mem : d ∈ Subalgebra.center K D := by
      rw [Subalgebra.mem_center_iff] at h ⊢
      intro d'
      simpa using Matrix.ext_iff.2 (h (scalar ι d')) i i
    rw [center_eq_bot, Algebra.mem_bot] at mem
    obtain ⟨r, rfl⟩ := mem
    rw [Algebra.mem_bot]
    exact ⟨r, rfl⟩

end Algebra.IsCentral
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12d6c0c5da8fa34085596e919dd01fcf72bc2ec4b199fe3dbb3a852e0c21cbc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Matrix/Variant50d5875684c54487177858e97304044f19d3ea9e8eca455b2921372ad1c442eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
