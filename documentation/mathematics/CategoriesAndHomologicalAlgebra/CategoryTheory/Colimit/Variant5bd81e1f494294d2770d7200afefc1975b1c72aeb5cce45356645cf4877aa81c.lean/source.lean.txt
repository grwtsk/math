-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NerveAdjunction.Variant510cbfa5735359e407cb0ac6e425b2ebb2a4af55206715f72e1643e4dca2eebc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"510cbfa5735359e407cb0ac6e425b2ebb2a4af55206715f72e1643e4dca2eebc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.NerveAdjunction.Variant510cbfa5735359e407cb0ac6e425b2ebb2a4af55206715f72e1643e4dca2eebc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"510cbfa5735359e407cb0ac6e425b2ebb2a4af55206715f72e1643e4dca2eebc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Category/Cat/Colimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mario Carneiro and Emily Riehl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Emily Riehl
-/
import Mathlib.AlgebraicTopology.SimplicialSet.NerveAdjunction
import Mathlib.CategoryTheory.Monad.Limits


/-!
# The category of small categories has all small colimits.

In this file, the existence of colimits in `Cat` is deduced from the existence of colimits in the
category of simplicial sets. Indeed, `Cat` identifies to a reflective subcategory of the category
of simplicial sets (see `AlgebraicTopology.SimplicialSet.NerveAdjunction`), so that colimits in
`Cat` can be computed by passing to nerves, taking the colimit in `SSet` and finally applying the
homotopy category functor `SSet ⥤ Cat`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NerveAdjunction.Variant510cbfa5735359e407cb0ac6e425b2ebb2a4af55206715f72e1643e4dca2eebc

noncomputable section

universe v

open CategoryTheory.Limits

namespace CategoryTheory

namespace Cat

/-- The category of small categories has all small colimits as a reflective subcategory of the
category of simplicial sets, which has all small colimits. -/
instance : HasColimits Cat.{v, v} :=
  hasColimits_of_reflective nerveFunctor

end Cat

end CategoryTheory
