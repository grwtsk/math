-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Collect.Varianta1350731d895e7d3d45bc87f1ca560f827dab116f88275385dc468583109067b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a1350731d895e7d3d45bc87f1ca560f827dab116f88275385dc468583109067b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Collect.Varianta1350731d895e7d3d45bc87f1ca560f827dab116f88275385dc468583109067b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a1350731d895e7d3d45bc87f1ca560f827dab116f88275385dc468583109067b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Try.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Try.Collect


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Collect.Varianta1350731d895e7d3d45bc87f1ca560f827dab116f88275385dc468583109067b

public section

namespace Lean

builtin_initialize registerTraceClass `try
builtin_initialize registerTraceClass `try.collect
builtin_initialize registerTraceClass `try.collect.funInd

builtin_initialize registerTraceClass `try.debug
builtin_initialize registerTraceClass `try.debug.funInd
builtin_initialize registerTraceClass `try.debug.chain

end Lean
