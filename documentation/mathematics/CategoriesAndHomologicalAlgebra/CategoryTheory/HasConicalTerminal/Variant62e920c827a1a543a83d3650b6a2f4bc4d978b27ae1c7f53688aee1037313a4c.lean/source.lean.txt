-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalTerminal.Variant91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasConicalTerminal.Variant91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Enriched/Limits/HasConicalTerminal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Jon Eugster, Emily Riehl
-/
import Mathlib.CategoryTheory.Enriched.Limits.HasConicalProducts

/-!
# Existence of conical terminal objects
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalTerminal.Variant91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013

universe w v' v u u'

namespace CategoryTheory.Enriched

open Limits HasConicalLimit

/-- A category has a conical terminal object
if it has a conical limit over the empty diagram. -/
abbrev HasConicalTerminal := HasConicalLimitsOfShape (Discrete.{0} PEmpty)

variable (V : Type u') [Category.{v'} V] [MonoidalCategory V]
variable (C : Type u) [Category.{v} C] [EnrichedOrdinaryCategory V C]

example [HasConicalTerminal V C] : HasTerminal C := inferInstance

instance HasConicalProducts.hasConicalTerminal [HasConicalProducts.{w} V C] :
    HasConicalTerminal V C :=
  HasConicalLimitsOfShape.of_equiv V C emptyEquivalence.functor

end CategoryTheory.Enriched
