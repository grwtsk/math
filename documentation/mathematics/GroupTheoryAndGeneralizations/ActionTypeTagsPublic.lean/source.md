# Action Type Tags Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `288586efdfc14c2348cff3e05d2a079444a4aeac` · SHA-256 `0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Yury Kudryashov
-/
module

public import Mathlib.Algebra.Group.Action.Defs
public import Mathlib.Algebra.Group.TypeTags.Basic

/-!
# Additive and Multiplicative for group actions

## Tags

group action
-/

public section

assert_not_exists MonoidWithZero MonoidHom

open Function (Injective Surjective)

variable {α β γ : Type*}

section

open Additive Multiplicative

instance Additive.vadd [SMul α β] : VAdd (Additive α) β where vadd a := (a.toMul • ·)

instance Multiplicative.smul [VAdd α β] : SMul (Multiplicative α) β where smul a := (a.toAdd +ᵥ ·)

@[simp] lemma toMul_smul [SMul α β] (a : Additive α) (b : β) : (a.toMul : α) • b = a +ᵥ b := rfl

@[simp] lemma ofMul_vadd [SMul α β] (a : α) (b : β) : ofMul a +ᵥ b = a • b := rfl

@[simp] lemma toAdd_vadd [VAdd α β] (a : Multiplicative α) (b : β) : (a.toAdd : α) +ᵥ b = a • b :=
  rfl

@[simp] lemma ofAdd_smul [VAdd α β] (a : α) (b : β) : ofAdd a • b = a +ᵥ b := rfl

instance Additive.addAction [Monoid α] [MulAction α β] : AddAction (Additive α) β where
  zero_vadd := MulAction.one_smul
  add_vadd := mul_smul (α := α)

instance Multiplicative.mulAction [AddMonoid α] [AddAction α β] :
    MulAction (Multiplicative α) β where
  one_smul := AddAction.zero_vadd
  mul_smul := add_vadd (G := α)

instance Additive.vaddCommClass [SMul α γ] [SMul β γ] [SMulCommClass α β γ] :
    VAddCommClass (Additive α) (Additive β) γ :=
  ⟨@smul_comm α β _ _ _ _⟩

instance Multiplicative.smulCommClass [VAdd α γ] [VAdd β γ] [VAddCommClass α β γ] :
    SMulCommClass (Multiplicative α) (Multiplicative β) γ :=
  ⟨@vadd_comm α β _ _ _ _⟩

end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae5977a9184a7424bf83ac27d699886725a30397bdabc341ff97769b90dcd966 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/TypeTags/Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
