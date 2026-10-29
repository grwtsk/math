# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Final.Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52a7d4241793b708b2de8cb5bb19cb77d51d8dfc` · SHA-256 `b24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Filtered.Final

/-!
# Final functors between intervals

-/

universe u

instance Set.Ici.subtype_functor_final {J : Type u} [LinearOrder J] (j : J) :
    (Subtype.mono_coe (Set.Ici j)).functor.Final := by
  rw [Monotone.final_functor_iff]
  intro k
  exact ⟨⟨max j k, le_max_left _ _⟩, le_max_right _ _⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=724360cd0d27e555246d06ff47ecc3eaf054828c1cc531ea050b5071dacb5651 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
