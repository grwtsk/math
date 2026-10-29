# Group Ring Action Invariant — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45d0b1e884e942a152051379f8626fb2f77770d7` · SHA-256 `411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Hom.GroupAction
import Mathlib.RingTheory.Subring.Pointwise

#align_import algebra.group_ring_action.invariant from "leanprover-community/mathlib"@"e7bab9a85e92cf46c02cb4725a7be2f04691e3a7"

/-! # Subrings invariant under an action -/


section Ring

variable (M R : Type*) [Monoid M] [Ring R] [MulSemiringAction M R]

variable (S : Subring R)

open MulAction

variable {R}

/-- A typeclass for subrings invariant under a `MulSemiringAction`. -/
class IsInvariantSubring : Prop where
  smul_mem : ∀ (m : M) {x : R}, x ∈ S → m • x ∈ S
#align is_invariant_subring IsInvariantSubring

instance IsInvariantSubring.toMulSemiringAction [IsInvariantSubring M S] :
    MulSemiringAction M S where
  smul m x := ⟨m • ↑x, IsInvariantSubring.smul_mem m x.2⟩
  one_smul s := Subtype.eq <| one_smul M (s : R)
  mul_smul m₁ m₂ s := Subtype.eq <| mul_smul m₁ m₂ (s : R)
  smul_add m s₁ s₂ := Subtype.eq <| smul_add m (s₁ : R) (s₂ : R)
  smul_zero m := Subtype.eq <| smul_zero m
  smul_one m := Subtype.eq <| smul_one m
  smul_mul m s₁ s₂ := Subtype.eq <| smul_mul' m (s₁ : R) (s₂ : R)
#align is_invariant_subring.to_mul_semiring_action IsInvariantSubring.toMulSemiringAction

end Ring

section

variable (M : Type*) [Monoid M]

variable {R' : Type*} [Ring R'] [MulSemiringAction M R']

variable (U : Subring R') [IsInvariantSubring M U]

/-- The canonical inclusion from an invariant subring. -/
def IsInvariantSubring.subtypeHom : U →+*[M] R' :=
  { U.subtype with map_smul' := fun _ _ ↦ rfl }
#align is_invariant_subring.subtype_hom IsInvariantSubring.subtypeHom

-- Porting note: changed `coe` to `Subtype.val`
@[simp]
theorem IsInvariantSubring.coe_subtypeHom :
    (IsInvariantSubring.subtypeHom M U : U → R') = Subtype.val := rfl
#align is_invariant_subring.coe_subtype_hom IsInvariantSubring.coe_subtypeHom

-- Porting note: added `toRingHom`
@[simp]
theorem IsInvariantSubring.coe_subtypeHom' :
    ((IsInvariantSubring.subtypeHom M U).toRingHom : U →+* R') = U.subtype := rfl
#align is_invariant_subring.coe_subtype_hom' IsInvariantSubring.coe_subtypeHom'

end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55f2d2e6dcecf2251e3ff2f79811c15c8959304c7d8d4a288178abc1d0385c40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
