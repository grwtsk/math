-- corpus-organization-transform:v1
-- Mathematical subject: Foundations.NumbersAndBasicStructures
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Core.Variant98c8b7e3e6cdad2e3bc9a66ba8967f6291fb470f87aeb299a89f7236dab80e3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98c8b7e3e6cdad2e3bc9a66ba8967f6291fb470f87aeb299a89f7236dab80e3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Core.Variant98c8b7e3e6cdad2e3bc9a66ba8967f6291fb470f87aeb299a89f7236dab80e3e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"98c8b7e3e6cdad2e3bc9a66ba8967f6291fb470f87aeb299a89f7236dab80e3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/PLift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Core


namespace FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Core.Variant98c8b7e3e6cdad2e3bc9a66ba8967f6291fb470f87aeb299a89f7236dab80e3e

public section

deriving instance DecidableEq for PLift

instance [Subsingleton α] : Subsingleton (PLift α) where
  allEq := fun ⟨a⟩ ⟨b⟩ => congrArg PLift.up (Subsingleton.elim a b)
