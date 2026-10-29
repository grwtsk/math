-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.N.Variant3217543a8653e8532c7630e86ebd0feab95c6bad5aa5255bc027642254dc0c54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3217543a8653e8532c7630e86ebd0feab95c6bad5aa5255bc027642254dc0c54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.N.Variant3217543a8653e8532c7630e86ebd0feab95c6bad5aa5255bc027642254dc0c54","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3217543a8653e8532c7630e86ebd0feab95c6bad5aa5255bc027642254dc0c54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/DoldKan/FunctorN.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.DoldKan.PInfty

/-!

# Construction of functors N for the Dold-Kan correspondence

In this file, we construct functors `N₁ : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ)`
and `N₂ : Karoubi (SimplicialObject C) ⥤ Karoubi (ChainComplex C ℕ)`
for any preadditive category `C`. (The indices of these functors are the number of occurrences
of `Karoubi` at the source or the target.)

In the case `C` is additive, the functor `N₂` shall be the functor of the equivalence
`CategoryTheory.Preadditive.DoldKan.equivalence` defined in `EquivalenceAdditive.lean`.

In the case the category `C` is pseudoabelian, the composition of `N₁` with the inverse of the
equivalence `ChainComplex C ℕ ⥤ Karoubi (ChainComplex C ℕ)` will be the functor
`CategoryTheory.Idempotents.DoldKan.N` of the equivalence of categories
`CategoryTheory.Idempotents.DoldKan.equivalence : SimplicialObject C ≌ ChainComplex C ℕ`
defined in `EquivalencePseudoabelian.lean`.

When the category `C` is abelian, a relation between `N₁` and the
normalized Moore complex functor shall be obtained in `Normalized.lean`.

(See `Equivalence.lean` for the general strategy of proof of the Dold-Kan equivalence.)

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.N.Variant3217543a8653e8532c7630e86ebd0feab95c6bad5aa5255bc027642254dc0c54

open CategoryTheory CategoryTheory.Category CategoryTheory.Idempotents

noncomputable section

namespace AlgebraicTopology

namespace DoldKan

variable {C : Type*} [Category C] [Preadditive C]

/-- The functor `SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ)` which maps
`X` to the formal direct factor of `K[X]` defined by `PInfty`. -/
@[simps]
def N₁ : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ) where
  obj X :=
    { X := AlternatingFaceMapComplex.obj X
      p := PInfty
      idem := PInfty_idem }
  map f :=
    { f := PInfty ≫ AlternatingFaceMapComplex.map f }

/-- The extension of `N₁` to the Karoubi envelope of `SimplicialObject C`. -/
@[simps!]
def N₂ : Karoubi (SimplicialObject C) ⥤ Karoubi (ChainComplex C ℕ) :=
  (functorExtension₁ _ _).obj N₁

/-- The canonical isomorphism `toKaroubi (SimplicialObject C) ⋙ N₂ ≅ N₁`. -/
def toKaroubiCompN₂IsoN₁ : toKaroubi (SimplicialObject C) ⋙ N₂ ≅ N₁ :=
  (functorExtension₁CompWhiskeringLeftToKaroubiIso _ _).app N₁

@[simp]
lemma toKaroubiCompN₂IsoN₁_hom_app (X : SimplicialObject C) :
    (toKaroubiCompN₂IsoN₁.hom.app X).f = PInfty := rfl

@[simp]
lemma toKaroubiCompN₂IsoN₁_inv_app (X : SimplicialObject C) :
    (toKaroubiCompN₂IsoN₁.inv.app X).f = PInfty := rfl

end DoldKan

end AlgebraicTopology
