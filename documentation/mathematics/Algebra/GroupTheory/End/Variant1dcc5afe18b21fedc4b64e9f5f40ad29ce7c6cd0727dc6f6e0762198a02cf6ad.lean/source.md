# Complete source: GRWTSK.Algebra.GroupTheory.End.Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d95f7ccec9105bd974ad0712e2b88acea9f6465` · SHA-256 `1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Group.Defs
import Mathlib.Order.RelIso.Basic

/-!
# Relation isomorphisms form a group
-/

assert_not_exists MulAction MonoidWithZero

variable {α : Type*} {r : α → α → Prop}

namespace RelHom

instance : Monoid (r →r r) where
  one := .id r
  mul := .comp
  mul_assoc _ _ _ := rfl
  one_mul _ := rfl
  mul_one _ := rfl

lemma one_def : (1 : r →r r) = .id r := rfl
lemma mul_def (f g : r →r r) : (f * g) = f.comp g := rfl

@[simp] lemma coe_one : ⇑(1 : r →r r) = id := rfl
@[simp] lemma coe_mul (f g : r →r r) : ⇑(f * g) = f ∘ g := rfl

lemma one_apply (a : α) : (1 : r →r r) a = a := rfl
lemma mul_apply (e₁ e₂ : r →r r) (x : α) : (e₁ * e₂) x = e₁ (e₂ x) := rfl

end RelHom

namespace RelEmbedding

instance : Monoid (r ↪r r) where
  one := .refl r
  mul f g := g.trans f
  mul_assoc _ _ _ := rfl
  one_mul _ := rfl
  mul_one _ := rfl

lemma one_def : (1 : r ↪r r) = .refl r := rfl
lemma mul_def (f g : r ↪r r) : (f * g) = g.trans f := rfl

@[simp] lemma coe_one : ⇑(1 : r ↪r r) = id := rfl
@[simp] lemma coe_mul (f g : r ↪r r) : ⇑(f * g) = f ∘ g := rfl

lemma one_apply (a : α) : (1 : r ↪r r) a = a := rfl
lemma mul_apply (e₁ e₂ : r ↪r r) (x : α) : (e₁ * e₂) x = e₁ (e₂ x) := rfl

end RelEmbedding

namespace RelIso

instance : Group (r ≃r r) where
  one := .refl r
  mul f₁ f₂ := f₂.trans f₁
  inv := .symm
  mul_assoc _ _ _ := rfl
  one_mul _ := ext fun _ => rfl
  mul_one _ := ext fun _ => rfl
  inv_mul_cancel f := ext f.symm_apply_apply

lemma one_def : (1 : r ≃r r) = .refl r := rfl
lemma mul_def (f g : r ≃r r) : (f * g) = g.trans f := rfl

@[simp] lemma coe_one : ((1 : r ≃r r) : α → α) = id := rfl
@[simp] lemma coe_mul (e₁ e₂ : r ≃r r) : ((e₁ * e₂) : α → α) = e₁ ∘ e₂ := rfl

lemma one_apply (x : α) : (1 : r ≃r r) x = x := rfl
lemma mul_apply (e₁ e₂ : r ≃r r) (x : α) : (e₁ * e₂) x = e₁ (e₂ x) := rfl

@[simp]
theorem inv_apply_self (e : r ≃r r) (x) : e⁻¹ (e x) = x :=
  e.symm_apply_apply x

@[simp]
theorem apply_inv_self (e : r ≃r r) (x) : e (e⁻¹ x) = x :=
  e.apply_symm_apply x

end RelIso
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2542bb1d6a9b01272ad707e91582c9092fc56c8fdfe7a84f811fdddb4d5204e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
