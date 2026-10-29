# Complete source: GRWTSK.Algebra.GroupTheory.Support.Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5987cd4afff0aa7224bb6d4686020e93f76682d8` · SHA-256 `3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
module

public import Mathlib.Algebra.Group.Embedding
public import Mathlib.Algebra.MonoidAlgebra.Module
public import Mathlib.LinearAlgebra.Finsupp.Supported
public import Mathlib.Algebra.Group.Pointwise.Finset.Basic

import Mathlib.Order.BourbakiWitt

/-!
# Lemmas about the support of a finitely supported function
-/

public section

open scoped Pointwise

universe u₁ u₂ u₃

namespace MonoidAlgebra

open Finset Finsupp

variable {k : Type u₁} {G : Type u₂} [Semiring k]

section Mul
variable [Mul G]

@[to_additive (dont_translate := k) support_coeff_mul_subset]
theorem support_coeff_mul_subset [DecidableEq G] (x y : k[G]) :
    (x * y).coeff.support ⊆ x.coeff.support * y.coeff.support := by
  simp only [MonoidAlgebra.mul_def, coeff_finsuppSum]
  grw [Finsupp.support_sum, biUnion_subset]
  rintro x hx
  grw [Finsupp.support_sum, biUnion_subset]
  exact fun y hy ↦ support_single_subset.trans <| singleton_subset_iff.2 <| mem_image₂_of_mem hx hy

@[deprecated (since := "2026-06-18")] alias support_single_mul_eq_image := support_coeff_mul_subset

@[to_additive (dont_translate := k) support_coeff_single_mul_subset]
lemma support_coeff_single_mul_subset [DecidableEq G] (x : k[G]) (r : k) (a : G) :
    (single a r * x).coeff.support ⊆ x.coeff.support.image (a * ·) := by
  grw [support_coeff_mul_subset, coeff_single, support_single_subset]
  change image₂ _ _ _ ⊆ _
  rw [image₂_singleton_left]

@[to_additive (dont_translate := k) support_coeff_mul_single_subset]
theorem support_coeff_mul_single_subset [DecidableEq G] (x : k[G]) (r : k) (a : G) :
    (x * single a r).coeff.support ⊆ x.coeff.support.image (· * a) := by
  grw [support_coeff_mul_subset, coeff_single, support_single_subset]
  change image₂ _ _ _ ⊆ _
  rw [image₂_singleton_right]

@[to_additive (dont_translate := k) support_coeff_single_mul_eq_image]
theorem support_coeff_single_mul_eq_image [DecidableEq G] (f : k[G]) {r : k}
    (hr : ∀ y, r * y = 0 ↔ y = 0) {x : G} (lx : IsLeftRegular x) :
    (single x r * f).coeff.support = f.coeff.support.image (x * ·) := by
  refine subset_antisymm (support_coeff_single_mul_subset f _ _) fun y hy => ?_
  obtain ⟨y, yf, rfl⟩ : ∃ a ∈ f.coeff.support, x * a = y := by grind
  simp [coeff_mul, mem_support_iff.mp yf, hr, lx.eq_iff]

@[to_additive (dont_translate := k) support_coeff_mul_single_eq_image]
theorem support_coeff_mul_single_eq_image [DecidableEq G] (f : k[G]) {r : k}
    (hr : ∀ y, y * r = 0 ↔ y = 0) {x : G} (rx : IsRightRegular x) :
    (f * single x r).coeff.support = Finset.image (· * x) f.coeff.support := by
  refine subset_antisymm (support_coeff_mul_single_subset f _ _) fun y hy => ?_
  obtain ⟨y, yf, rfl⟩ : ∃ a : G, a ∈ f.coeff.support ∧ a * x = y := by grind
  simp [coeff_mul, mem_support_iff.mp yf, hr, rx.eq_iff]

@[deprecated (since := "2026-06-18")]
alias support_mul_single_eq_image := support_coeff_mul_single_eq_image

@[to_additive (dont_translate := k) support_coeff_mul_single]
theorem support_coeff_mul_single [IsRightCancelMul G] (f : k[G]) (r : k)
    (hr : ∀ y, y * r = 0 ↔ y = 0) (x : G) :
    (f * single x r).coeff.support = f.coeff.support.map (mulRightEmbedding x) := by
  classical ext; simp [support_coeff_mul_single_eq_image f hr (.all x)]

@[deprecated (since := "2026-06-18")] alias support_mul_single := support_coeff_mul_single

@[to_additive (dont_translate := k) support_coeff_single_mul]
theorem support_coeff_single_mul [IsLeftCancelMul G] (f : k[G]) (r : k)
    (hr : ∀ y, r * y = 0 ↔ y = 0) (x : G) :
    (single x r * f : k[G]).coeff.support =
      f.coeff.support.map (mulLeftEmbedding x) := by
  classical ext; simp [support_coeff_single_mul_eq_image f hr (.all x)]

@[deprecated (since := "2026-06-18")] alias support_single_mul := support_coeff_single_mul

end Mul

@[to_additive (dont_translate := k) support_coeff_one_subset]
lemma support_coeff_one_subset [One G] : (1 : k[G]).coeff.support ⊆ 1 :=
  Finsupp.support_single_subset

@[deprecated (since := "2026-06-18")] alias support_one_subset := support_coeff_one_subset

@[to_additive (dont_translate := k) (attr := simp) support_coeff_one]
lemma support_coeff_one [One G] [NeZero (1 : k)] : (1 : k[G]).coeff.support = 1 :=
  Finsupp.support_single _ one_ne_zero

@[deprecated (since := "2026-06-18")] alias support_one := support_coeff_one

section Span

/-- An element of `k[G]` is in the subalgebra generated by its support. -/
theorem mem_span_support_coeff [MulOneClass G] (f : k[G]) :
    f ∈ Submodule.span k (of k G '' f.coeff.support) := by
  simp [of, ← supported_eq_span_single, mem_supported]

@[deprecated (since := "2026-06-18")] alias mem_span_support := mem_span_support_coeff

end Span

end MonoidAlgebra

namespace AddMonoidAlgebra

open Finset Finsupp

variable {k : Type u₁} {G : Type u₂} [Semiring k]

section Span

set_option backward.isDefEq.respectTransparency.types false in
/-- An element of `k[G]` is in the submodule generated by its support. -/
theorem mem_span_support_coeff (f : k[G]) : f ∈ Submodule.span k (of' k G '' f.coeff.support) := by
  simp [of', ← supported_eq_span_single, mem_supported]

@[deprecated (since := "2026-06-18")] alias mem_span_support := mem_span_support_coeff

end Span

end AddMonoidAlgebra
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c365f9d5dfccbdb43451d09cc09f5060b1e159d979b07e8ac123106526127571 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
