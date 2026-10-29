# Rat Big Operators Aligned — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55cc52d14de52f65d7b8e237d7862495c62169b7` · SHA-256 `1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Data.Rat.Cast
import Mathlib.Algebra.BigOperators.Basic

#align_import data.rat.big_operators from "leanprover-community/mathlib"@"008205aa645b3f194c1da47025c5f110c8406eab"

/-! # Casting lemmas for rational numbers involving sums and products
-/

open BigOperators

variable {ι α : Type*}

namespace Rat

section WithDivRing

variable [DivisionRing α] [CharZero α]

@[simp, norm_cast]
theorem cast_list_sum (s : List ℚ) : (↑s.sum : α) = (s.map (↑)).sum :=
  map_list_sum (Rat.castHom α) _
#align rat.cast_list_sum Rat.cast_list_sum

@[simp, norm_cast]
theorem cast_multiset_sum (s : Multiset ℚ) : (↑s.sum : α) = (s.map (↑)).sum :=
  map_multiset_sum (Rat.castHom α) _
#align rat.cast_multiset_sum Rat.cast_multiset_sum

@[simp, norm_cast]
theorem cast_sum (s : Finset ι) (f : ι → ℚ) : ∑ i in s, f i = ∑ i in s, (f i : α) :=
  (map_sum (Rat.castHom α) _ s)
#align rat.cast_sum Rat.cast_sum

@[simp, norm_cast]
theorem cast_list_prod (s : List ℚ) : (↑s.prod : α) = (s.map (↑)).prod :=
  map_list_prod (Rat.castHom α) _
#align rat.cast_list_prod Rat.cast_list_prod

end WithDivRing

section Field

variable [Field α] [CharZero α]

@[simp, norm_cast]
theorem cast_multiset_prod (s : Multiset ℚ) : (↑s.prod : α) = (s.map (↑)).prod :=
  map_multiset_prod (Rat.castHom α) _
#align rat.cast_multiset_prod Rat.cast_multiset_prod

@[simp, norm_cast]
theorem cast_prod (s : Finset ι) (f : ι → ℚ) : ∏ i in s, f i = ∏ i in s, (f i : α) :=
  map_prod (Rat.castHom α) _ _
#align rat.cast_prod Rat.cast_prod

end Field

end Rat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d46f223bc92db34a2254a7014408a63be2c99a2d8938d67058567d2e7e1519df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1bc9ad3c9236387eb705c942054764e9cce0a47ea553d2e36af736ba2cb99175.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
