-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Rat.Varianta31535595f8dae000b1f9a26655c394c48a6d7517ec18af1e4bafa6987e205fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a31535595f8dae000b1f9a26655c394c48a6d7517ec18af1e4bafa6987e205fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Rat.Varianta31535595f8dae000b1f9a26655c394c48a6d7517ec18af1e4bafa6987e205fd","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"a31535595f8dae000b1f9a26655c394c48a6d7517ec18af1e4bafa6987e205fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Field/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Order.Nonneg.Field
import Mathlib.Algebra.Order.Ring.Rat

/-!
# The rational numbers form a linear ordered field

This file used to contain the linear ordered field instance on the rational numbers.

TODO: rename this file to `Mathlib/Algebra/Order/GroupWithZero/NNRat.lean`

See note [foundational algebra order theory].

## Tags

rat, rationals, field, ℚ, numerator, denominator, num, denom
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Rat.Varianta31535595f8dae000b1f9a26655c394c48a6d7517ec18af1e4bafa6987e205fd

deriving instance LinearOrderedCommGroupWithZero for NNRat
