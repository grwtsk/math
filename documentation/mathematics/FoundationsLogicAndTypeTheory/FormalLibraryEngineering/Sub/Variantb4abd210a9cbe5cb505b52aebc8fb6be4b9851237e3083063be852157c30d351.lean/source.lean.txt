-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sub.Variante64602636bcac4f3a9217ceca96e927fb69cd80631447098ee4f1dfca35a09fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e64602636bcac4f3a9217ceca96e927fb69cd80631447098ee4f1dfca35a09fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Sub.Variante64602636bcac4f3a9217ceca96e927fb69cd80631447098ee4f1dfca35a09fe","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e64602636bcac4f3a9217ceca96e927fb69cd80631447098ee4f1dfca35a09fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Operations/Sub.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Round

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sub.Variante64602636bcac4f3a9217ceca96e927fb69cd80631447098ee4f1dfca35a09fe

@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Computes the difference of two floating point numbers and rounds the result according to
the given specification.
-/
def sub (spec : Format) : UnpackedFloat → UnpackedFloat → UnpackedFloat
  | .notANumber, _ => .notANumber
  | _, .notANumber => .notANumber
  | .infinity sign₁, .infinity sign₂ =>
    if sign₁ == -sign₂ then .infinity sign₁ else .notANumber
  | .infinity s, _ => .infinity s
  | _, .infinity s => .infinity (-s)
  | .zero sign₁, .zero sign₂ =>
    if sign₁ == -sign₂ then .zero sign₁ else .zero .positive
  | .zero _, .finite sign mantissa exponent hm => .finite (-sign) mantissa exponent hm
  | x, .zero _ => x
  | .finite s₁ m₁ e₁ _, .finite s₂ m₂ e₂ _ =>
    let smallerExponent := min e₁ e₂
    let (m₁, _) := decreaseExponent m₁ e₁ smallerExponent
    let (m₂, _) := decreaseExponent m₂ e₂ smallerExponent
    let mantissa := s₁.apply m₁ - s₂.apply m₂
    normalize spec mantissa smallerExponent .positive

end Float.Model.UnpackedFloat
