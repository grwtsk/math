-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Aesop.Variantf6efc812fe24c269a8ad70cc7f728bb08f7d4591daf3067940e38d3d40b479ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6efc812fe24c269a8ad70cc7f728bb08f7d4591daf3067940e38d3d40b479ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Aesop.Variantf6efc812fe24c269a8ad70cc7f728bb08f7d4591daf3067940e38d3d40b479ae","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f6efc812fe24c269a8ad70cc7f728bb08f7d4591daf3067940e38d3d40b479ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Category/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Mathlib.Init
import Aesop

/-!
# Category Theory Rule Set

This module defines the `CategoryTheory` Aesop rule set which is used by the
`aesop_cat` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Aesop.Variantf6efc812fe24c269a8ad70cc7f728bb08f7d4591daf3067940e38d3d40b479ae

declare_aesop_rule_sets [CategoryTheory]
