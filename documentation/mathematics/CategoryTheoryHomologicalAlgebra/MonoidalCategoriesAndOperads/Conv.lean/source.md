# Conv — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f014fd043b0e0d789d8704da7ff939007681810` · SHA-256 `5d106e5cb5f3f4c1a10cdea102fd2d01acf6db2e35955bd915b99f972f6b793e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Comon_

/-!
# The convolution monoid.

When `M : Comon_ C` and `N : Mon_ C`, the morphisms `M.X ⟶ N.X` form a monoid (in Type).
-/

universe v₁ u₁
namespace CategoryTheory
open MonoidalCategory
variable {C : Type u₁} [Category.{v₁} C] [MonoidalCategory C]

/--
The morphisms in `C` between the underlying objects of a pair of bimonoids in `C` naturally has a
(set-theoretic) monoid structure. -/
def Conv (M : Comon_ C) (N : Mon_ C) : Type v₁ := M.X ⟶ N.X

namespace Conv

variable {M : Comon_ C} {N : Mon_ C}

instance : One (Conv M N) where
  one := M.counit ≫ N.one

theorem one_eq : (1 : Conv M N) = M.counit ≫ N.one := rfl

instance : Mul (Conv M N) where
  mul := fun f g => M.comul ≫ f ▷ M.X ≫ N.X ◁ g ≫ N.mul

theorem mul_eq (f g : Conv M N) : f * g = M.comul ≫ f ▷ M.X ≫ N.X ◁ g ≫ N.mul := rfl

instance : Monoid (Conv M N) where
  one_mul f := by simp [one_eq, mul_eq, ← whisker_exchange_assoc]
  mul_one f := by simp [one_eq, mul_eq, ← whisker_exchange_assoc]
  mul_assoc f g h := by
    simp only [mul_eq]
    simp only [comp_whiskerRight, whisker_assoc, Category.assoc,
      MonoidalCategory.whiskerLeft_comp]
    slice_lhs 7 8 =>
      rw [← whisker_exchange]
    slice_rhs 2 3 =>
      rw [← whisker_exchange]
    slice_rhs 1 2 =>
      rw [M.comul_assoc]
    slice_rhs 3 4 =>
      rw [← associator_naturality_left]
    slice_lhs 6 7 =>
      rw [← associator_inv_naturality_right]
    slice_lhs 8 9 =>
      rw [N.mul_assoc]
    simp

end Conv

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6aab876a8151224f8ee4d8b33e3d9a1f529949edd8b5a58e5aacd25aeabc68a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conv/Variant5d106e5cb5f3f4c1a10cdea102fd2d01acf6db2e35955bd915b99f972f6b793e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
