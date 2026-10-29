# Complete source: GRWTSK.Algebra.GroupTheory.DivPairs.Variant54b7fd566932b0df88fddafdce95a6d52fae9200a62c160614eb85bf8dddc640

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6af0e3b24ef9bae1690850d28cda8abdbfc595a` · SHA-256 `54b7fd566932b0df88fddafdce95a6d52fae9200a62c160614eb85bf8dddc640`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yaël Dillies, Michał Mrugała. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Michał Mrugała
-/
import Mathlib.GroupTheory.MonoidLocalization.Basic

/-!
# Submonoid of pairs with quotient in a submonoid

This file defines the submonoid of pairs whose quotient lies in a submonoid of the localization.
-/

variable {M G H : Type*} [CommMonoid M] [CommGroup G] [CommGroup H]
  {f : (⊤ : Submonoid M).LocalizationMap G} {g : (⊤ : Submonoid M).LocalizationMap H}
  {s : Submonoid G} {x : M × M}

namespace Submonoid

variable (f s) in
/-- Given a commutative monoid `M`, a localization map `f` to its Grothendieck group `G` and
a submonoid `s` of `G`, `s.divPairs f` is the submonoid of pairs `(a, b)`
such that `f a / f b ∈ s`. -/
@[to_additive
"Given an additive commutative monoid `M`, a localization map `f` to its Grothendieck group `G` and
a submonoid `s` of `G`, `s.subPairs f` is the submonoid of pairs `(a, b)`
such that `f a - f b ∈ s`."]
def divPairs : Submonoid (M × M) := s.comap <| divMonoidHom.comp <| f.toMap.prodMap f.toMap

@[to_additive (attr := simp)]
lemma mem_divPairs : x ∈ divPairs f s ↔ f.toMap x.1 / f.toMap x.2 ∈ s := .rfl

--TODO(Yaël): make simp once `LocalizationMap.toMonoidHom` is simp nf
variable (f g s) in
@[to_additive]
lemma divPairs_comap :
    divPairs g (.comap (g.mulEquivOfLocalizations f).toMonoidHom s) = divPairs f s := by
  ext; simp

end Submonoid
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b305e75b53ec9abbd770f205be525c99eb62e2c73a1454eff591adda2ebcf84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/DivPairs/Variant54b7fd566932b0df88fddafdce95a6d52fae9200a62c160614eb85bf8dddc640.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
