-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialCategory.Variant74f2a8c33da177911a29a0d49f278f213d474e933c1263a1835bc2cc6fb09b8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74f2a8c33da177911a29a0d49f278f213d474e933c1263a1835bc2cc6fb09b8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SimplicialCategory.Variant74f2a8c33da177911a29a0d49f278f213d474e933c1263a1835bc2cc6fb09b8f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"74f2a8c33da177911a29a0d49f278f213d474e933c1263a1835bc2cc6fb09b8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/SimplicialCategory/SimplicialObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SimplicialCategory.Basic
import Mathlib.CategoryTheory.Functor.FunctorHom

/-!
# The category of simplicial objects is simplicial

In `CategoryTheory.Functor.FunctorHom`, it was shown that a category of functors
`C ⥤ D` is enriched over a suitable category `C ⥤ Type _` of functors to types.

In this file, we deduce that `SimplicialObject D` is enriched over `SSet.{v} D`
(when `D : Type u` and `[Category.{v} D]`) and that `SimplicialObject D`
is actually a simplicial category. In particular, the category of simplicial
sets is a simplicial category.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialCategory.Variant74f2a8c33da177911a29a0d49f278f213d474e933c1263a1835bc2cc6fb09b8f

universe v u

namespace CategoryTheory

variable {D : Type u} [Category.{v} D]

namespace SimplicialObject

noncomputable instance : EnrichedCategory SSet.{v} (SimplicialObject D)  :=
  inferInstanceAs (EnrichedCategory (_ ⥤ Type v) (_ ⥤ D))

noncomputable instance : SimplicialCategory (SimplicialObject D) where
  homEquiv := Functor.natTransEquiv.symm

noncomputable instance : SimplicialCategory SSet.{v} :=
  inferInstanceAs (SimplicialCategory (SimplicialObject (Type v)))

end SimplicialObject

end CategoryTheory
