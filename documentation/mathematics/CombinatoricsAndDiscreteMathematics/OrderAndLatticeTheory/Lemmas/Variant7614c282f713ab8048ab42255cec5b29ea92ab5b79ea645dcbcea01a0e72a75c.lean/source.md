# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lemmas.Variant7614c282f713ab8048ab42255cec5b29ea92ab5b79ea645dcbcea01a0e72a75c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4ab4cf73abae3a639e10ade2ff1deb39fd76233` · SHA-256 `7614c282f713ab8048ab42255cec5b29ea92ab5b79ea645dcbcea01a0e72a75c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

public import Mathlib.Data.Ordering.Basic
public import Mathlib.Order.Defs.Unbundled

/-!
# Some `Ordering` lemmas
-/

public section

universe u

namespace Ordering

@[simp]
theorem ite_eq_lt_distrib (c : Prop) [Decidable c] (a b : Ordering) :
    ((if c then a else b) = Ordering.lt) = if c then a = Ordering.lt else b = Ordering.lt := by
  by_cases c <;> simp [*]

@[simp]
theorem ite_eq_eq_distrib (c : Prop) [Decidable c] (a b : Ordering) :
    ((if c then a else b) = Ordering.eq) = if c then a = Ordering.eq else b = Ordering.eq := by
  by_cases c <;> simp [*]

@[simp]
theorem ite_eq_gt_distrib (c : Prop) [Decidable c] (a b : Ordering) :
    ((if c then a else b) = Ordering.gt) = if c then a = Ordering.gt else b = Ordering.gt := by
  by_cases c <;> simp [*]

@[simp]
lemma dthen_eq_then (o₁ o₂ : Ordering) : o₁.dthen (fun _ => o₂) = o₁.then o₂ := by
  cases o₁ <;> rfl

end Ordering

section

variable {α : Type u} {lt : α → α → Prop} [DecidableRel lt]

attribute [local simp] cmpUsing

@[simp]
theorem cmpUsing_eq_lt (a b : α) : (cmpUsing lt a b = Ordering.lt) = lt a b := by
  simp only [cmpUsing, Ordering.ite_eq_lt_distrib, ite_self, ite_false_right, and_true,
    reduceCtorEq]

@[simp]
theorem cmpUsing_eq_gt [IsStrictOrder α lt] (a b : α) : cmpUsing lt a b = Ordering.gt ↔ lt b a := by
  simp only [cmpUsing, Ordering.ite_eq_gt_distrib, ite_false_right, and_true, ite_false_left,
    and_iff_right_iff_imp, reduceCtorEq]
  exact fun hba hab ↦ (irrefl a) (_root_.trans hab hba)

@[simp]
theorem cmpUsing_eq_eq (a b : α) : cmpUsing lt a b = Ordering.eq ↔ ¬lt a b ∧ ¬lt b a := by simp

end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b686257f91845415e433eb66e4c99e851d7ae8a2a1de585e0e91ca76cb17c9ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant7614c282f713ab8048ab42255cec5b29ea92ab5b79ea645dcbcea01a0e72a75c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
