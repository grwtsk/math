-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttr.Variant968004de8ada80932a4198034e47cf9430c5342580fd515a9b1a865b735ca45f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"968004de8ada80932a4198034e47cf9430c5342580fd515a9b1a865b735ca45f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LabelAttr.Variant968004de8ada80932a4198034e47cf9430c5342580fd515a9b1a865b735ca45f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"968004de8ada80932a4198034e47cf9430c5342580fd515a9b1a865b735ca45f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Util/DummyLabelAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Tactic.LabelAttr

/-! # Dummy label attribute, for tests

This has to be in a separate file from `Mathlib.Tactic.LabelAttr`, and also a separate file
from the files in `test/` that actually want to use it, so it ends up alone. This could be in
`test/` but the tests are set up for single file use only and can only import things from mathlib.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttr.Variant968004de8ada80932a4198034e47cf9430c5342580fd515a9b1a865b735ca45f

/-- A dummy label attribute, to ease testing. -/
register_label_attr dummy_label_attr
