-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant0bb66a8e8daa51eeffa7ea15cf1b70460d3eb17923c0d58059e79ec5a5cb847a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bb66a8e8daa51eeffa7ea15cf1b70460d3eb17923c0d58059e79ec5a5cb847a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Elementwise.Variant0bb66a8e8daa51eeffa7ea15cf1b70460d3eb17923c0d58059e79ec5a5cb847a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0bb66a8e8daa51eeffa7ea15cf1b70460d3eb17923c0d58059e79ec5a5cb847a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/ConcreteCategory/Elementwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.Tactic.CategoryTheory.Elementwise
public import Mathlib.CategoryTheory.Limits.HasLimits
public import Mathlib.CategoryTheory.Limits.Shapes.Kernels

/-!
# Elementwise lemmas for concrete categories

In this file we provide various simp lemmas in its elementwise form via `Tactic.Elementwise`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant0bb66a8e8daa51eeffa7ea15cf1b70460d3eb17923c0d58059e79ec5a5cb847a

public section


open CategoryTheory CategoryTheory.Limits

attribute [elementwise] limit.lift_π limit.w
  colimit.ι_desc colimit.w kernel.lift_ι cokernel.π_desc kernel.condition cokernel.condition

attribute [simp] limit.lift_π_apply limit.w_apply colimit.ι_desc_apply colimit.w_apply
  kernel.lift_ι_apply cokernel.π_desc_apply kernel.condition_apply cokernel.condition_apply
