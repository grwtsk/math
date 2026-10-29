# Localization Preadditive — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99d9af471ca789076a12367af3c1983ba8ae7619` · SHA-256 `c309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Localization.Predicate
import Mathlib.CategoryTheory.Preadditive.FunctorCategory

/-!
# Localization of natural transformations to preadditive categories

-/

namespace CategoryTheory

open Limits

variable {C D E : Type*} [Category C] [Category D] [Category E]

namespace Localization

variable (L : C ⥤ D) (W : MorphismProperty C) [L.IsLocalization W]

lemma liftNatTrans_zero (F₁ F₂ : C ⥤ E) (F₁' F₂' : D ⥤ E)
    [Lifting L W F₁ F₁'] [Lifting L W F₂ F₂']
    [HasZeroMorphisms E] :
    liftNatTrans L W F₁ F₂ F₁' F₂' 0 = 0 :=
  natTrans_ext L W (by simp)

variable [Preadditive E]

lemma liftNatTrans_add (F₁ F₂ : C ⥤ E) (F₁' F₂' : D ⥤ E)
    [Lifting L W F₁ F₁'] [Lifting L W F₂ F₂']
    (τ τ' : F₁ ⟶ F₂) :
    liftNatTrans L W F₁ F₂ F₁' F₂' (τ + τ') =
      liftNatTrans L W F₁ F₂ F₁' F₂' τ + liftNatTrans L W F₁ F₂ F₁' F₂' τ' :=
  natTrans_ext L W (by simp)

end Localization

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ae371e02a8f5fee91dabd487706238747859d852b0e85e273ec0806e9b42dab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
