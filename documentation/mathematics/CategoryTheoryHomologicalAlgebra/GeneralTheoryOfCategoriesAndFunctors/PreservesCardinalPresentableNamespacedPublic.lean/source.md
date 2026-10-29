# Preserves Cardinal Presentable Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef706d39910552ad11985263297d390577f9dbf0` · SHA-256 `d1b917647afaf43f2fe48b7edb09f2ea81259039dfaf397b431828996172166f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesCardinalPresentable.Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreservesCardinalPresentable.Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Presentable/PreservesCardinalPresentable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Presentable.Basic

/-!
# Functors which preserve `κ`-presentable objects

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesCardinalPresentable.Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d

@[expose] public section

universe w

namespace CategoryTheory.Functor

variable {C D E : Type*} [Category* C] [Category* D] [Category* E]

/-- Let `F : C ⥤ D` be a functor and `κ` be a regular cardinal, we say
that `F.PreservesCardinalPresentable κ` holds if for any `X : C`
that is `κ`-presentable in `C`, the object `F.obj X` is `κ`-presentable in `D`. -/
class PreservesCardinalPresentable
    (F : C ⥤ D) (κ : Cardinal.{w}) [Fact κ.IsRegular] : Prop where
  le_inverseImage_isCardinalPresentable (F κ) :
    isCardinalPresentable C κ ≤ (isCardinalPresentable D κ).inverseImage F

export PreservesCardinalPresentable (le_inverseImage_isCardinalPresentable)

instance (F : C ⥤ D) (κ : Cardinal.{w}) [Fact κ.IsRegular] (X : C)
    [IsCardinalPresentable X κ] [F.PreservesCardinalPresentable κ] :
    IsCardinalPresentable (F.obj X) κ :=
  le_inverseImage_isCardinalPresentable F κ _ (by assumption)

instance (κ : Cardinal.{w}) [Fact κ.IsRegular] :
    (𝟭 C).PreservesCardinalPresentable κ where
  le_inverseImage_isCardinalPresentable := by rfl

instance (F : C ⥤ D) (G : D ⥤ E) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [F.PreservesCardinalPresentable κ] [G.PreservesCardinalPresentable κ] :
    (F ⋙ G).PreservesCardinalPresentable κ where
  le_inverseImage_isCardinalPresentable X hX := by
    simp only [ObjectProperty.prop_inverseImage_iff, comp_obj]
    infer_instance

lemma PreservesCardinalPresentable.of_iso {F G : C ⥤ D} (e : F ≅ G)
    (κ : Cardinal.{w}) [Fact κ.IsRegular] [F.PreservesCardinalPresentable κ] :
    G.PreservesCardinalPresentable κ where
  le_inverseImage_isCardinalPresentable X _ :=
    isCardinalPresentable_of_iso (e.app X) κ

lemma PreservesCardinalPresentable.iff_of_iso {F G : C ⥤ D} (e : F ≅ G)
    (κ : Cardinal.{w}) [Fact κ.IsRegular] :
    F.PreservesCardinalPresentable κ ↔ G.PreservesCardinalPresentable κ :=
  ⟨fun _ ↦ .of_iso e _, fun _ ↦ .of_iso e.symm _⟩

end CategoryTheory.Functor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03117c1ebfe7c9dab7570c791e93eadfcb6242b9e6a1ae7335f46310164cd2c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesCardinalPresentable/Variant8eb609868a9eace88cfbefa4d291e3f3e6b6173e4e14564dd61e115a900eb537.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
