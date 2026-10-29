-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Value.Variantcbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Value.Variantcbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"cbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Toml/Elab.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Toml.Elab.Value
public import Lake.Toml.Elab.Expression

/-!
# TOML Elaboration

Elaborates TOML syntax into Lean data types.
At top-level, elaborates a whole TOML file into a `Toml.Table`.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Value.Variantcbfe4505b6dd2b9dbb935bb49fdb6d6023f207b3a65d985227e20f36f2559416

