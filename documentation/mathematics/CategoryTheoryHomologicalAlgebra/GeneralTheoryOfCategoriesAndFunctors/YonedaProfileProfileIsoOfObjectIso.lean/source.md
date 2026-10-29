# Yoneda Profile Profile Iso Of Object Iso — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d37bc138901b5f0199d7fccf2281e3e78d3ea11` · SHA-256 `113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.CategoryTheory.Yoneda

/-!
# Complete morphism profiles and Yoneda reconstruction

The profile of an object is its full representable presheaf, not a finite
incidence sketch.  Full faithfulness of Yoneda then reconstructs every object
isomorphism from an isomorphism of complete profiles.
-/

namespace Mathematics.Terrain.YonedaProfile

open CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C]

/-- The complete incoming-morphism profile of an object. -/
abbrev CompleteMorphismProfile (object : C) :=
  CategoryTheory.yoneda.obj object

/-- Every object isomorphism induces an isomorphism of complete profiles. -/
def profileIsoOfObjectIso {left right : C} (iso : left ≅ right) :
    CompleteMorphismProfile left ≅ CompleteMorphismProfile right :=
  CategoryTheory.yoneda.mapIso iso

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

end Mathematics.Terrain.YonedaProfile
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0080351436966d00af2fa972d49918016664af3191c56b1a92ca38bebf9e951d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
