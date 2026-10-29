-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant634f3780238d76bed355915ced090e136794d915ce2a1cde98c962449d062fc0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"634f3780238d76bed355915ced090e136794d915ce2a1cde98c962449d062fc0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant634f3780238d76bed355915ced090e136794d915ce2a1cde98c962449d062fc0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"634f3780238d76bed355915ced090e136794d915ce2a1cde98c962449d062fc0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Continuity/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Mathlib.Init
import Aesop

/-!
# Continuity Rule Set

This module defines the `Continuous` Aesop rule set which is used by the
`continuity` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant634f3780238d76bed355915ced090e136794d915ce2a1cde98c962449d062fc0

declare_aesop_rule_sets [Continuous]
