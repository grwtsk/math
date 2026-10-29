# Yoneda Profile Reconstruct From Complete Profile — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc68216ed1f96a6f876b64e300c24481e0b67147` · SHA-256 `0b03aa3c9f9a9fb6d1f4c6496fcca8b2aec43f92f7d721c1a0e51d0dc4bc4b84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Terrain.YonedaProfile

/-!
# Complete morphism profiles

Only the complete representable profile has Yoneda reconstruction authority.
A finite incidence sketch or Boolean shadow does not.
-/

namespace Mathematics.MobiusOntology

open CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C]

abbrev CompleteMorphismProfile (object : C) :=
  Mathematics.Terrain.YonedaProfile.CompleteMorphismProfile object

noncomputable def reconstructFromCompleteProfile
    {left right : C}
    (profileIso :
      CompleteMorphismProfile left ≅ CompleteMorphismProfile right) :
    left ≅ right :=
  Mathematics.Terrain.YonedaProfile.reconstructIso profileIso

theorem complete_profile_reconstructs_up_to_iso
    (left right : C) :
    Nonempty
        (CompleteMorphismProfile left ≅ CompleteMorphismProfile right) ↔
      Nonempty (left ≅ right) :=
  Mathematics.Terrain.YonedaProfile.profileIso_nonempty_iff_objectIso_nonempty
    left right

end Mathematics.MobiusOntology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d9c7aff4232f450d0c8c60d706fe03510863e1f429e17e439ef8287f0514c67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant0b03aa3c9f9a9fb6d1f4c6496fcca8b2aec43f92f7d721c1a0e51d0dc4bc4b84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
