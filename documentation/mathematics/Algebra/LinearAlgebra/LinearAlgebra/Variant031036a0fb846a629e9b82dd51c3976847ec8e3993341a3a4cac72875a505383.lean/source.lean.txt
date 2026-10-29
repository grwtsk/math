-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.NontrivialOfIsPushoutOfIsField.Variant06ed224c72dacff62d4af6133c71e7dfcbf083f7676ea1debddff724e78baec1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06ed224c72dacff62d4af6133c71e7dfcbf083f7676ea1debddff724e78baec1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.NontrivialOfIsPushoutOfIsField.Variant06ed224c72dacff62d4af6133c71e7dfcbf083f7676ea1debddff724e78baec1","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"06ed224c72dacff62d4af6133c71e7dfcbf083f7676ea1debddff724e78baec1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/Ring/LinearAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.Algebra.Category.Ring.Constructions
public import Mathlib.LinearAlgebra.Basis.VectorSpace
public import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic

/-!
# Results on the category of rings requiring linear algebra

## Results

- `CommRingCat.nontrivial_of_isPushout_of_isField`: the pushout of non-trivial rings over a field
  is non-trivial.

-/


namespace GRWTSK.Algebra.LinearAlgebra.NontrivialOfIsPushoutOfIsField.Variant06ed224c72dacff62d4af6133c71e7dfcbf083f7676ea1debddff724e78baec1

public section

universe u

open CategoryTheory Limits TensorProduct

namespace CommRingCat

lemma nontrivial_of_isPushout_of_isField {A B C D : CommRingCat.{u}}
    (hA : IsField A) {f : A ⟶ B} {g : A ⟶ C} {inl : B ⟶ D} {inr : C ⟶ D}
    [Nontrivial B] [Nontrivial C]
    (h : IsPushout f g inl inr) : Nontrivial D := by
  let : Field A := hA.toField
  algebraize [f.hom, g.hom]
  let e : D ≅ ↧(B ⊗[A] C) :=
    IsColimit.coconePointUniqueUpToIso h.isColimit (CommRingCat.pushoutCoconeIsColimit A B C)
  let e' : D ≃ B ⊗[A] C := e.commRingCatIsoToRingEquiv.toEquiv
  exact e'.nontrivial

end CommRingCat
