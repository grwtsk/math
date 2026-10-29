# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SolutionSetCondition.Variant0663479871b492066aac15d848fe97d883ae7885b97a8e407fe842d377ec8884

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2b74929b76bc37b8bd434cee1e42e03626acf24` · SHA-256 `0663479871b492066aac15d848fe97d883ae7885b97a8e407fe842d377ec8884`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Presentable.Comma
public import Mathlib.CategoryTheory.Adjunction.AdjointFunctorTheorems

/-!
# Accessible functors satisfy the solution set condition

If `F : C ⥤ D` is an accessible functor between accessible categories,
then `F` satisfies the solution set condition (this is corollary 2.45 in
the book by Adámek and Rosický).

## References
* [Adámek, J. and Rosický, J., *Locally presentable and accessible categories*][Adamek_Rosicky_1994]

-/

@[expose] public section

universe w

namespace CategoryTheory

variable {C D : Type*} [Category* C] [Category* D]

/-- An accessible functor between accessible categories satisfies the solution set condition.
This is corollary 2.45 in [Adamek_Rosicky_1994]. -/
lemma SolutionSetCondition.of_isCardinalAccessible
    [IsAccessibleCategory.{w} C] [IsAccessibleCategory.{w} D]
    (F : C ⥤ D) [Functor.IsAccessible.{w} F] :
    SolutionSetCondition.{w} F := by
  intro Y
  obtain ⟨κ, _, _⟩ := IsAccessibleCategory.exists_cardinal.{w} (StructuredArrow Y F)
  obtain ⟨ι, X₀, h⟩ := ObjectProperty.EssentiallySmall.exists_eq_isoClosure_ofObj.{w}
    (isCardinalPresentable (StructuredArrow Y F) κ)
  refine ⟨ι, fun i ↦ (X₀ i).right, fun i ↦ (X₀ i).hom, fun X g ↦ ?_⟩
  let E := CostructuredArrow (isCardinalPresentable _ κ).ι (StructuredArrow.mk g)
  have : IsFiltered E := isFiltered_of_isCardinalFiltered _ κ
  have : Nonempty E := IsFiltered.nonempty
  let γ : E := Classical.arbitrary _
  obtain ⟨_, ⟨i⟩, ⟨e⟩⟩ := h.le _ γ.left.property
  exact ⟨i, _, StructuredArrow.w (e.inv ≫ γ.hom)⟩

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7b62f254b9b50092cdd3ec0afea1fd1ffc6c0e9e669e418c7182f0036189357 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SolutionSetCondition/Variant0663479871b492066aac15d848fe97d883ae7885b97a8e407fe842d377ec8884.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
