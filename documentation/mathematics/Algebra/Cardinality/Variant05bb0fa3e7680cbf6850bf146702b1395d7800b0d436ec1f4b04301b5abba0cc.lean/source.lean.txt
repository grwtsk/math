-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CardinalMk.Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CardinalMk.Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/OreLocalization/Cardinality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.GroupTheory.OreLocalization.Cardinality
import Mathlib.RingTheory.OreLocalization.Ring

/-!
# Cardinality of Ore localizations of rings

This file contains some results on cardinality of Ore localizations of rings.
-/


namespace GRWTSK.Algebra.CardinalMk.Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29

universe u

open Cardinal

namespace OreLocalization

variable {R : Type u} [Ring R] {S : Submonoid R} [OreLocalization.OreSet S]

theorem cardinalMk (hS : S ≤ nonZeroDivisorsRight R) : #(OreLocalization S R) = #R :=
  le_antisymm (cardinalMk_le S) (mk_le_of_injective (numeratorHom_inj hS))

end OreLocalization
