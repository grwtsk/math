# Linear Algebra General Linear Group — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `289bcb15903b71e3ee4dfbfc18b2f9b7cff25c5e` · SHA-256 `6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Module.Equiv.Basic

/-!
# The general linear group of linear maps

The general linear group is defined to be the group of invertible linear maps from `M` to itself.

See also `Matrix.GeneralLinearGroup`

## Main definitions

* `LinearMap.GeneralLinearGroup`

-/


variable (R M : Type*)

namespace LinearMap

variable [Semiring R] [AddCommMonoid M] [Module R M]

/-- The group of invertible linear maps from `M` to itself -/
abbrev GeneralLinearGroup :=
  (M →ₗ[R] M)ˣ

namespace GeneralLinearGroup

variable {R M}

/-- An invertible linear map `f` determines an equivalence from `M` to itself. -/
def toLinearEquiv (f : GeneralLinearGroup R M) : M ≃ₗ[R] M :=
  { f.val with
    invFun := f.inv.toFun
    left_inv := fun m ↦ show (f.inv * f.val) m = m by rw [f.inv_val]; simp
    right_inv := fun m ↦ show (f.val * f.inv) m = m by rw [f.val_inv]; simp }

/-- An equivalence from `M` to itself determines an invertible linear map. -/
def ofLinearEquiv (f : M ≃ₗ[R] M) : GeneralLinearGroup R M where
  val := f
  inv := (f.symm : M →ₗ[R] M)
  val_inv := LinearMap.ext fun _ ↦ f.apply_symm_apply _
  inv_val := LinearMap.ext fun _ ↦ f.symm_apply_apply _

variable (R M)

/-- The general linear group on `R` and `M` is multiplicatively equivalent to the type of linear
equivalences between `M` and itself. -/
def generalLinearEquiv : GeneralLinearGroup R M ≃* M ≃ₗ[R] M where
  toFun := toLinearEquiv
  invFun := ofLinearEquiv
  left_inv f := by ext; rfl
  right_inv f := by ext; rfl
  map_mul' x y := by ext; rfl

@[simp]
theorem generalLinearEquiv_to_linearMap (f : GeneralLinearGroup R M) :
    (generalLinearEquiv R M f : M →ₗ[R] M) = f := by ext; rfl

@[simp]
theorem coeFn_generalLinearEquiv (f : GeneralLinearGroup R M) :
    (generalLinearEquiv R M f) = (f : M → M) := rfl

end GeneralLinearGroup

end LinearMap
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dade57f3f71e377c79b627cfe119875832f05979dbf43497a7b3dbd126e6b8b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
