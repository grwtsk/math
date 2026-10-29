# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61691cf9560f9ea0924dc0b9fd30a599951cd9ce` · SHA-256 `70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/

import Mathlib.Algebra.BigOperators.Group.Multiset.Basic
import Mathlib.Algebra.BigOperators.Group.List.Lemmas
import Mathlib.GroupTheory.Congruence.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Defs

/-!
# Interactions between `∑, ∏` and `(Add)Con`

-/

namespace Con

/-- Multiplicative congruence relations preserve product indexed by a list. -/
@[to_additive "Additive congruence relations preserve sum indexed by a list."]
protected theorem list_prod {ι M : Type*} [MulOneClass M] (c : Con M) {l : List ι} {f g : ι → M}
    (h : ∀ x ∈ l, c (f x) (g x)) :
    c (l.map f).prod (l.map g).prod := by
  induction l with
  | nil =>
    simpa only [List.map_nil, List.prod_nil] using c.refl 1
  | cons x xs ih =>
    rw [List.map_cons, List.map_cons, List.prod_cons, List.prod_cons]
    exact c.mul (h _ <| .head _) <| ih fun k hk ↦ h _ (.tail _ hk)

/-- Multiplicative congruence relations preserve product indexed by a multiset. -/
@[to_additive "Additive congruence relations preserve sum indexed by a multiset."]
protected theorem multiset_prod {ι M : Type*} [CommMonoid M] (c : Con M) {s : Multiset ι}
    {f g : ι → M} (h : ∀ x ∈ s, c (f x) (g x)) :
    c (s.map f).prod (s.map g).prod := by
  rcases s; simpa using c.list_prod h

/-- Multiplicative congruence relations preserve finite product. -/
@[to_additive "Additive congruence relations preserve finite sum."]
protected theorem finset_prod {ι M : Type*} [CommMonoid M] (c : Con M) (s : Finset ι)
    {f g : ι → M} (h : ∀ i ∈ s, c (f i) (g i)) :
    c (s.prod f) (s.prod g) :=
  c.multiset_prod h

end Con
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7ec01428a9d56d9b75831fb631425119dea37f8ed166733bdd1aa735c00cf14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
