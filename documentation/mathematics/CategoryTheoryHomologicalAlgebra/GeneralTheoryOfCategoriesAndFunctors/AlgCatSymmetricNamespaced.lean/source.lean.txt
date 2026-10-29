-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variantcf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Monoidal.Variantcf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"cf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/AlgCat/Symmetric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Category.AlgCat.Monoidal
import Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric

/-!
# The monoidal structure on `AlgCat` is symmetric.

In this file we show:

* `AlgCat.instSymmetricCategory : SymmetricCategory (AlgCat.{u} R)`
-/

namespace GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variantcf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d

open CategoryTheory


noncomputable section

universe v u

variable {R : Type u} [CommRing R]

namespace AlgCat

instance : BraidedCategory (AlgCat.{u} R) :=
  braidedCategoryOfFaithful (forget₂ (AlgCat R) (ModuleCat R))
    (fun X Y => (Algebra.TensorProduct.comm R X Y).toAlgebraIso)
    (by aesop_cat)

instance : (forget₂ (AlgCat R) (ModuleCat R)).Braided where

instance instSymmetricCategory : SymmetricCategory (AlgCat.{u} R) :=
  symmetricCategoryOfFaithful (forget₂ (AlgCat R) (ModuleCat R))

end AlgCat
