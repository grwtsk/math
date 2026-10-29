# Complete source: GRWTSK.Algebra.Equiv.Variantb82cff952f81abd7ebac0e65ea02ebfae09b09b5115443f2b99393136fc0f4de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `066574eb29c2bf263b55600ebaa0e185e6154145` · SHA-256 `b82cff952f81abd7ebac0e65ea02ebfae09b09b5115443f2b99393136fc0f4de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Algebra.Field.IsField
import Mathlib.Algebra.GroupWithZero.Equiv

/-!
# If a semiring is a field, any isomorphic semiring is also a field.

This is in a separate file to avoiding need to import `Field` in `Mathlib/Algebra/Ring/Equiv/.lean`
-/

namespace MulEquiv

protected theorem isField {A : Type*} (B : Type*) [Semiring A] [Semiring B] (hB : IsField B)
    (e : A ≃* B) : IsField A where
  exists_pair_ne := have ⟨x, y, h⟩ := hB.exists_pair_ne; ⟨e.symm x, e.symm y, e.symm.injective.ne h⟩
  mul_comm := fun x y => e.injective <| by rw [map_mul, map_mul, hB.mul_comm]
  mul_inv_cancel := fun h => by
    obtain ⟨a', he⟩ := hB.mul_inv_cancel ((e.injective.ne h).trans_eq <| map_zero e)
    exact ⟨e.symm a', e.injective <| by rw [map_mul, map_one, e.apply_symm_apply, he]⟩

end MulEquiv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=800815583faddcdfa97ac0e3ccce64752a7a3a077e498374e854c8cad20e97d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Equiv/Variantb82cff952f81abd7ebac0e65ea02ebfae09b09b5115443f2b99393136fc0f4de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
