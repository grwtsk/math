# Complete source: GRWTSK.Algebra.LinearAlgebra.Nilpotent.Variantdb41ac4f408ebe60cd97867923e554e12c3045c61066caf93e1e9c306515594c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92fe7b7b7cd73302503a0c7c7fb990e8be3ba60a` · SHA-256 `db41ac4f408ebe60cd97867923e554e12c3045c61066caf93e1e9c306515594c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.RingTheory.Finiteness.Defs
import Mathlib.RingTheory.Nilpotent.Defs

/-!
# Nilpotent maps on finite modules

-/

variable {R M : Type*} [CommSemiring R] [AddCommMonoid M] [Module R M]

theorem Module.End.isNilpotent_iff_of_finite [Module.Finite R M] {f : End R M} :
    IsNilpotent f ↔ ∀ m : M, ∃ n : ℕ, (f ^ n) m = 0 := by
  refine ⟨fun ⟨n, hn⟩ m ↦ ⟨n, by simp [hn]⟩, fun h ↦ ?_⟩
  rcases Module.Finite.fg_top (R := R) (M := M) with ⟨S, hS⟩
  choose g hg using h
  use Finset.sup S g
  ext m
  have hm : m ∈ Submodule.span R S := by simp [hS]
  induction hm using Submodule.span_induction with
  | mem x hx => exact pow_map_zero_of_le (Finset.le_sup hx) (hg x)
  | zero => simp
  | add => simp_all
  | smul => simp_all
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55409969519e36d8bc67fe50056934710fffd4bb233e59412ad60177fda3bdb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Nilpotent/Variantdb41ac4f408ebe60cd97867923e554e12c3045c61066caf93e1e9c306515594c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
