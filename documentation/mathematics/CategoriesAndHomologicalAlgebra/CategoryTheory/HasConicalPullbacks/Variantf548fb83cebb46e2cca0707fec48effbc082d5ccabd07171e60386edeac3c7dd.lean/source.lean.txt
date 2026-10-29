-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalPullback.Variant6209681943464f9dd173286cd3a21258f64bfb61b826b26e2c1dbfca461248f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6209681943464f9dd173286cd3a21258f64bfb61b826b26e2c1dbfca461248f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasConicalPullback.Variant6209681943464f9dd173286cd3a21258f64bfb61b826b26e2c1dbfca461248f2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6209681943464f9dd173286cd3a21258f64bfb61b826b26e2c1dbfca461248f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Enriched/Limits/HasConicalPullbacks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Jon Eugster, Emily Riehl
-/
import Mathlib.CategoryTheory.Enriched.Limits.HasConicalLimits

/-!
# Existence of conical pullbacks
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalPullback.Variant6209681943464f9dd173286cd3a21258f64bfb61b826b26e2c1dbfca461248f2

universe w v' v u u'

namespace CategoryTheory.Enriched

open Limits

variable (V : Type u') [Category.{v'} V] [MonoidalCategory V]
variable {C : Type u} [Category.{v} C] [EnrichedOrdinaryCategory V C]

/-- `HasPullback f g` represents the mere existence of a conical limit cone for the pair
of morphisms `f : X ⟶ Z` and `g : Y ⟶ Z` -/
abbrev HasConicalPullback {X Y Z : C} (f : X ⟶ Z) (g : Y ⟶ Z) :=
  HasConicalLimit V (cospan f g)

/-- ensure conical pullbacks are pullbacks -/
example {X Y Z : C} (f : X ⟶ Z) (g : Y ⟶ Z) [HasConicalPullback V f g] : HasPullback f g :=
  inferInstance

variable (C)

/--
`HasConicalPullbacks` represents the existence of conical pullback for every pair of
morphisms
-/
abbrev HasConicalPullbacks : Prop := HasConicalLimitsOfShape WalkingCospan V C

/-- ensure pullbacks exist of existence of conical pullbacks -/
example [HasConicalPullbacks V C] : HasPullbacks C := inferInstance

end CategoryTheory.Enriched
