-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashEq.Variant176f1c39a8e2b83eaa29efa17fbf8ff642a93657caf8e2b90e7374e019dd9d0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"176f1c39a8e2b83eaa29efa17fbf8ff642a93657caf8e2b90e7374e019dd9d0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.HashEq.Variant176f1c39a8e2b83eaa29efa17fbf8ff642a93657caf8e2b90e7374e019dd9d0e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"176f1c39a8e2b83eaa29efa17fbf8ff642a93657caf8e2b90e7374e019dd9d0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Lemmas/Hashable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia Markus Himmel
-/
module

prelude
public import Init.Data.String.Slice
public import Init.Data.LawfulHashable
import all Init.Data.String.Slice
import Init.Data.String.Lemmas.Slice


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashEq.Variant176f1c39a8e2b83eaa29efa17fbf8ff642a93657caf8e2b90e7374e019dd9d0e

namespace String

public theorem hash_eq {s : String} : hash s = String.hash s := rfl

namespace Slice

public theorem hash_eq {s : String.Slice} : hash s = String.hash s.copy := (rfl)

public instance : LawfulHashable String.Slice where
  hash_eq a b hab := by simp [hash_eq, beq_eq_true_iff.1 hab]

end String.Slice
