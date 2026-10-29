-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Metrizable.Variant535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Metrizable.Variant535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Compactness/PseudometrizableLindelof.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Josha Dekker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josha Dekker
-/

import Mathlib.Topology.Metrizable.Basic
import Mathlib.Topology.Compactness.Lindelof

/-!
# Second-countability of pseudometrizable Lindelöf spaces

Factored out from `Mathlib/Topology/Compactness/Lindelof.lean`
to avoid circular dependencies.
-/


namespace GRWTSK.Topology.GeneralTopology.Metrizable.Variant535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c

variable {X : Type*} [TopologicalSpace X]

open Set Filter Topology TopologicalSpace

instance SecondCountableTopology.ofPseudoMetrizableSpaceLindelofSpace [PseudoMetrizableSpace X]
    [LindelofSpace X] : SecondCountableTopology X := by
  letI : PseudoMetricSpace X := TopologicalSpace.pseudoMetrizableSpacePseudoMetric X
  have h_dense (ε) (hpos : 0 < ε) : ∃ s : Set X, s.Countable ∧ ∀ x, ∃ y ∈ s, dist x y ≤ ε := by
    let U := fun (z : X) ↦ Metric.ball z ε
    obtain ⟨t, hct, huniv⟩ := LindelofSpace.elim_nhds_subcover U
      (fun _ ↦ (Metric.isOpen_ball).mem_nhds (Metric.mem_ball_self hpos))
    refine ⟨t, hct, fun z ↦ ?_⟩
    obtain ⟨y, ht, hzy⟩ : ∃ y ∈ t, z ∈ U y :=
      exists_set_mem_of_union_eq_top t (fun i ↦ U i) huniv z
    exact ⟨y, ht, (Metric.mem_ball.mp hzy).le⟩
  exact Metric.secondCountable_of_almost_dense_set h_dense
