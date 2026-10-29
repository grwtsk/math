-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variantca2d28c27b29cd2340ea2fd2783c99efa2bfa2461cb8f8581c12d4e42873786d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca2d28c27b29cd2340ea2fd2783c99efa2bfa2461cb8f8581c12d4e42873786d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tactics.Variantca2d28c27b29cd2340ea2fd2783c99efa2bfa2461cb8f8581c12d4e42873786d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ca2d28c27b29cd2340ea2fd2783c99efa2bfa2461cb8f8581c12d4e42873786d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Cases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Grind.Tactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variantca2d28c27b29cd2340ea2fd2783c99efa2bfa2461cb8f8581c12d4e42873786d

public section

attribute [grind cases eager] And False Empty True PUnit Exists Subtype Prod PProd MProd
attribute [grind cases] Or Sum PSum
