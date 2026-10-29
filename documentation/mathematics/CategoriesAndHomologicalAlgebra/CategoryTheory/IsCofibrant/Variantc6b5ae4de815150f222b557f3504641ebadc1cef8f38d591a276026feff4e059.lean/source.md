# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCofibrant.Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b040f6f2149cf8f4dda7dd9574e295165559be4c` · SHA-256 `c6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.ModelCategory.CategoryWithCofibrations
import Mathlib.CategoryTheory.Limits.Shapes.Terminal

/-!
# Fibrant and cofibrant objects in a model category

Once a category `C` has been endowed with a `CategoryWithCofibrations C`
instance, it is possible to define the property `IsCofibrant X` for
any `X : C` as an abbreviation for `Cofibration (initial.to X : ⊥_ C ⟶ X)`.
(Fibrant objects are defined similarly.)

-/

open CategoryTheory Limits

namespace HomotopicalAlgebra

variable {C : Type*} [Category C]

section

variable [CategoryWithCofibrations C] [HasInitial C]

/-- An object `X` is cofibrant if `⊥_ C ⟶ X` is a cofibration. -/
abbrev IsCofibrant (X : C) : Prop := Cofibration (initial.to X)

lemma isCofibrant_iff (X : C) :
    IsCofibrant X ↔ Cofibration (initial.to X) := Iff.rfl

lemma isCofibrant_iff_of_isInitial [(cofibrations C).RespectsIso]
    {A X : C} (i : A ⟶ X) (hA : IsInitial A) :
    IsCofibrant X ↔ Cofibration i := by
  simp only [isCofibrant_iff, cofibration_iff]
  apply (cofibrations C).arrow_mk_iso_iff
  exact Arrow.isoMk (IsInitial.uniqueUpToIso initialIsInitial hA) (Iso.refl _)

end

section

variable [CategoryWithFibrations C] [HasTerminal C]

/-- An object `X` is fibrant if `X ⟶ ⊤_ C` is a fibration. -/
abbrev IsFibrant (X : C) : Prop := Fibration (terminal.from X)

lemma isFibrant_iff (X : C) :
    IsFibrant X ↔ Fibration (terminal.from X) := Iff.rfl

lemma isFibrant_iff_of_isTerminal [(fibrations C).RespectsIso]
    {X Y : C} (p : X ⟶ Y) (hY : IsTerminal Y) :
    IsFibrant X ↔ Fibration p := by
  simp only [isFibrant_iff, fibration_iff]
  symm
  apply (fibrations C).arrow_mk_iso_iff
  exact Arrow.isoMk (Iso.refl _) (IsTerminal.uniqueUpToIso hY terminalIsTerminal)

end

end HomotopicalAlgebra
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d46adfded7b5271124d64cd36f9c96b821240ae9a83fe105bbd313f4fa563814 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
