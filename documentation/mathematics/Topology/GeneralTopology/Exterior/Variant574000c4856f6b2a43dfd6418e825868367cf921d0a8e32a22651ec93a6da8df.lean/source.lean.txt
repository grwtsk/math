-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsCompactExteriorIff.Variant977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsCompactExteriorIff.Variant977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344","mathematical_subject":"Topology.GeneralTopology","original_sha256":"977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Compactness/Exterior.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Tactic.Peel
import Mathlib.Topology.Compactness.Compact
import Mathlib.Topology.Exterior

/-!
# Compactness of the exterior of a set

In this file we prove that the exterior of a set
(defined as the intersection of all of its neighborhoods)
is a compact set if and only if the original set is a compact set.
-/


namespace GRWTSK.Topology.GeneralTopology.IsCompactExteriorIff.Variant977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344

variable {X : Type*} [TopologicalSpace X] {s : Set X}

theorem IsCompact.exterior_iff : IsCompact (exterior s) ↔ IsCompact s := by
  simp only [isCompact_iff_finite_subcover]
  peel with ι U hUo
  simp only [(isOpen_iUnion hUo).exterior_subset,
    (isOpen_iUnion fun i ↦ isOpen_iUnion fun _ ↦ hUo i).exterior_subset]

protected alias ⟨IsCompact.of_exterior, IsCompact.exterior⟩ := IsCompact.exterior_iff
