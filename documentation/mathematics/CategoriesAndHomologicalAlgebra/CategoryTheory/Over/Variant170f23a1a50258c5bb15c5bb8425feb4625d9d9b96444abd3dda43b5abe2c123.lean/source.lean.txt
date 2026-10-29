-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adhesive.Varianta59f0c9f678d8d121993c79d9549ae74ee42c29e911209422097ce75b0232388","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a59f0c9f678d8d121993c79d9549ae74ee42c29e911209422097ce75b0232388","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Adhesive.Varianta59f0c9f678d8d121993c79d9549ae74ee42c29e911209422097ce75b0232388","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a59f0c9f678d8d121993c79d9549ae74ee42c29e911209422097ce75b0232388","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Adhesive/Over.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Dénes Pápai. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dénes Pápai
-/
module

public import Mathlib.CategoryTheory.Adhesive.Basic
public import Mathlib.CategoryTheory.Limits.Constructions.Over.Connected

/-! # Adhesive structure on slice categories

The slice category `Over B` inherits the property of being adhesive from the
base category, and dually so does the coslice category `Under B`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adhesive.Varianta59f0c9f678d8d121993c79d9549ae74ee42c29e911209422097ce75b0232388

public section

namespace CategoryTheory

open Limits

variable {C : Type*} [Category* C]

/-- Slices of adhesive categories are adhesive. See [adhesive2004], Proposition 8 (ii). -/
instance adhesive_over [Adhesive C] [HasPullbacks C] [HasPushouts C] (B : C) :
    Adhesive (Over B) :=
  adhesive_of_preserves_and_reflects_isomorphism (Over.forget B)

/-- Coslices of adhesive categories are adhesive. See [adhesive2004], Proposition 8 (ii). -/
instance adhesive_under [Adhesive C] [HasPullbacks C] [HasPushouts C] (B : C) :
    Adhesive (Under B) :=
  adhesive_of_preserves_and_reflects_isomorphism (Under.forget B)

end CategoryTheory
