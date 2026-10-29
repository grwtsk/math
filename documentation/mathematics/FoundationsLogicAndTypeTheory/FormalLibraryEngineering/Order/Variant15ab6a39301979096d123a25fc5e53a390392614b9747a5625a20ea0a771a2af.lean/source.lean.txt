-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Char.Variant79eff3fc5d9072221c08d8c3fd8fd5c1b41aa5ea3385048757890f119d118c66","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79eff3fc5d9072221c08d8c3fd8fd5c1b41aa5ea3385048757890f119d118c66","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Char.Variant79eff3fc5d9072221c08d8c3fd8fd5c1b41aa5ea3385048757890f119d118c66","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"79eff3fc5d9072221c08d8c3fd8fd5c1b41aa5ea3385048757890f119d118c66","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Char/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Char.Basic
import Init.Data.Char.Lemmas
public import Init.Data.Order.Classes
import Init.Data.Order.Factories
import Init.PropLemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Char.Variant79eff3fc5d9072221c08d8c3fd8fd5c1b41aa5ea3385048757890f119d118c66

open Std

namespace Char

public instance instIsLinearOrder : IsLinearOrder Char := by
  apply IsLinearOrder.of_le
  case le_antisymm => constructor; apply Char.le_antisymm
  case le_trans => constructor; apply Char.le_trans
  case le_total => constructor; apply Char.le_total

public instance : LawfulOrderLT Char where
  lt_iff a b := by
    simp [← Char.not_le, Decidable.imp_iff_not_or, Std.Total.total]

end Char
