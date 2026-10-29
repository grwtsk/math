# Mon Cat Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `732fd3afe4d63c062bd41f2cd6f708beebc41798` · SHA-256 `dcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Category.MonCat.Basic

-- We verify that the coercions of morphisms to functions work correctly:
example {R S : MonCat} (f : R ⟶ S) : ↑R → ↑S := f

-- It's essential that simp lemmas for `→*` apply to morphisms.
example {R S : MonCat} (i : R ⟶ S) (r : R) (h : r = 1) : i r = 1 := by simp [h]

example {R S : CommMonCat} (f : R ⟶ S) : ↑R → ↑S := f

example {R S : CommMonCat} (i : R ⟶ S) (r : R) (h : r = 1) : i r = 1 := by simp [h]

-- We verify that when constructing a morphism in `CommMonCat`,
-- when we construct the `toFun` field, the types are presented as `↑R`.
example (R : CommMonCat.{u}) : R ⟶ R := CommMonCat.ofHom
  { toFun := fun x => by
      match_target (R : Type u)
      guard_hyp x : (R : Type u)
      exact x * x
    map_one' := by simp
    map_mul' := fun x y => by
      rw [mul_assoc x y (x * y), ← mul_assoc y x y, mul_comm y x, mul_assoc, mul_assoc] }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac80e5dbddd7ed5006eadd439882f406f0ec6ec176493d37e8ef4f80335ec114 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/MonCat/Variantdcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
