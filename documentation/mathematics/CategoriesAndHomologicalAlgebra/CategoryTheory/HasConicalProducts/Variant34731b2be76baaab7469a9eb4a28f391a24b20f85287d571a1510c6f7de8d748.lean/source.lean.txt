-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalProducts.Variantc423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasConicalProducts.Variantc423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Enriched/Limits/HasConicalProducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Jon Eugster, Emily Riehl
-/
import Mathlib.CategoryTheory.Enriched.Limits.HasConicalLimits

/-!
# Existence of conical products
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalProducts.Variantc423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f

universe w v' v u u'

namespace CategoryTheory.Enriched

open Limits

/-- Has conical products if all discrete diagrams of bounded size have conical products. -/
class HasConicalProducts
    (V : outParam <| Type u') [Category.{v'} V] [MonoidalCategory V]
    (C : Type u) [Category.{v} C] [EnrichedOrdinaryCategory V C] : Prop where
  /-- A family of objects (parametrized by any `J : Type w`) has a conical product. -/
  hasConicalLimitsOfShape : ∀ J : Type w, HasConicalLimitsOfShape (Discrete J) V C := by
    infer_instance

attribute [instance] HasConicalProducts.hasConicalLimitsOfShape

variable (V : Type u') [Category.{v'} V] [MonoidalCategory V]
variable {C : Type u} [Category.{v} C] [EnrichedOrdinaryCategory V C]

/-- An abbreviation for `HasConicalLimit V (Discrete.functor f)`. -/
abbrev HasConicalProduct {I : Type w} (f : I → C) :=
  HasConicalLimit V (Discrete.functor f)

/-- ensure products exists from the existence of conical products -/
example [HasConicalProducts.{w} V C] : HasProducts.{w} C := inferInstance

end CategoryTheory.Enriched
