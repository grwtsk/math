-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variant1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Frontend.Variant1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Linarith.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis
-/
import Mathlib.Tactic.Linarith.Frontend
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Hint

/-!
We register `linarith` with the `hint` tactic.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variant1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025

register_hint linarith
