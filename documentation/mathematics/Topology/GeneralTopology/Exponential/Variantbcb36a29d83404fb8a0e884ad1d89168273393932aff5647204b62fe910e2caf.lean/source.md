# Complete source: GRWTSK.Topology.GeneralTopology.Exponential.Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `860c4b1769bd72b9b09c4d2c34f8cb10f118cd86` · SHA-256 `bcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Analysis.Normed.Algebra.Exponential

/-! # The exponential map from selfadjoint to unitary
In this file, we establish various properties related to the map
`fun a ↦ NormedSpace.exp ℂ A (I • a)` between the subtypes `selfAdjoint A` and `unitary A`.

## TODO

* Show that any exponential unitary is path-connected in `unitary A` to `1 : unitary A`.
* Prove any unitary whose distance to `1 : unitary A` is less than `1` can be expressed as an
  exponential unitary.
* A unitary is in the path component of `1` if and only if it is a finite product of exponential
  unitaries.
-/

open NormedSpace -- For `NormedSpace.exp`.

section Star

variable {A : Type*} [NormedRing A] [NormedAlgebra ℂ A] [StarRing A] [ContinuousStar A]
  [CompleteSpace A] [StarModule ℂ A]

open Complex

/-- The map from the selfadjoint real subspace to the unitary group. This map only makes sense
over ℂ. -/
@[simps]
noncomputable def selfAdjoint.expUnitary (a : selfAdjoint A) : unitary A :=
  ⟨exp ℂ ((I • a.val) : A),
      exp_mem_unitary_of_mem_skewAdjoint _ (a.prop.smul_mem_skewAdjoint conj_I)⟩

open selfAdjoint

@[simp]
lemma selfAdjoint.expUnitary_zero : expUnitary (0 : selfAdjoint A) = 1 := by
  ext
  simp

@[fun_prop]
lemma selfAdjoint.continuous_expUnitary : Continuous (expUnitary : selfAdjoint A → unitary A) := by
  simp only [continuous_induced_rng, Function.comp_def, selfAdjoint.expUnitary_coe]
  fun_prop

theorem Commute.expUnitary_add {a b : selfAdjoint A} (h : Commute (a : A) (b : A)) :
    expUnitary (a + b) = expUnitary a * expUnitary b := by
  ext
  have hcomm : Commute (I • (a : A)) (I • (b : A)) := by
    unfold Commute SemiconjBy
    simp only [h.eq, Algebra.smul_mul_assoc, Algebra.mul_smul_comm]
  simpa only [expUnitary_coe, AddSubgroup.coe_add, smul_add] using exp_add_of_commute hcomm

theorem Commute.expUnitary {a b : selfAdjoint A} (h : Commute (a : A) (b : A)) :
    Commute (expUnitary a) (expUnitary b) :=
  calc
    selfAdjoint.expUnitary a * selfAdjoint.expUnitary b =
        selfAdjoint.expUnitary b * selfAdjoint.expUnitary a := by
      rw [← h.expUnitary_add, ← h.symm.expUnitary_add, add_comm]

end Star
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=611adb0da213053f70a9524946159c27219011c9c305818d3f0518c553caa821 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Exponential/Variantbcb36a29d83404fb8a0e884ad1d89168273393932aff5647204b62fe910e2caf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
