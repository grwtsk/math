# Retracts Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb626ba77ed050f74b148fbd2bc0f6b28961b306` · SHA-256 `c23cf9a53ad8dadba13e8ece9da7d64a8c04c640830df4e1dcd77b2b5372e434`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Presentable.Basic
public import Mathlib.CategoryTheory.ObjectProperty.Retract

/-!
# Presentable objects are stable under retracts

-/

public section

universe w v u

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C]

set_option backward.defeqAttrib.useBackward true in
lemma Retract.isCardinalPresentable
    {X Y : C} (h : Retract Y X) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [IsCardinalPresentable X κ] :
    IsCardinalPresentable Y κ where
  preservesColimitOfShape J _ _ := ⟨fun {F} ↦ ⟨fun {c} hc ↦ ⟨by
    have := essentiallySmallSelf J
    have := isFiltered_of_isCardinalFiltered J κ
    refine Types.FilteredColimit.isColimitOf' _ _ (fun f ↦ ?_) (fun j f₁ f₂ hf ↦ ?_)
    · obtain ⟨i, g, hg⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ hc (h.r ≫ f)
      exact ⟨i, h.i ≫ g, by simp [hg]⟩
    · dsimp at f₁ f₂ hf ⊢
      obtain ⟨k, u, hj⟩ := IsCardinalPresentable.exists_eq_of_isColimit'
        κ hc (h.r ≫ f₁) (h.r ≫ f₂) (by simp [hf])
      exact ⟨k, u, by simpa [← cancel_epi h.r] using hj⟩⟩⟩⟩

instance (κ : Cardinal.{w}) [Fact κ.IsRegular] :
    (isCardinalPresentable C κ).IsStableUnderRetracts where
  of_retract {Y X} h hX := by
    rw [isCardinalPresentable_iff] at hX ⊢
    exact h.isCardinalPresentable κ

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c21735e824725648617f0fa00c0ffbf8dee8113750c68b15e83a36892cd0c2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retracts/Variantc23cf9a53ad8dadba13e8ece9da7d64a8c04c640830df4e1dcd77b2b5372e434.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
