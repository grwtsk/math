-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CardinalMkLe.Variant45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CardinalMkLe.Variant45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2","mathematical_subject":"Algebra.Groups","original_sha256":"45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/MonoidLocalization/Cardinality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.GroupTheory.MonoidLocalization.Basic
import Mathlib.GroupTheory.OreLocalization.Cardinality

/-!

# Cardinality of localizations of commutative monoids

This file contains some results on cardinality of localizations.

-/


namespace GRWTSK.Algebra.GroupTheory.CardinalMkLe.Variant45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2

universe u

open Cardinal

namespace Localization

variable {M : Type u} [CommMonoid M] (S : Submonoid M)

@[to_additive]
theorem cardinalMk_le : #(Localization S) ≤ #M :=
  OreLocalization.cardinalMk_le S

end Localization
