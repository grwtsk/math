# Complete source: GRWTSK.Algebra.Associated.Variante6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `084e2ca5faded3787b508bf6ca33ff910a79a54a` · SHA-256 `e6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker
-/
import Mathlib.Algebra.GroupWithZero.Associated
import Mathlib.Algebra.Ring.Units

/-!
# Associated elements in rings
-/

assert_not_exists OrderedCommMonoid Multiset Field

namespace Associated
variable {M : Type*} [Monoid M] [HasDistribNeg M] {a b : M}

lemma neg_left (h : Associated a b) : Associated (-a) b := let ⟨u, hu⟩ := h; ⟨-u, by simp [hu]⟩
lemma neg_right (h : Associated a b) : Associated a (-b) := h.symm.neg_left.symm
lemma neg_neg (h : Associated a b) : Associated (-a) (-b) := h.neg_left.neg_right

@[simp]
lemma neg_left_iff : Associated (-a) b ↔ Associated a b :=
  ⟨fun h ↦ _root_.neg_neg a ▸ h.neg_left, fun h ↦ h.neg_left⟩

@[simp]
lemma neg_right_iff : Associated a (-b) ↔ Associated a b :=
  ⟨fun h ↦ _root_.neg_neg b ▸ h.neg_right, fun h ↦ h.neg_right⟩

end Associated
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=235fd7293bc007c0ab15917a622e8cff9a737b460f1b5f0b81a96eff856d362d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Associated/Variante6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
