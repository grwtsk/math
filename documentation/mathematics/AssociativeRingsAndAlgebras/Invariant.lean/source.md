# Invariant — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eef9840b34c79086c9d573793532d6fd5d3ef47e` · SHA-256 `a965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.Algebra.Ring.Subring.Defs

/-! # Subrings invariant under an action

If a monoid acts on a ring via a `MulSemiringAction`, then `IsInvariantSubring` is
a predicate on subrings asserting that the subring is fixed elementwise by the
action.

-/

assert_not_exists RelIso

section Ring

variable (M R : Type*) [Monoid M] [Ring R] [MulSemiringAction M R]
variable (S : Subring R)

open MulAction

variable {R}

/-- A typeclass for subrings invariant under a `MulSemiringAction`. -/
class IsInvariantSubring : Prop where
  smul_mem : ∀ (m : M) {x : R}, x ∈ S → m • x ∈ S

instance IsInvariantSubring.toMulSemiringAction [IsInvariantSubring M S] :
    MulSemiringAction M S where
  smul m x := ⟨m • ↑x, IsInvariantSubring.smul_mem m x.2⟩
  one_smul s := Subtype.eq <| one_smul M (s : R)
  mul_smul m₁ m₂ s := Subtype.eq <| mul_smul m₁ m₂ (s : R)
  smul_add m s₁ s₂ := Subtype.eq <| smul_add m (s₁ : R) (s₂ : R)
  smul_zero m := Subtype.eq <| smul_zero m
  smul_one m := Subtype.eq <| smul_one m
  smul_mul m s₁ s₂ := Subtype.eq <| smul_mul' m (s₁ : R) (s₂ : R)

end Ring

section

variable (M : Type*) [Monoid M]
variable {R' : Type*} [Ring R'] [MulSemiringAction M R']
variable (U : Subring R') [IsInvariantSubring M U]

/-- The canonical inclusion from an invariant subring. -/
def IsInvariantSubring.subtypeHom : U →+*[M] R' :=
  { U.subtype with map_smul' := fun _ _ ↦ rfl }

@[simp]
theorem IsInvariantSubring.coe_subtypeHom :
    (IsInvariantSubring.subtypeHom M U : U → R') = Subtype.val := rfl

@[simp]
theorem IsInvariantSubring.coe_subtypeHom' :
    ((IsInvariantSubring.subtypeHom M U) : U →+* R') = U.subtype := rfl

end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=394703534a2ef4e417f4229e2273d564d81a2f5702bf2a72631be4413396e3fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Invariant/Varianta965a3536d1759d5aeec0d73ba72793ddc8174cf87caef00e3a5344cd3cf4858.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
