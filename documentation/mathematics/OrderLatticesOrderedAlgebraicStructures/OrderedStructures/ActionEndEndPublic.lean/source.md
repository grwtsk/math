# Action End End Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f066f7efaaefa59515cf4c511d13604ccc773cf` · SHA-256 `00c9176c4cd27ee737bb1d8b14645f8242ad987ac24eaa1b294f3f574d2223fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Action.Faithful
public import Mathlib.Algebra.Order.Group.End
public import Mathlib.Order.RelIso.Basic

/-!
# Tautological action by relation automorphisms
-/

public section

assert_not_exists MonoidWithZero

namespace RelHom
variable {α : Type*} {r : α → α → Prop}

/-- The tautological action by `r →r r` on `α`. -/
instance applyMulAction : MulAction (r →r r) α where
  smul := (⇑)
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

@[simp] lemma smul_def (f : r →r r) (a : α) : f • a = f a := rfl

instance apply_faithfulSMul : FaithfulSMul (r →r r) α where eq_of_smul_eq_smul h := RelHom.ext h

end RelHom

namespace RelEmbedding
variable {α : Type*} {r : α → α → Prop}

/-- The tautological action by `r ↪r r` on `α`. -/
instance applyMulAction : MulAction (r ↪r r) α where
  smul := (⇑)
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

@[simp] lemma smul_def (f : r ↪r r) (a : α) : f • a = f a := rfl

instance apply_faithfulSMul : FaithfulSMul (r ↪r r) α where eq_of_smul_eq_smul h := ext h

end RelEmbedding

namespace RelIso
variable {α : Type*} {r : α → α → Prop}

/-- The tautological action by `r ≃r r` on `α`. -/
instance applyMulAction : MulAction (r ≃r r) α where
  smul := (⇑)
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

@[simp] lemma smul_def (f : r ≃r r) (a : α) : f • a = f a := rfl

instance apply_faithfulSMul : FaithfulSMul (r ≃r r) α where eq_of_smul_eq_smul h := RelIso.ext h

end RelIso
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28630d7c321e6bfd82d459023ddc397cc715f802e382c5b7412ea1153c74f995 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/End/Variant00c9176c4cd27ee737bb1d8b14645f8242ad987ac24eaa1b294f3f574d2223fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
