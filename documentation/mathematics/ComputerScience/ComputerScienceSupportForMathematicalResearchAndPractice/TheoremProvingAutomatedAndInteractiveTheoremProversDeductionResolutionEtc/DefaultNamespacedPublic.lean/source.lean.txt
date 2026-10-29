-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SineQuaNon.Variant72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SineQuaNon.Variant72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/LibrarySuggestions/Default.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public meta import Lean.LibrarySuggestions.SineQuaNon

/-!
# Default library suggestions engine

This module sets the default library suggestions engine to "Sine Qua Non",
along with the theorems from the current file.
.
Any module that imports this (directly or transitively) will have library suggestions enabled.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SineQuaNon.Variant72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba

namespace Lean.LibrarySuggestions

-- Set the default library suggestions engine to
-- a combination of "Sine Qua Non" and the theorems from the current file.
-- For now we just intersperse the results, but in future we should re-rank them.
-- Note: We filter out grind-annotated modules from sineQuaNonSelector when caller is "grind".
set_library_suggestions open Lean.LibrarySuggestions in sineQuaNonSelector.filterGrindAnnotated.intersperse currentFile

end Lean.LibrarySuggestions
