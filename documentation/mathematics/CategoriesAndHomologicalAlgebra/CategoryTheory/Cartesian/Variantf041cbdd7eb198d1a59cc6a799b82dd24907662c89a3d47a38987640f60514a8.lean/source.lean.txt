-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InstComonObjOfCartesian.Variant314c939c80c9972788c9bbd72c47a31a65667462fc6229e36e34fc6a7f3f75db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"314c939c80c9972788c9bbd72c47a31a65667462fc6229e36e34fc6a7f3f75db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.InstComonObjOfCartesian.Variant314c939c80c9972788c9bbd72c47a31a65667462fc6229e36e34fc6a7f3f75db","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"314c939c80c9972788c9bbd72c47a31a65667462fc6229e36e34fc6a7f3f75db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/CopyDiscardCategory/Cartesian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jacob Reinhold. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jacob Reinhold
-/
module

public import Mathlib.CategoryTheory.CopyDiscardCategory.Basic
public import Mathlib.CategoryTheory.CopyDiscardCategory.Deterministic
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Comon_
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic

/-!
# Cartesian Categories as Copy-Discard Categories

Every cartesian monoidal category is a copy-discard category where:
- Copy is the diagonal map
- Discard is the unique map to terminal

## Main results

* `CopyDiscardCategory` instance for cartesian monoidal categories
* All morphisms in cartesian categories are deterministic

## Tags

cartesian, copy-discard, comonoid, symmetric monoidal
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InstComonObjOfCartesian.Variant314c939c80c9972788c9bbd72c47a31a65667462fc6229e36e34fc6a7f3f75db

public section

universe v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory.{v} C]

namespace CartesianCopyDiscard

/-- Provide `ComonObj` instances using the canonical cartesian comonoid structure. -/
abbrev instComonObjOfCartesian (X : C) : ComonObj X :=
  ((cartesianComon C).obj X).comon

attribute [local instance] instComonObjOfCartesian

variable [BraidedCategory C]

/-- Every object in a cartesian category has commutative comonoid structure. -/
instance instIsCommComonObjOfCartesian (X : C) : IsCommComonObj X where

/-- Cartesian categories have copy-discard structure. -/
abbrev ofCartesianMonoidalCategory : CopyDiscardCategory C where

attribute [local instance] ofCartesianMonoidalCategory

/-- In cartesian categories, every morphism is deterministic (preserves the comonoid structure). -/
instance instDeterministic {X Y : C} (f : X ⟶ Y) : Deterministic f where

end CartesianCopyDiscard

end CategoryTheory
