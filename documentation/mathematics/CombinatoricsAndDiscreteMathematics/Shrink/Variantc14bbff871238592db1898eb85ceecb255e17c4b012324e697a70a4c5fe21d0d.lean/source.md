# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Shrink.Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9f27e0cece22c3bdce9221cdebba2298f9821c7` · SHA-256 `c14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Countable.Small
import Mathlib.Data.Fintype.EquivFin

/-!
# Fintype instance for `Shrink`
-/

universe u v
variable {α : Type u} [Fintype α]

noncomputable instance Shrink.instFintype : Fintype (Shrink.{v} α) := .ofEquiv _ (equivShrink _)

instance Shrink.instFinite {α : Type u} [Finite α] : Finite (Shrink.{v} α) :=
  .of_equiv _ (equivShrink _)

@[simp] lemma Fintype.card_shrink [Fintype (Shrink.{v} α)] : card (Shrink.{v} α) = card α :=
  card_congr (equivShrink _).symm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa88db4f957dde1fb323caa876b2a83741159f77e969752dff3562ea53a44f69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Shrink/Variantc14bbff871238592db1898eb85ceecb255e17c4b012324e697a70a4c5fe21d0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
