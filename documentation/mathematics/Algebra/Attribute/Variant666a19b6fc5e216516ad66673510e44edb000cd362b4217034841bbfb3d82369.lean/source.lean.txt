-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Field.Variant72c3563c5388c417d0d97155dac7a5a40b01073bb2790fd62539f28e4b9dcfd3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72c3563c5388c417d0d97155dac7a5a40b01073bb2790fd62539f28e4b9dcfd3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Field.Variant72c3563c5388c417d0d97155dac7a5a40b01073bb2790fd62539f28e4b9dcfd3","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"72c3563c5388c417d0d97155dac7a5a40b01073bb2790fd62539f28e4b9dcfd3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/Bound/Attribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Geoffrey Irving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Geoffrey Irving
-/

import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Tactic.Bound

/-!
# Tests for the `@bound` attribute

Verify that our heuristic for the priority of a declaration produces the expected values.
-/


namespace GRWTSK.Algebra.Field.Variant72c3563c5388c417d0d97155dac7a5a40b01073bb2790fd62539f28e4b9dcfd3

open Mathlib.Tactic.Bound (declPriority)

/-- info: 0 -/
#guard_msgs in
#eval declPriority `le_refl

/-- info: 0 -/
#guard_msgs in
#eval declPriority `sq_nonneg

/-- info: 11 -/
#guard_msgs in
#eval declPriority `Bound.one_lt_div_of_pos_of_lt

/-- info: 141 -/
#guard_msgs in
#eval declPriority `Bound.pow_le_pow_right_of_le_one_or_one_le
