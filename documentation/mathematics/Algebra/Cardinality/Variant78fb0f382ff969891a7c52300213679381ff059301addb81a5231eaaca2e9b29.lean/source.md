# Complete source: GRWTSK.Algebra.Cardinality.Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67ff2a50f55cebe14a07926569b84ce4922811a7` · SHA-256 `78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.GroupTheory.OreLocalization.Cardinality
import Mathlib.RingTheory.OreLocalization.Ring

/-!
# Cardinality of Ore localizations of rings

This file contains some results on cardinality of Ore localizations of rings.
-/

universe u

open Cardinal

namespace OreLocalization

variable {R : Type u} [Ring R] {S : Submonoid R} [OreLocalization.OreSet S]

theorem cardinalMk (hS : S ≤ nonZeroDivisorsRight R) : #(OreLocalization S R) = #R :=
  le_antisymm (cardinalMk_le S) (mk_le_of_injective (numeratorHom_inj hS))

end OreLocalization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b92374ecd4fb7d43bfa2850b225c9b8d67d8b7cf5a926fcc9fef67e841471551 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Cardinality/Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
