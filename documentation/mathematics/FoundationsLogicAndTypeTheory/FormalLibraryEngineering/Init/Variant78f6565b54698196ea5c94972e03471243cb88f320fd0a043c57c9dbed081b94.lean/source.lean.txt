-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantfc370ee3bd509d6b7edb3aa37be460ca326fc0613a071cfdd7228fa3849f0c17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc370ee3bd509d6b7edb3aa37be460ca326fc0613a071cfdd7228fa3849f0c17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantfc370ee3bd509d6b7edb3aa37be460ca326fc0613a071cfdd7228fa3849f0c17","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fc370ee3bd509d6b7edb3aa37be460ca326fc0613a071cfdd7228fa3849f0c17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Bound/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Geoffrey Irving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Geoffrey Irving
-/

import Mathlib.Init
import Aesop.Frontend.Command

/-!
# Bound Rule Set

This module defines the `Bound` Aesop rule set which is used by the
`bound` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantfc370ee3bd509d6b7edb3aa37be460ca326fc0613a071cfdd7228fa3849f0c17

declare_aesop_rule_sets [Bound]
