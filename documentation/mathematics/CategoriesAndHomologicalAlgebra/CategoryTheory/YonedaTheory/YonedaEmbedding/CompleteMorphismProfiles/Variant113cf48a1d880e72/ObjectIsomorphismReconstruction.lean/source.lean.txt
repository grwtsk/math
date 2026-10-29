/-
Noncomputable Yoneda inverse, round-trip equality and Nonempty isomorphism equivalence
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8
Organized SHA-256: a33ef88d19a2ecbdbb9080ec3b2702ee61c91e572d2d04a56510725284c19603
PMD: 510.9.010.070.030 yoneda embedding (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Mathlib.CategoryTheory.Yoneda

import GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaTheory.YonedaEmbedding.CompleteMorphismProfiles.Variant113cf48a1d880e72.RepresentableProfiles
/-!
# Complete morphism profiles and Yoneda reconstruction

The profile of an object is its full representable presheaf, not a finite
incidence sketch.  Full faithfulness of Yoneda then reconstructs every object
isomorphism from an isomorphism of complete profiles.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaTheory.YonedaEmbedding.CompleteMorphismProfiles.Variant113cf48a1d880e72

open CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C]

/--
Yoneda reconstructs an object isomorphism from an isomorphism of the complete
morphism profiles.
-/
noncomputable def reconstructIso
    {left right : C}
    (profileIso :
      CompleteMorphismProfile left ≅ CompleteMorphismProfile right) :
    left ≅ right :=
  CategoryTheory.yoneda.preimageIso profileIso

/-- Reconstruction is inverse to mapping an existing object isomorphism. -/
@[simp]
theorem reconstructIso_profileIsoOfObjectIso
    {left right : C} (iso : left ≅ right) :
    reconstructIso (profileIsoOfObjectIso iso) = iso := by
  exact CategoryTheory.Functor.preimageIso_mapIso _ iso

/--
Two objects have isomorphic complete profiles exactly when they are
isomorphic.  This statement does not hold for an arbitrary finite Boolean
shadow.
-/
theorem profileIso_nonempty_iff_objectIso_nonempty
    (left right : C) :
    Nonempty
        (CompleteMorphismProfile left ≅ CompleteMorphismProfile right) ↔
      Nonempty (left ≅ right) := by
  constructor
  · rintro ⟨profileIso⟩
    exact ⟨reconstructIso profileIso⟩
  · rintro ⟨iso⟩
    exact ⟨profileIsoOfObjectIso iso⟩

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaTheory.YonedaEmbedding.CompleteMorphismProfiles.Variant113cf48a1d880e72
